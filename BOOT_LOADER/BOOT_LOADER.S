;2024.1.26 ���[�N�G���A���]������悤�C��

;07CH PORTA ���M�f�[�^(����4�r�b�g)
;07DH PORTB ��M�f�[�^(8�r�b�g)
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
;07FH �R���g���[�����W�X�^


        ORG		0000H

		LD		SP,8FFFH               ;�X�^�b�N�|�C���^�ݒ�
		
TENSO:                                     ;SD����̓ǂݍ��݃v���O�������������㔼�ɓ]��
		LD		HL,MARK1
		LD		DE,MARK2                   ;8000h�֓]��
		LD		BC,MARK3-MARK2-1
		LDIR
		JP		MARK2

MARK1:
		ORG		8000H

MARK2:
;**** 8255������ ****
;PORTC����BIT��OUTPUT�A���BIT��INPUT�APORTB��INPUT�APORTA��OUTPUT
INIT:	LD		A,8AH
		LD		BC,007FH
		OUT		(C),A
;�o��BIT�����Z�b�g
INIT2:	LD		A,00H      ;PORTA <- 0
		LD		BC,007CH
		OUT		(C),A
		LD		BC,007EH
		OUT		(C),A   ;PORTC <- 0

START:
		DI
		CALL	TCLR       ;�e�L�X�g��ʏ���
		LD		A,81H      ;BOOT�R�}���h81H
		CALL	STCD       ;�R�}���h�R�[�h���M
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR

		LD		HL,LNAME   ;�t�@�C���l�[�����M�uX1_SD_BOOT.X1T�v
		CALL	STFS
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR

		LD		A,06H
		LD		(CURX),A
		LD		A,0CH
		LD		(CURY),A
		LD		HL,MSG1    ;LOADING X1_SD_BOOT.X1T�\��
		CALL	STRPR

		CALL	HDRCV      ;�w�b�_����M

		LD		A,0E4H     ;�T�uCPU�����ݒ�~
		CALL	COMOUT
		XOR		A
		CALL	TRANS49

;�f�[�^��M
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
		JR		NZ,DBRLOP   ;DE=0�܂�LOOP
DBRLOP1:
		POP		HL
		JP		(HL)        ;���s�Ԓn�փW�����v

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

;�w�b�_��M
HDRCV:	LD		HL,IPLFCB
		LD		B,20H
HDRC1:	CALL	RCVBYTE    ;IPL�pFCB��M
		LD		(HL),A
		INC		HL
		DJNZ	HDRC1
		LD		HL,FNAME+16
		XOR		A
		LD		(HL),A
		RET

;**** 1BYTE��M ****
;��MDATA��A���W�X�^�ɃZ�b�g���ă��^�[��
RCVBYTE:
		PUSH	BC
		CALL	F1CHK      ;PORTC BIT7��1�ɂȂ�܂�LOOP
		LD		BC,007DH
		IN		A,(C)   ;PORTB -> A
		PUSH 	AF
		LD		A,05H
		LD		BC,007FH
		OUT		(C),A    ;PORTC BIT2 <- 1
		CALL	F2CHK      ;PORTC BIT7��0�ɂȂ�܂�LOOP
		LD		A,04H
		LD		BC,007FH
		OUT		(C),A    ;PORTC BIT2 <- 0
		POP 	AF
		POP		BC
		RET

;**** BUSY��CHECK(1) ****
; 7EH BIT7��1�ɂȂ�܂�LOP
F1CHK:	LD		BC,007EH
		IN		A,(C)
		AND		80H        ;PORTC BIT7 = 1?
		JR		Z,F1CHK
		RET

;**** BUSY��CHECK(0) ****
; 7EH BIT7��0�ɂȂ�܂�LOOP
F2CHK:	LD		BC,007EH
		IN		A,(C)
		AND		80H        ;PORTC BIT7 = 0?
		JR		NZ,F2CHK
		RET

;**** 1BYTE���M ****
;A���W�X�^�̓��e��PORTA����4BIT��4BIT�����M
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

;**** 4BIT���M ****
;A���W�X�^����4�r�b�g�𑗐M����
SND4BIT:
		LD		BC,007CH
		OUT		(C),A
		LD		A,05H
		LD		BC,007FH
		OUT		(C),A    ;PORTC BIT2 <- 1
		CALL	F1CHK      ;PORTC BIT7��1�ɂȂ�܂�LOOP
		LD		A,04H
		LD		BC,007FH
		OUT		(C),A    ;PORTC BIT2 <- 0
		CALL	F2CHK
		RET

;**** �R�}���h���M (IN:A �R�}���h�R�[�h)****
STCD:	CALL	SNDBYTE    ;A���W�X�^�̃R�}���h�R�[�h�𑗐M
		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		RET

;**** �t�@�C���l�[�����M(IN:HL �t�@�C���l�[���̐擪) ******
STFS:	LD		B,20H
STFS1:	LD		A,(HL)     ;FNAME���M
		CALL	SNDBYTE
		INC		HL
		DEC		B
		JR		NZ,STFS1
		LD		A,0DH
		CALL	SNDBYTE
		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		RET

;�������\��
STRPR:	LD		A,(HL)
		CP		00H
		RET		Z
		CALL	PRINT
		INC		HL
		JR		STRPR

;A���W�X�^�̓��e��ASCII�R�[�h�Ƃ���CURX,Y�̈ʒu�ɕ\��
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
		
;CURX,Y����V-RAM�A�h���X���Z�o
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

;�e�L�X�g��ʏ���
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
		
;�T�uCPU�փR�}���h���M
COMOUT:
		EI
		CALL	TRANS49
		CALL	IBFCK
		DI
		RET

;�T�uCPU���f�[�^���󂯎���܂ő҂��A���M�v���R�[�h�𑗂�
TRANS49:
		PUSH	BC
		PUSH	AF
		CALL	IBFCK
		POP		AF
		LD		BC,1900h
		OUT		(C),A
		POP		BC
		RET

;�T�uCPU��IBF���`�F�b�N���A�ҋ@
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