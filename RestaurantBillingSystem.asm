.MODEL LARGE
.STACK 1000H
.DATA  

;-----DU LIEU MON AN-----
;------------------------
NAME1   DW  '|  Banh Mi $'   ;Ten mon
Q1      DW  0                ;So luong
PR1     DW  10               ;Don gia
STT1    DW  1                ;So thu tu
TONG1   DW  0                ;Tong tien


NAME2   DW  '|  Chao Ga $'
Q2      DW  0
PR2     DW  10 
STT2    DW  2
TONG2   DW  0


NAME3   DW  '|  Mi Xao  $'
Q3      DW  0
PR3     DW  10
STT3    DW  3
TONG3   DW  0


NAME4   DW  '|  Xoi Ga  $'
Q4      DW  0
PR4     DW  10
STT4    DW  4 
TONG4   DW  0


NAME5   DW  '|  Pho Ga  $'
Q5      DW  0
PR5     DW  20 
STT5    DW  5
TONG5   DW  0


NAME6   DW  '|  Pho Bo  $'
Q6      DW  0
PR6     DW  20
STT6    DW  6
TONG6   DW  0
     

NAME7   DW  '|  Bun Hue $'
Q7      DW  0
PR7     DW  30
STT7    DW  7 
TONG7   DW  0


NAME8   DW  '|  Bun Rieu$'
Q8      DW  0
PR8     DW  30
STT8    DW  8
TONG8   DW  0


NAME9   DW  '|  Pho DB  $'
Q9      DW  0
PR9     DW  60
STT9    DW  9
TONG9   DW  0


;-----DANH SACH MON AN-----
;--------------------------
LIST DB 1, 2, 3, 4, 5, 6, 7, 8, 9


;-----DU LIEU CHUNG-----
;-----------------------
SUM DW ?                    ;Tong tien thanh toan             
VAT DW ?                    ;VAT
DISCOUNT DW ?               ;Danh dau loai khuyen mai
DIS DW ?                    ;Tien khuyen mai
MUOI DW 10                  ;So 10
CNT DW 0                    ;Bien dem

TMP DW 0                    ;Bien tam
STR2 DW 100 DUP('$')        ;Ghi chu 
STR3 DW 100 DUP('$')        ;So luong mon


;----------------------------------------GIAO DIEN----------------------------------------------------
;----------------------------------------------------------------------------------------------------- 

;-----NHAN LUA CHON & THONG BAO-----
;-----------------------------------
OPT1 DB 13, 10, 10,        '  Vui long chon mon an: $'
OPT2 DB 13, 10, 10,        '  Nhap so luong: $'
OPT3  DB 10,13,10,13,      '  Nhan nut bat ky de bat dau: $'
OPT4 DB 10, 13, 10, 13,    '  Chon hành dong: $' 
OPT5 DB 10, 13, 10, 13,    '                     Nhan nut bat ky de in hoa don: $' 
OPT6 DB 10, 13,            '  Nhap lua chon cua ban: $'
NOTE DB 13, 10, 10,        '  Ghi chu: $'
NHAPSO DB 10, 13, 10, 13,  '                   Hay nhap 1 so trong doan tu 0 - 9 : $'
 

ALERT DB 10, 13, 10, 13,   '  Lua chon khong ton tai !!!$'
BACK1 DB 10, 13, 10, 13,   '  1.Lua chon them mon $'
BACK2 DB 13, 10,           '  2.Tiep theo$'

;-----GACH & CACH-----
;--------------------- 

CACH1      DB  13, 10,  '|                                                                           |$' 
CACH2     DB            ' $'
KHOANGCACH DB           '         $'


GACH DB 10,13,10,13,    ' ----------------------------$'
GACH1     DB            '            |$' 
GACH2     DB            '                                            |$'
GACH3 DB 13, 10,        '|---------------------------------------------------------------------------|$'
;CTRF
CRTF DB 13, 10,         '$'  
;CTRF X 2
SEJ DB 10,13,10,13,     '$' 


;-----CHAO MUNG KHACH HANG-----
;------------------------------
            
W1  DB 10,13,         '|                     Chao mung den voi 999 Restaurant                      |$'
W2  DB 10,13,         '|                                                                           |$' 
W3  DB 10,13,         '|                                      *                                    |$'
W4 DB 10,13,          '|                                     ***                                   |$'
W5  DB 10,13,         '|                                 ***********                               |$'
W6  DB 10,13,         '|                                   *******                                 |$'
W7  DB 10,13,         '|                                   *** ***                                 |$'                                                                             
W8 DB 10,13,          '|                                  **     **                                |$'                                    
W9  DB 10,13,         '|                                                                           |$' 

;-----KHUNG MENU-----
;-------------------- 

ME1 DB 10,13,       '  **                                                    **$'
ME2 DB 10,13,       '  ********************************************************$'
ME3 DB 10,13,       '  **                                                    **$'
ME4 DB 10,13,       '  **                                                               **$'
ME5 DB 10,13,       '  *******************************************************************$' 
MENU DB 10,13,      '  *****************************---MENU---****************************$'
ME6 DB 10,13,       '  **                                          **$'
ME7 DB 10,13,       '  **********************************************$'    

;-----MENU-----
;--------------
  
M1 DB 10,13,'  **           1.Banh Mi                 10.000 VND                **$' 
M2 DB 10,13,'  **           2.Chao Ga                 10.000 VND                **$'
M3 DB 10,13,'  **           3.Mi xao                  10.000 VND                **$'
M4 DB 10,13,'  **           4.Xoi Ga                  10.000 VND                **$'
M5 DB 10,13,'  **           5.Pho Ga                  20.000 VND                **$'
M6 DB 10,13,'  **           6.Pho Bo                  20.000 VND                **$'
M7 DB 10,13,'  **           7.Bun Hue                 30.000 VND                **$'
M8 DB 10,13,'  **           8.Bun Rieu                30.000 VND                **$'
M9 DB 10,13,'  **           9.Pho Dac Biet            60.000 VND                **$'                    


;-----LUCKY NUMBER-----
;---------------------- 

LU1 DB 13, 10,     '         ___           ___       ___    _________ ____   ___  _____     ___ $'
LU2 DB 13, 10,     '        /  /\         /  /\     /  /\  /  ______/\|  |\ /  / \\   \\   /  /\$'
LU3 DB 13, 10,     '       /  / /        /  / /    /  / / /  /\_____\/|  ||/  / /  \   \\ /  / /$'
LU4 DB 13, 10,     '      /  / /        /  / /    /  / / /  / /       |  |/  / /    \   \/  / / $'
LU5 DB 13, 10,     '     /  / /        /  / /    /  / / /  / /        |  |   --      \     / /  $'
LU6 DB 13, 10,     '    /  / / 	   /  / /    /  / / /  / /         |  |\  \ \      \   / /   $'
LU7 DB 13, 10,     '   /  /_/_____   /  /_/____/  / / /  /_/____      |  ||\  \ \     /  / /    $'
LU8 DB 13, 10,     '  /__________/\ /___________ / / /_________/\     |  || \  \ \   /__/ /     $'
LU9 DB 13, 10,     '  \\_________\/ \\__________\\/  \\________\/     |__|/  \__\/   \\_\/      $'  


;-----THONG BAO KHUYEN MAI-----
;------------------------------
    
DMSG DB 10, 13, 10, 13,    '                 *****************************************$'
DIS50 DB 10, 13, 10, 13,   '                 | CHUC MUNG BAN DA TRUNG KHUYEN MAI 50% |$'
DIS20 DB 10, 13, 10, 13,   '                 | CHUC MUNG BAN DA TRUNG KHUYEN MAI 20% |$'  
DIS10 DB 10, 13, 10, 13,   '                 | CHUC MUNG BAN DA TRUNG KHUYEN MAI 10% |$'

;-----HOA DON-----
;-----------------

B0        DB 13, 10,     '|----------------------------999 Restaurant Bill----------------------------|$'
B1        DB 13, 10,     '|                 ---------------------------------------                   |$'
B2        DB 13, 10,     '|                      ----------------------------                         |$'
B3        DB 13, 10,     '|                             ---------------                               |$'
NGAY      DB 13, 10,     '|        Ngay: 30/02/2024.         *****            Gio: 24h 00p            |$'
ADMIN     DB 13, 10,     '|        Thu Ngan: Admin                           Ma Hoa Don: KTMT05       |$'
DSACH     DB 13, 10,     '|  DS MON AN:      SO LUONG        DON GIA           THANH TIEN             |$'
TBDIS DB 13, 10,                    '|  KHUYEN MAI:                                       $'             
TBVAT DB 13, 10,                    '|  VAT(10%):                                         $'                              
TONG     DB 13, 10,     '|  TONG THANH TOAN:  $'
VND       DB             '.000VND$'          
                                                 

;-----XAC NHAN THANH TOAN-----
;----------------------------- 

XACNHAN     DB 13, 10,              '                          XAC NHAN THANH TOAN: $'
X1          DB 10, 13, 10, 13,      '                1.TIEN MAT                    2.CHUYEN KHOAN$'
XNG         DB 10, 13, 10, 13,      '                         ----------------------------$'
XNSAI       DB 10, 13, 10, 13,      '                          Lua chon khong ton tai !!!$'
X2          DB 10, 13, 10, 13,      '|                 QUY KHACH VUI LONG THANH TOAN SAU KHI DUNG BUA            |$' 

X3          DB 13, 10,              '|                      THANH TOAN QUA HINH THUC CHUYEN KHOAN:               |$'
CK1         DB 13, 10,              '|                      NGAN HANG:        PTIT BANK                          |$'                             
CK2         DB 13, 10,              '|                      SO TAI KHOAN:     9999999999                         |$'
CK3         DB 13, 10,              '|                      ND CHUYEN KHOAN:  KTMT05                             |$'                                 
CK4         DB 13, 10,              '|                      SO TIEN:       $'
CK5         DB                                                                       '                           |$'
KETTHUC     DB 13, 10,              '|-------------------------CHUC QUY KHACH NGON MIENG!------------------------|$'     


.CODE 

;------IN RA MOT STRING BAT KI------
;-----------------------------------
PRINT MACRO STR
    LEA DX, STR
    MOV AH, 9
    INT 21H
PRINT ENDM

;--------XOA MAN HINH--------
;---------------------------- 
CLEARSCREEN MACRO
    ;XOA TOAN BO MAN HINH
    MOV AX, 0600H
    MOV BH, 07H  
    MOV CX, 0000H
    MOV DX, 184FH
    INT 10H  
    ;DUA VI TRI CON TRO VE DAU TRANG
    MOV AH, 02H
    MOV BH, 00H
    MOV DX, 0000H
    INT 10H
ENDM           

 
;-----XU LI DAU CACH-----
;------------------------
XULI_DAUCACH MACRO CNT 
    
   MOV AX, CNT
   CMP AX, 1
   JE C1
   CMP AX, 2
   JE C2
   CMP AX, 3
   JE C3
   JMP HET
   
   C1:
    PRINT CACH2
    PRINT CACH2
    PRINT CACH2
    JMP HET
    
   C2:
    PRINT CACH2
    PRINT CACH2
    JMP HET
   
   C3:
    PRINT CACH2
    JMP HET
    
 HET:    
XULI_DAUCACH ENDM


;-------XU LI MON AN-------
;--------------------------
XULI MACRO STT, Q, PR, TONG
    
    PRINT OPT2                                     
    PUSH CX
    CALL NHAPSL     ;Nhap so luong luu vao AX
    POP CX 
     
    ;GIA TIEN TAM THOI
    MOV BX, AX      ;BX = Soluong
    MOV AX, PR      ;AX = Price
    MUL BX          ;AX = Gia tien = SL * PR
    MOV DX, AX      ;DX luu Price
    
    ;SO LUONG TICH LUY
    MOV AX, Q 
    ADD AX, BX      ;Cong so luong tam thoi voi so luong tich luy
    MOV Q, AX
              
        
    ;TONG TICH LUY
    MOV AX, TONG    ;Tong so tien cua hoa don
    ADD AX, DX
    MOV TONG, AX
   
     
XULI ENDM  
       
       
;-----HIEN THI MON AN-----
;-------------------------
HIENTHI MACRO  NAME, Q, PR, TONG      
     MOV AX, TONG
     MOV BX, SUM
     ADD AX, BX 
     MOV SUM, AX
    
     PRINT CRTF
     PRINT NAME     ;In ten
     PRINT KHOANGCACH

     MOV AX, Q
     CALL IN_SO     ;In So luong
     
     PRINT KHOANGCACH 
     
     MOV AX, PR
     CALL IN_SO     ;In Don gia
     
     PRINT VND
     PRINT KHOANGCACH
     
     MOV AX, TONG
     CALL IN_SO     ;In Thanh Tien
                     
     PRINT VND  
     PRINT GACH1 
     PRINT GACH3
     
HIENTHI ENDM

;--------------------------------------
;---------BAT DAU CHUONG TRINH---------
;-------------------------------------- 
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX    
 START:
    CALL WELCOME  ;Hien thi man hinh Welcome
     
    
    MOV AH,1      ;Nhap nut bat ki de tiep tuc
    INT 21H       

    CALL IN_MENU  ;Hien thi MENU
    MOV SI, 0     
 
 ;-----HIEN THI MENU------
 ;------------------------ 
 IN_MENU:

    PRINT SEJ
    PRINT ME5
    PRINT MENU
    PRINT ME4
    PRINT M1
    PRINT M2
    PRINT M3
    PRINT M4
    PRINT M5
    PRINT M6
    PRINT M7
    PRINT M8
    PRINT M9
    PRINT ME4
    PRINT ME5
    PRINT ME5
    
    PRINT OPT1
    ;Chon mon an    
    MOV AH,1
    INT 21H

    MOV BL, AL
    SUB BL, 48 
    
    CMP BL,1
    JE Mon1
    
    CMP BL,2
    JE Mon2
    
    CMP BL,3
    JE Mon3 
    
    CMP BL,4
    JE Mon4 
    
    CMP BL,5
    JE Mon5
    
    CMP BL,6
    JE Mon6
    
    CMP BL,7
    JE Mon7
    
    CMP BL,8
    JE Mon8
    
    CMP BL,9
    JE Mon9
 
   MON1:
        XULI STT1, Q1, PR1, TONG1
           
        JMP STOP
   MON2:
        XULI STT2, Q2, PR2, TONG2
        JMP STOP
   MON3:
        XULI STT3, Q3, PR3, TONG3
        JMP STOP
   MON4:
 
        JMP STOP
   MON5:
        XULI STT5, Q5, PR5, TONG5
        JMP STOP
   MON6:
        XULI STT6, Q6, PR6, TONG6
        JMP STOP
   MON7:
        XULI STT7, Q7, PR7, TONG7
        JMP STOP
   MON8:
        XULI STT8, Q8, PR8, TONG8
        JMP STOP
   MON9:
        XULI STT9, Q9, PR9, TONG9
        JMP STOP
          
 STOP: 
    PRINT NOTE  ;Nhap Ghi Chu
    
    LEA DX, STR2
    MOV AH, 10
    INT 21H 
               
    CALL BACK ;Lua chon them mon/ Tiep tuc
    
    MOV AH,4CH
    INT 21H
MAIN ENDP  

      
;----HIEN THI CHAO MUNG----
;--------------------------
WELCOME PROC
      
    PRINT GACH3
    PRINT W1
    PRINT W2
    PRINT W3
    PRINT W4
    PRINT W5
    PRINT W6
    PRINT W6
    PRINT W8
    PRINT W9
    PRINT GACH3
    PRINT OPT3
    
    ret 
WELCOME ENDP


;-----NHAP SO LUONG MON AN-----
;------------------------------
NHAPSL PROC                ;Nhap string, chuyen thanh dang so
       
        MOV AH, 10                  
        LEA DX, STR3       ;Nhap so luong mon
        INT 21H
    
        LEA SI, STR3 + 2   ;Tro SI vào ki tu dau cua string         
        MOV CX, [STR3 + 1] ;CX = length        
        XOR CH, CH                 
        MOV AX, 0
        MOV TMP, AX
    L1:                   
        MOV BX, 0
        MOV AX, TMP               
        MOV BX, [SI]       ;BX = kitu          
        MOV BH, 0
        SUB BX, '0'        ;Chuyen tu ki trong BX tu ve so          
        MUL MUOI           ;AX = AX * 10     
        ADD AX, BX         ;AX += BX            
        MOV TMP, AX                
        INC SI                       
        LOOP L1
        
        MOV AX, TMP        ;AX = So luong  
    ret            
    
NHAPSL ENDP

;-----DUYET DANH SACH MON AN VA IN MON AN-----
;---------------------------------------------
OUTPUT PROC    
     MOV SI, 0        
     LAP:   
        MOV AL, LIST[SI]   ;LIST = 1,2,3,4,5,6,7,8,9
        XOR AH, AH
        CMP AL, 1
        JE INRA1
        CMP AL, 2
        JE INRA2
        CMP AL, 3
        JE INRA3 
        CMP AL, 4
        JE INRA4 
        CMP AL, 5
        JE INRA5 
        CMP AL, 6
        JE INRA6 
        CMP AL, 7
        JE INRA7
        CMP AL, 8
        JE INRA8 
        CMP AL, 9
        JE INRA9   
    CON:      
        INC SI
        CMP SI, 9
        JNE LAP
        JMP EN
     
     INRA1:    
        CMP Q1, 0     ;Neu so luong  = 0 thi nhay den mon tiep theo
        JE CON        ;So luong khac 0 thi Hienthi
        HIENTHI NAME1, Q1, PR1, TONG1   ;Hien thi Mon an
        JMP CON
     INRA2:  
        CMP Q2, 0
        JE CON
        HIENTHI NAME2, Q2, PR2, TONG2
        JMP CON
     INRA3: 
        CMP Q3, 0
        JE CON
        HIENTHI NAME3, Q3, PR3, TONG3
        JMP CON
     INRA4:     
        CMP Q4, 0
        JE CON
        HIENTHI NAME4, Q4, PR4, TONG4
        JMP CON
     INRA5: 
        CMP Q5, 0
        JE CON
        HIENTHI NAME5, Q5, PR5, TONG5
        JMP CON
     INRA6:   
        CMP Q6, 0
        JE CON
        HIENTHI NAME6, Q6, PR6, TONG6
        JMP CON
     INRA7:  
        CMP Q7, 0
        JE CON
        HIENTHI NAME7, Q7, PR7, TONG7
        JMP CON
     INRA8:  
        CMP Q8, 0
        JE CON
        HIENTHI NAME8, Q8, PR8, TONG8
        JMP CON
     INRA9: 
        CMP Q9, 0
        JE CON
        HIENTHI NAME9, Q9, PR9, TONG9
        JMP CON   
  EN: 
     ret       
OUTPUT ENDP
 
;-----THEM MON / TIEP TUC-----
;-----------------------------   
BACK PROC
    PRINT GACH 
    PRINT BACK1
    PRINT BACK2 
    PRINT OPT6
    
    MOV AH,1
    INT 21H          
    SUB AL,48

    CMP AL,1
    JE IN_MENU      ;Hien thi MENU 
    CMP AL,2    
    JE LUCKYNUMBER  ;So may man
    PRINT GACH   
    PRINT ALERT     ;Lua chon khong ton tai
    JMP BACK
    RET
BACK ENDP
                        
;--------SO MAY MAN--------
;--------------------------         
LUCKYNUMBER PROC 
           
    CLEARSCREEN
    
    PRINT LU1
    PRINT LU2
    PRINT LU3
    PRINT LU4
    PRINT LU5
    PRINT LU6
    PRINT LU7
    PRINT LU8
    PRINT LU9  
    PRINT SEJ    
    PRINT GACH3       
    PRINT NHAPSO
    
    ;NHAP SO MAY MAN
    MOV AH, 1;
    INT 21H        
    SUB AL, 48      
    ;SO SANH VOI 9
    MOV AH, 0
    CMP AL, 9      
    JE CHIN
    ;XET TINH CHAN LE
    TEST AL, 1      
    JNZ LE 
        PRINT DMSG
        PRINT DIS10 
        MOV DISCOUNT, 1
        JMP NEXT: 
    
    LE: 
        PRINT DMSG    
        PRINT DIS20
        MOV DISCOUNT, 2
        JMP NEXT    
    CHIN:
        PRINT DMSG
        PRINT DIS50
        MOV DISCOUNT, 5
    NEXT:
        PRINT DMSG
        PRINT OPT5  
        
        ;NHAP PHIM BAT KI
        MOV AH,1
        INT 21H          
        CALL RESULT  
      ret          
LUCKYNUMBER ENDP 

;------XU LI KHUYEN MAI------
;----------------------------
KHUYENMAI PROC 
    MOV AX, SUM    
    MOV BX, SUM
    
    CMP DISCOUNT, 5  
    JE NAMMUOI    
    
    CMP DISCOUNT, 2
    JE HAIMUOI
    
        MOV CL, 10
        JMP KM
    
    HAIMUOI:
        MOV CL, 5
        JMP KM
    
    NAMMUOI:    
        MOV CL, 2           
                 
    
    KM:    
        DIV CL       ;AX = AX / CL
        MOV DIS, AX  ;DIS = AX / CL                
        
        PRINT TBDIS
        MOV AX, DIS
        CALL IN_SO   ;In Khuyen mai        
        PRINT VND
        PRINT GACH1
        PRINT GACH3
        
        CALL XULIVAT ;Xu li VAT
        
        MOV AX, DIS  
        MOV BX, SUM 
        SUB BX, AX   ;SUM -= DIS
        MOV SUM, BX                           
    ret     
KHUYENMAI ENDP

;--------XU LI VAT-------
;------------------------
XULIVAT PROC
      
   MOV AX, SUM  ;Tong tien
   MOV CL, 10     
   
   DIV CL       ;AX = AX / 10
   MOV VAT, AX  ;VAT= AX
   
   PRINT TBVAT
   MOV AX, VAT
   CALL IN_SO   ;In VAT
   
   PRINT VND
   PRINT GACH1 
        
   MOV AX, VAT    
   MOV BX, SUM
   ADD BX, AX   ;SUM += VAT
   MOV SUM, BX 
   ret 
XULIVAT ENDP

;-----HIEN THI HOA DON-----
;--------------------------    
RESULT PROC 

    CLEARSCREEN
    
    ;xu li hinh  thuc
    PRINT B0
    PRINT B1
    PRINT B2
    PRINT B3
    PRINT NGAY
    PRINT CACH1
    PRINT ADMIN
    PRINT GACH3 
    PRINT DSACH
    PRINT GACH3
    
    
    CALL OUTPUT   
    
    CALL KHUYENMAI 
    
    ;CALL xuliVAT ;Tinh toan VAT
    
    PRINT GACH3
     
    PRINT TONG
    MOV AX, SUM
    CALL IN_SO 
    
    ;xu li hinh thuc
    PRINT VND 
    PRINT GACH2
    PRINT GACH3 
    PRINT CRTF
    
    CALL CONFIRM  ;Xac nhan hinh thuc thanh toan 
    ret
RESULT ENDP 

;-----XAC NHAN THANH TOAN-----
;-----------------------------
CONFIRM PROC
    
    PRINT XACNHAN
    PRINT X1
    PRINT CRTF
    PRINT OPT6
    
    MOV AH, 1
    INT 21H 
    SUB AL, 48    ;Nhap lua chon
    
    CMP AL, 1      
    JE TIENMAT    ;1 => Tien mat 
    CMP AL, 2
    JE BANK       ;2 => Hoa don
    
    JMP SAI:      ;So nhap vao khac 1 va 2
    
    TIENMAT:
      PRINT X2
      JMP KT  
      
    BANK:    
      PRINT GACH3   
      PRINT X3  
      PRINT GACH3
      PRINT CACH1
      PRINT CK1
      PRINT CK2
      PRINT CK3    
      PRINT CK4
      
      MOV AX, SUM   ;In tong tien
      CALL IN_SO
      PRINT VND   
      PRINT CK5
      PRINT CACH1 
      JMP KT
      
    SAI: 
      PRINT XNG
      PRINT XNSAI
      PRINT XNG
      JMP CONFIRM   
      JMP KT
      
    KT:
      PRINT KETTHUC 
      ret
CONFIRM ENDP

;-----IN SO LUU TRONG AX-----
;----------------------------
IN_SO PROC                 
        MOV CX, 0                 
        
    LAP1:  
        MOV DX, 0
        DIV MUOI                   
        PUSH DX                     
        INC CX                    
        CMP AX, 0                  
        JE XULIDAUCACH
        JMP LAP1 
        
 XULIDAUCACH:       
        MOV CNT, CX
        ;XU LI DAU CACH THUA
        XULI_DAUCACH  CNT                 

    LAP2:
 
        POP DX                     
        ADD DL, 48                  
        MOV AH, 2                  
        INT 21H
        DEC CX                    
        CMP CX, 0                 
        JNE LAP2
      ret
IN_SO ENDP 

END