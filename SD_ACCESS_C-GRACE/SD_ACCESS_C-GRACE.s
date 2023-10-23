INPUTF		EQU		0003H	;１行入力
PRINT		EQU		000BH	;文字列のプリント
ACCPRT		EQU		0013H	;１文字出力
INKEY$		EQU		001BH	;１文字入力
TAK49S		EQU		0023H	;サブCPU80C49との通信
PCG			EQU		002BH	;PCGのセット
CGREAD		EQU		0033H	;PCGの内容を読む
SAVE1		EQU		003BH	;FCBをCMTにセーブ
SAVE2		EQU		003EH	;データをCMTにセーブ
LOAD1		EQU		0041H	;FCBをCMTからロード
LOAD2		EQU		0044H	;CMTからデータをロード
VERFY2		EQU		0047H	;CMTのデータとメイン・メモリのデータを比較
BRKCHK		EQU		004AH	;SHIFT+BREAK CHECK
WIDTH48		EQU		004DH	;Aレジスタの値により40文字、80文字モードを指定
KVECIN		EQU		012DH	;キーボード通信?
KVEC00		EQU		0133H	;80C49にキー入力割込みベクトルの下位を伝達
PSGINT		EQU		013CH	;PSGの出力を止める
BINPUT		EQU		015AH	;１行入力 BASIC用
INTKEY		EQU		0346H	;割込みキー入力の実行
CR2			EQU		04A3H	;行の先頭でないなら改行
CR1			EQU		04A7H	;改行
TABPRT		EQU		04ABH	;X座標が10の倍数までスペース出力
SPPRT		EQU		04BAH	;スペース出力
ACCDIS		EQU		04C8H	;１文字出力 コントロール・コード表示版
ADRCAL		EQU		054AH	;現在カーソル位置のテキストVRAMのアドレス計算
ADRCA2		EQU		054DH	;HLレジスタで示したテキスト座病のテキストVRAMのアドレス計算
CTRLJB		EQU		0577H	;コントロール・コード処理
BEEP		EQU		07F7H	;ベル音を鳴らす
WIDTH80		EQU		098CH	;WIDTH80
WIDTH40		EQU		0998H	;WIDTH40
SCRNOT		EQU		09C0H	;表示画面のページ指定
SCRNIN		EQU		09F5H	;書き込み画面のページ指定
CTRLDQ		EQU		0A3FH	;コンソールと入出力ページの初期化
STPRIO		EQU		0A5AH	;パレット、プライオリティ・セット
CLST		EQU		0A6BH	;テキスト・クリア
STCLSG		EQU		0A8AH	;グラフィック・クリア(SCRMODの値による)
CLSG		EQU		0A8FH	;グラフィック・クリア(SCRMODの値によらない)
RECV49		EQU		0B49H	;サブCPU8049からデータを受信
TRANS49		EQU		0B54H	;サブCPU8049に送信要求コードを送る
OBFCK		EQU		0B61H	;80C49がデータを受け取れる状態になるまでウェイト
IBFCK		EQU		0B6BH	;80C49からデータが送られてくるまでウェイト
WBYTE		EQU		0C8AH	;CMT 1Byte Write
RBYTE		EQU		0CAAH	;CMT 1byte Read
CLRSUM		EQU		0CD6H	;チェックサムバッファのクリア
GAP			EQU		0CDFH	;CMTへリーダー音の書込み
TMARK		EQU		0D20H	;CMTのリーダー音待ち
SHORT		EQU		0D8AH	;CMTへ1ビット(0)書き込み
LONG		EQU		0DA4H	;CMTへ1ビット(1)書き込み
MOTOR		EQU		0DC7H	;CMT読み書き開始
CMTCOM		EQU		0DECH	;CMTに対しコマンドを実行
CMTSNS		EQU		0DF6H	;CMTの状態を示す
COMOUT		EQU		0DFEH	;サブCPU80C49へコマンド送信
PSGSET		EQU		0E77H	;HLで始まる8バイトのデータをPSGにセット
MONOP		EQU		0FE2H	;モニタコールドスタート
HOTSTA		EQU		1003H	;モニタホットスタート
HLSET		EQU		111FH	;バッファ上の文字を16進数に変換してHLレジスタにセット
HEXCHL		EQU		1143H	;DEで示すアドレスの文字を16進数に変換してAレジスタにセット
ACSET		EQU		115EH	;バッファ上の文字を16進数に変換してAレジスタにセット
DUMP		EQU		11AFH	;HLで示すアドレスからCバイトメモリダンプ
HLHXPR		EQU		1202H	;HLレジスタの値を16進数で出力
ACHXPR		EQU		1207H	;Aレジスタの値を16進数で出力
CR1LPL		EQU		12D5H	;LFのプリンタ出力
ACCLPL		EQU		12DCH	;プリンタへの1文字出力
TABLPL		EQU		1315H	;HTABのプリンタ出力
FNPRHL		EQU		1321H	;FCBのファイル・ネームをプリント
FNMTCH		EQU		134EH	;ファイル・ネームとパスワードを比較
SETDIQ		EQU		1394H	;FCBにファイルネームをセット
ACCPRP		EQU		1420H	;画面またはプリンタへの1文字出力
PRINTP		EQU		142FH	;文字列を画面またはプリンタに出力
TABPRP		EQU		143CH	;HTABを画面またはプリンタに出力
CR1PRP		EQU		1446H	;改行コードを画面またはプリンタに出力
TUPPER		EQU		1451H	;大文字に変換

LINLIM		EQU		0006H	;1行入力のバッファの長さのリミット R/W
WIDTHO		EQU		0007H	;WIDTHの値 R
CURX		EQU		000EH	;カーソルのX座標 R/W
CURY		EQU		000FH	;カーソルのY座標 R/W
CURYST		EQU		0016H	;テキスト表示エリアのY座標の先頭 R/W
CURYED		EQU		0017H	;テキスト表示エリアのY座標の終わり R/W
CURXST		EQU		001EH	;テキスト表示エリアのX座標の先頭 R/W
CURXED		EQU		001FH	;テキスト表示エリアのX座標の終わり R/W
COLORF		EQU		0026H	;カラーアトリビュートの値 R/W
CLSCHR		EQU		0027H	;NULキャラクタ・コード R/W
KEYDAT		EQU		002EH	;割込みキー入力で入ってきたキーコード(ASCII) R
			;EQU	002FH	;割込みキー入力で入ってきたキーコード(ファンクション・コード) R
BRKBUF		EQU		0036H	;割込みキー入力によって入力されるBREAKおよびCTRL+Sを知らせるバッファ R
KEYFLG		EQU		0037H	;有効なキーが割り込んだ時は0以外、無効なキーが割り込んだ時は0 R
INIADR		EQU		00E9H	;表示している画面のオフセット値 R
			;EQU	00EAH
INIADW		EQU		00EBH	;アクセスしている画面のオフセット値 R
			;EQU	00ECH
PRRIOF		EQU		00F6H	;青のパレット R
GPRIOF		EQU		00F7H	;赤のパレット R
BPRIOF		EQU		00F8H	;緑のパレット R
TPRIOF		EQU		00F9H	;テキストの優先順位 R
REPTF1		EQU		0366H	;リピートON/OFF R/W
SCRMOD		EQU		0A8BH	;グラフィックのクリア指定 R/W
CLICKF		EQU		0E90H	;クリック音の制御フラグ R/W
KBUFSW		EQU		0EA5H	;1行入力時、先行入力を捨てるかどうかのフラグ R/W
POINT1		EQU		0EA6H	;INBUF内の書き込みポインタ R/W
POINT2		EQU		0EA7H	;INBUF内読み込みポインタ R/W
INBUF		EQU		0EA8H	;～0EE7H 先行入力およびファンクション・キー入力のためのデータ・バッファ R/W
TABBUF		EQU		0EF2H	;～0F41H 水平タブ設定バッファ
FUNBUF		EQU		0F42H	;～0FE1H ファンクション・キーが定義されているワーク R/W
FILOUT		EQU		1472H	;プリンタ・モード R/W
DIRIMG		EQU		1480H	;～149FH FCB R/W
IPLFCB		EQU		0FF00H
FNAME		EQU		IPLFCB+1
FSIZE		EQU		IPLFCB+18
SADRS		EQU		IPLFCB+20
EXEAD		EQU		IPLFCB+22
WRTMES		EQU		145AH	;CMT WRITNG MESSAGE R
FINMES		EQU		1462H	;CMT FIND MESSAGE R
SKPMES		EQU		146AH	;CMT SKIP MESSAGE R

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

			ORG		14A0H
			JP		START
F_COM:		JP		F_COMMAND
L_COM:		JP		L_COMMAND

START:
			CALL	INIT
			LD		DE,TITLE
			CALL	PRINT
			JP		MONOP

TITLE:		DB		'          ** C-GRACE Launcher **',0AH,0DH,00H

;**** 8255初期化 ****
;PORTC下位BITをOUTPUT、上位BITをINPUT、PORTBをINPUT、PORTAをOUTPUT
INIT:		LD		A,8AH
			LD		BC,007FH
			OUT		(C),A
;出力BITをリセット
INIT2:		LD		A,00H      ;PORTA <- 0
			LD		BC,007CH
			OUT		(C),A
			LD		BC,007EH
			OUT		(C),A   ;PORTC <- 0

;**** Fコマンド、Lコマンドジャンプ先設定
			LD		HL,F_COM
			LD		(1050H),HL
			LD		HL,L_COM
			LD		(1059H),HL
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
F1CHK:		LD		BC,007EH
			IN		A,(C)
			AND		80H        ;PORTC BIT7 = 1?
			JR		Z,F1CHK
			RET

;**** BUSYをCHECK(0) ****
; 7EH BIT7が0になるまでLOOP
F2CHK:		LD		BC,007EH
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
		
F_COMMAND:
FC0:		
			LD		A,(DE)			;スペース読み飛ばし
			CP		00H
			JR		Z,FC2
			INC		DE
			CP		20H
			JR		NZ,FC1
			JR		FC0
FC1:		DEC		DE
			DEC		DE
FC2:
			LD		HL,DEFDIR         ;行頭に'*L 'を付けることでカーソルを移動させリターンで実行できるように
			LD		BC,DEND-DEFDIR
			CALL	DIRLIST
			AND		A                 ;00以外ならERROR
			JP		NZ,SVERR
			RET

DEFDIR:
		DB		'*L '
DEND:

;**** DIRLIST本体 (HL=行頭に付加する文字列の先頭アドレス BC=行頭に付加する文字列の長さ) ****
;****              戻り値 A=エラーコード ****
DIRLIST:
			LD		A,83H      ;DIRLISTコマンド83Hを送信
			CALL	STCD       ;コマンドコード送信
			AND		A          ;00以外ならERROR
			JP		NZ,DLRET
		
			PUSH	BC
			LD		B,21H
STLT1:		LD		A,(DE)
			CALL	TUPPER
STLT2:		CALL	SNDBYTE           ;比較文字列を送信
			INC		DE
			DJNZ	STLT1
			POP		BC
DL1:
			PUSH	HL
			PUSH	BC
			LD		DE,BUF
			LDIR
			EX		DE,HL
DL2:		CALL	RCVBYTE           ;'00H'を受信するまでを一行とする
			CP		00H
			JR		Z,DL3
			CP		0FFH              ;'0FFH'を受信したら終了
			JR		Z,DL4
			CP		0FEH              ;'0FEH'を受信したら一時停止して一文字入力待ち
			JR		Z,DL5
			LD		(HL),A
			INC		HL
			JR		DL2
DL3:		LD		(HL),A
			LD		DE,BUF             ;'00H'を受信したら一行分を表示して改行
			CALL	PRINT
			CALL	CR2
			POP		BC
			POP		HL
			JR		DL1
DL4:		CALL	RCVBYTE           ;状態取得(00H=OK)
			POP		BC
			POP		HL
			JR		DLRET

DL5:		LD		DE,MSG_KEY1        ;HIT ANT KEY表示
			CALL	PRINT
			LD		A,01EH
			CALL	ACCDIS
			LD		DE,MSG_KEY2        ;HIT ANT KEY表示
			CALL	PRINT
			CALL	CR2
DL6:		LD		A,01H
			CALL	INKEY$            ;1文字入力待ち
			CALL	TUPPER
			CP		00H
			JR		Z,DL6
			CP		03H               ;SHIFT+BREAKで打ち切り
			JR		Z,DL7
			CP		1BH               ;ESCで打ち切り
			JR		Z,DL7
			CP		1EH               ;カーソル↑で打ち切り
			JR		Z,DL9
			CP		42H               ;「B」で前ページ
			JR		Z,DL8
			LD		A,00H             ;それ以外で継続
			JR		DL8
DL9:		LD		A,01EH            ;カーソル↑で打ち切ったときにカーソル2行上へ
			CALL	ACCPRT
			LD		A,01EH
			CALL	ACCPRT
DL7:		LD		A,0FFH            ;0FFH中断コードを送信
DL8:		CALL	SNDBYTE
			CALL	CR2
			JR		DL2
		
DLRET:		
			RET
		
BUF:		DS		80

MSG_KEY1:
			DB		'NEXT:ANY BACK:B BRK:'
			DB		00H
MSG_KEY2:
			DB		' or ESC or SHT+BRK'
			DB		00H
		
MSG_LD:
		DB		'LOADING '
		DB		00H

MSG_FNAME:
		DB		'FILE NAME FAILED!'
		DB		00H
		
MSG_CMD:
		DB		'COMMAND FAILED!'
		DB		00H
		
MSG_F0:
		DB		'SD-CARD INITIALIZE ERROR'
		DB		00H
		
MSG_F1:
		DB		'NOT FIND FILE'
		DB		00H
		
MSG_F3:
		DB		'FILE EXIST'
		DB		00H
		
MSG_F4:
		DB		'NOT C-GRACE DATA'
		DB		00H
		
MSG99:
		DB		' ERROR'
		DB		00H
		
;**** コマンド送信 (IN:A コマンドコード)****
STCD:		CALL	SNDBYTE    ;Aレジスタのコマンドコードを送信
			CALL	RCVBYTE    ;状態取得(00H=OK)
			RET

;**** コマンド、ファイル名送信 (IN:A コマンドコード HL:ファイルネームの先頭)****
STCMD:		DEC		DE
			CALL	STFN       ;ファイルネーム取得
			PUSH	HL
			CALL	STCD       ;コマンドコード送信
			POP		HL
			AND		A          ;00以外ならERROR
			JP		NZ,SVER0
			CALL	STFS       ;ファイルネーム送信
			AND		A          ;00以外ならERROR
			JP		NZ,SVER0
			RET

;****** FILE NAME 取得 (IN:DE コマンド文字の次の文字 OUT:HL ファイルネームの先頭)*********
STFN:		PUSH	AF
STFN1:		INC		DE         ;ファイルネームまでスペース読み飛ばし
			LD		A,(DE)
			CP		20H
			JR		Z,STFN1
			CP		30H        ;「0」以上の文字でなければエラーとする
			JP		C,STSV2
			EX		DE,HL
			POP		AF
			RET

;**** ファイルネーム送信(IN:HL ファイルネームの先頭) ******
STFS:		LD		B,20H
STFS1:		LD		A,(HL)     ;FNAME送信
			CALL	SNDBYTE
			INC		HL
			DEC		B
			JR		NZ,STFS1
			LD		A,0DH
			CALL	SNDBYTE
			CALL	RCVBYTE    ;状態取得(00H=OK)
			RET

STSV2:                      ;ファイルネームの取得に失敗
			LD		DE,MSG_FNAME
			JR		ERRMSG
SVER0:
			POP		DE         ;CALL元STACKを破棄する
SVERR:
			CP		0F0H
			JR		NZ,ERR3
			LD		DE,MSG_F0  ;SD-CARD INITIALIZE ERROR
			JR		ERRMSG
ERR3:		CP		0F1H
			JR		NZ,ERR4
			LD		DE,MSG_F1  ;NOT FIND FILE
			JR		ERRMSG
ERR4:		CP		0F3H
			JR		NZ,ERR5
			LD		DE,MSG_F3  ;FILE EXIST
			JR		ERRMSG
ERR5:		CP		0F4H
			JR		NZ,ERR99
			LD		DE,MSG_CMD
			JR		ERRMSG
ERR99:		CALL	ACHXPR
			LD		DE,MSG99   ;その他ERROR
ERRMSG:		CALL	PRINT
			CALL	CR2
MON:		RET

L_COMMAND:
;**** LOAD ****
;受信ヘッダ情報をセットし、SDカードからLOAD実行
SDLOAD:		DI
			LD		A,81H  ;LOADコマンド81H
			CALL	STCMD
			CALL	HDRCV      ;ヘッダ情報受信

SDLOAD2:	JP		DBRCV      ;データ受信

;ヘッダ受信
HDRCV:		LD		HL,IPLFCB
			LD		B,20H
HDRC1:		CALL	RCVBYTE    ;IPL用FCB受信
			LD		(HL),A
			INC		HL
			DJNZ	HDRC1
			LD		HL,FNAME+16
			XOR		A
			LD		(HL),A
			LD		DE,MSG_LD  ;ファイルネームLOADING表示
			CALL	PRINT
			LD		DE,FNAME
			CALL	PRINT
			CALL	CR2
			RET

;データ受信
DBRCV:		DI
			XOR		A
			LD		HL,(SADRS)    ;読み込み開始アドレスが2000HでなければC-GRACEのデータではない
			LD		DE,2000H
			SBC		HL,DE
			JR		NZ,DBRERR
			
			LD		HL,(SADRS)
			LD		DE,(FSIZE)
DBRLOP:		CALL	RCVBYTE
			LD		(HL),A
			DEC		DE
			LD		A,D
			OR		E
			INC		HL
			JR		NZ,DBRLOP   ;DE=0までLOOP

DBRLOP1:
			CALL	WIDTH80           ;80桁表示設定
			CALL	6000H             ;C-GRACE EXECUTER実行
			LD		A,01H
			CALL	INKEY$            ;1文字入力待ち
			CALL	WIDTH40           ;40桁表示設定、画面クリア
			RET

DBRERR:
			LD		DE,(FSIZE)        ;空読み(データ受信しない仕様にするためにはArduinoの改修が必要なため)
DBRLOP2:	CALL	RCVBYTE
			DEC		DE
			LD		A,D
			OR		E
			JR		NZ,DBRLOP2        ;DE=0までLOOP

			LD		DE,MSG_F4         ;NOT C-GRACE DATA
			CALL	PRINT
			CALL	CR2
			RET

ENT6:		ORG		5FFFH
			NOP
			END
