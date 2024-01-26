;2024.1.26 ワークエリアも転送するよう修正

;07CH PORTA 送信データ(下位4ビット)
;07DH PORTB 受信データ(8ビット)
;
;07EH PORTC Bit
;7 IN  CHK
;6 IN
;5 IN
;4 IN 
;3 OUT
;2 OUT FLG
;1 OUT
;0 OUT
;
;07FH コントロールレジスタ


        ORG		0000H

		LD		SP,8FFFH               ;スタックポインタ設定
		
TENSO:                                     ;SDからの読み込みプログラムをメモリ後半に転送
		LD		HL,MARK1
		LD		DE,MARK2                   ;8000hへ転送
		LD		BC,MARK3-MARK2-1
		LDIR
		JP		MARK2

MARK1:
		ORG		8000H

MARK2:
;**** 8255初期化 ****
;PORTC下位BITをOUTPUT、上位BITをINPUT、PORTBをINPUT、PORTAをOUTPUT
INIT:	LD		A,8AH
		LD		BC,007FH
		OUT		(C),A
;出力BITをリセット
INIT2:	LD		A,00H      ;PORTA <- 0
		LD		BC,007CH
		OUT		(C),A
		LD		BC,007EH
		OUT		(C),A   ;PORTC <- 0

START:
		DI
		CALL	TCLR       ;テキスト画面消去
		LD		A,81H      ;BOOTコマンド81H
		CALL	STCD       ;コマンドコード送信
		AND		A          ;00以外ならERROR
		JP		NZ,ERR

		LD		HL,LNAME   ;ファイルネーム送信「X1_SD_BOOT.X1T」
		CALL	STFS
		AND		A          ;00以外ならERROR
		JP		NZ,ERR

		LD		A,06H
		LD		(CURX),A
		LD		A,0CH
		LD		(CURY),A
		LD		HL,MSG1    ;LOADING X1_SD_BOOT.X1T表示
		CALL	STRPR

		CALL	HDRCV      ;ヘッダ情報受信

		LD		A,0E4H     ;サブCPU割込み停止
		CALL	COMOUT
		XOR		A
		CALL	TRANS49

;データ受信
		LD		HL,(EXEAD)
		PUSH	HL
		LD		HL,(SADRS)
		LD		DE,(FSIZE)
DBRLOP:	CALL	RCVBYTE
		LD		(HL),A
		DEC		DE
		LD		A,D
		OR		E
		INC		HL
		JR		NZ,DBRLOP   ;DE=0までLOOP
DBRLOP1:
		POP		HL
		JP		(HL)        ;実行番地へジャンプ

ERR:	LD		HL,MSG2    ;NOT FOUND
		LD		DE,MSG1
		LD		BC,10
		LDIR
ERR2:	LD		A,06H
		LD		(CURX),A
		LD		A,0CH
		LD		(CURY),A
		LD		HL,MSG1
		CALL	STRPR
		JR		ERR2

MSG1:	DB		'LOADING   '

LNAME:	DB		'X1_SD_BOOT.X1T',00H
		DB		00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H

MSG2:	DB		'NOT FOUND '

;ヘッダ受信
HDRCV:	LD		HL,IPLFCB
		LD		B,20H
HDRC1:	CALL	RCVBYTE    ;IPL用FCB受信
		LD		(HL),A
		INC		HL
		DJNZ	HDRC1
		LD		HL,FNAME+16
		XOR		A
		LD		(HL),A
		RET

;**** 1BYTE受信 ****
;受信DATAをAレジスタにセットしてリターン
RCVBYTE:
		PUSH	BC
		CALL	F1CHK      ;PORTC BIT7が1になるまでLOOP
		LD		BC,007DH
		IN		A,(C)   ;PORTB -> A
		PUSH 	AF
		LD		A,05H
		LD		BC,007FH
		OUT		(C),A    ;PORTC BIT2 <- 1
		CALL	F2CHK      ;PORTC BIT7が0になるまでLOOP
		LD		A,04H
		LD		BC,007FH
		OUT		(C),A    ;PORTC BIT2 <- 0
		POP 	AF
		POP		BC
		RET

;**** BUSYをCHECK(1) ****
; 7EH BIT7が1になるまでLOP
F1CHK:	LD		BC,007EH
		IN		A,(C)
		AND		80H        ;PORTC BIT7 = 1?
		JR		Z,F1CHK
		RET

;**** BUSYをCHECK(0) ****
; 7EH BIT7が0になるまでLOOP
F2CHK:	LD		BC,007EH
		IN		A,(C)
		AND		80H        ;PORTC BIT7 = 0?
		JR		NZ,F2CHK
		RET

;**** 1BYTE送信 ****
;Aレジスタの内容をPORTA下位4BITに4BITずつ送信
SNDBYTE:
		PUSH	BC
		PUSH	AF
		RRA
		RRA
		RRA
		RRA
		AND		0FH
		CALL	SND4BIT
		POP		AF
		AND		0FH
		CALL	SND4BIT
		POP		BC
		RET

;**** 4BIT送信 ****
;Aレジスタ下位4ビットを送信する
SND4BIT:
		LD		BC,007CH
		OUT		(C),A
		LD		A,05H
		LD		BC,007FH
		OUT		(C),A    ;PORTC BIT2 <- 1
		CALL	F1CHK      ;PORTC BIT7が1になるまでLOOP
		LD		A,04H
		LD		BC,007FH
		OUT		(C),A    ;PORTC BIT2 <- 0
		CALL	F2CHK
		RET

;**** コマンド送信 (IN:A コマンドコード)****
STCD:	CALL	SNDBYTE    ;Aレジスタのコマンドコードを送信
		CALL	RCVBYTE    ;状態取得(00H=OK)
		RET

;**** ファイルネーム送信(IN:HL ファイルネームの先頭) ******
STFS:	LD		B,20H
STFS1:	LD		A,(HL)     ;FNAME送信
		CALL	SNDBYTE
		INC		HL
		DEC		B
		JR		NZ,STFS1
		LD		A,0DH
		CALL	SNDBYTE
		CALL	RCVBYTE    ;状態取得(00H=OK)
		RET

;文字列を表示
STRPR:	LD		A,(HL)
		CP		00H
		RET		Z
		CALL	PRINT
		INC		HL
		JR		STRPR

;Aレジスタの内容をASCIIコードとしてCURX,Yの位置に表示
PRINT:	PUSH	HL
		PUSH	AF
		CALL	CALXY
		IN		A,(C)
		POP		AF
		OUT		(C),A
		LD		A,(CURX)
		INC		A
		LD		(CURX),A
		POP		HL
		RET
		
;CURX,YからV-RAMアドレスを算出
CALXY:	PUSH	DE
		PUSH	HL
		LD		HL,3000H-28H
		LD		A,(CURY)
		INC		A
		LD		B,A
		LD		D,00H
		LD		E,28H
CALXY1:	ADD		HL,DE
		DJNZ	CALXY1
		LD		A,(CURX)
		LD		E,A
		ADD		HL,DE
		LD		B,H
		LD		C,L
		POP		HL
		POP		DE
		RET

;テキスト画面消去
TCLR:
		IN		A,(C)
		LD		BC,3000H
		LD		DE,03E8H
TCLR1:	LD		A,20H
		OUT		(C),A
		INC		BC
		DEC		DE
		LD		A,D
		OR		E
		JR		NZ,TCLR1
		RET
		
;サブCPUへコマンド送信
COMOUT:
		EI
		CALL	TRANS49
		CALL	IBFCK
		DI
		RET

;サブCPUがデータを受け取れるまで待ち、送信要求コードを送る
TRANS49:
		PUSH	BC
		PUSH	AF
		CALL	IBFCK
		POP		AF
		LD		BC,1900h
		OUT		(C),A
		POP		BC
		RET

;サブCPUのIBFをチェックし、待機
IBFCK:
		LD		BC,1A01h
IBFCK1:
		IN		A,(C)
		AND		40h
		JR		NZ,IBFCK1
		RET

CURX:	DB		0
CURY:	DB		0
IPLFCB:	DB		0
FNAME:	DB		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
FSIZE:	DB		0,0
SADRS:	DB		0,0
EXEAD:	DB		0,0
		DB		0,0,0,0,0,0,0,0

MARK3:

		END
