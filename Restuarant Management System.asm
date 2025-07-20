
;PROJECT SUBMITTED BY
; Laiba 2312117
; Wajiha sultan 2312140
; Usman javed 2312139
; Mohammad Khuzaima 2312124
; Sindhu Jeswani 2212326



 SetResolution macro srow,scol,erow,ecol,attrib 
	mov ah,6
	mov al,0
	mov bh,attrib
	mov ch,srow
	mov cl,scol
	mov dh,erow
	mov dl,ecol
	int 10h

endm 

;MACRO TO SET THE CURSOR POSITION at SPECIFIC Row and column

setCursor macro row,col

	mov ah,2
	mov bh,0
	mov dh,row
	mov dl,col
	int 10h

endm
;MACRO TO PRINT NEW LINE 
NLINE macro p1
   
    mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
endm

.model small
.stack 100h
.data
 
 
 
filename db "rs.txt",0               ; filing 
handler dw ?

text db 100 dup("$")          

len dw ?

 
 a2 db 5 dup("$")
 b2 db 5 dup("$") 
 c2 db 5 dup("$")
 d2 db 5 dup("$")
 e2 db 5 dup("$")
 f2 db 5 dup("$")
 g2 db 5 dup("$")
 h2 db 5 dup("$")
 i2 db 5 dup("$")
 j2 db 5 dup("$")
 k2 db 5 dup("$")
 l2 db 5 dup("$")
 m2 db 5 dup("$")
 n2 db 5 dup("$")
 o2 db 5 dup("$")
 p2 db 5 dup("$")
 q2 db 5 dup("$")
 r2 db 5 dup("$")
 s2 db 5 dup("$")
 t2 db 5 dup("$")
 u2 db 5 dup("$")
 v2 db 5 dup("$")









 
 

 
                                ;;order lists counter
 a1   db 0
 b1   db 0
 c1   db 0
 d1   db 0
 e1   db 0
 f1   db 0
 g1   db 0
 h1   db 0
 i1   db 0
 j1   db 0
 k1   db 0
 l1   db 0
 m1   db 0
 n1   db 0
 o1   db 0
 p1   db 0
 q1   db 0
 r1   db 0
 s1   db 0
 t1   db 0
 u1   db 0
 v1   db 0
 
 a    dw "         French toast                 =    $"    ;;order lists
 b    dw "         Waffles                      =    $"
 c    dw "         Sausage                      =    $"
 d    dw "         Avocado toast                =    $"
 e    dw "         Tea                          =    $"
 f    dw "         Coffee                       =    $"
 
 g    dw "         Peas pulao with carrot raita =    $"
 h    dw "         Masala Poha                  =    $"
 i    dw "         Red kidney beans             =    $"
 j    dw "         Avocado Tea Sandwiches       =    $"
 k    dw "         Vegetable Parmesan Quinoa    =    $"
 l    dw "         Buffalo Chicken Bowl         =    $"
 m    dw "         Paratha                      =    $"
 
 n    dw "         Fried Chicken                =    $"
 o    dw "         Omelet                       =    $"
 p    dw "         Pizza                        =    $"
 q    dw "         Kebab                        =    $"
 r    dw "         Fish                         =    $"
 s    dw "         Steak                        =    $"
 t    dw "         Broth                        =    $"
 u    dw "         Tossed Salad                 =    $"
 v    dw "         bread                        =    $" 
 
 
 
 
 percent db 0      ;;for percantage of food total
 
 msg1 dw "Enter Password (7 alphabets) $" 
 pass db "abcdefg"
 pw1  db 50 dup("?") 
 ast  db "*$"
 msg2 dw "                     The password is invalid $" 
 msg3 dw "               The password is valid , Press any key to continue $" 

 msg5  dw "             1)Breakfast $"                   ;;starting menu
 msg6  dw "             2)Lunch $"
 msg7  dw "             3)Dinner $" 
 msg32 dw "             4)Total$"   
 msg35 dw "             5)Record$"
 msg37 dw "             6)Delete Record$"
 msg36 dw "             7)Exit $"
 
 msg8  dw "Press numbers to choose any of the following $"
  
 msg9  dw "                    1)French toast               2$"      ;; breakfast menu     
 msg10 dw "                    2)Waffles                    3$"
 msg11 dw "                    3)Sausage                    4$"
 msg12 dw "                    4)Avocado toast              3$"
 msg13 dw "                    5)Tea                        1$"
 msg14 dw "                    6)Coffee                     2$" 
 
 msg15 dw "What would you like to have of the following ? $"
 
 msg16 dw "                    1)Peas pulao with carrot raita 4$"     ;;lunch menu
 msg17 dw "                    2)Masala poha                  3$"
 msg18 dw "                    3)Red kidney beans             2$"
 msg19 dw "                    4)Avocado Tea Sandwiches       5$" 
 msg20 dw "                    5)Vegetable Parmesan Quinoa    6$"
 msg21 dw "                    6)Buffalo Chicken Bowl         6$"
 msg22 dw "                    7)Paratha                      1$"   
 
 msg23 dw "                    1)Fried chicken                  4$"   ;; dinner menu 
 msg24 dw "                    2)Omelet                         2$"
 msg25 dw "                    3)Pizza                          7$"
 msg26 dw "                    4)Kebab                          3$"
 msg27 dw "                    5)Fish                           5$"
 msg28 dw "                    6)Steak                          6$"
 msg29 dw "                    7)Broth                          5$"
 msg30 dw "                    8)Tossed salad                   2$"
 msg31 dw "                    9)bread                          1$" 
 
 msg33 dw "Your food total after 5 percent tax is = $"
 msg34 dw "                          Press any key to continue $" 
 msg38 dw "The record is deleted and the total is restored$"  
 msg40 dw "      Invalid entry,Press any key to continue $"
 total db 0 
 
.code
main proc
mov ax,@data
mov ds,ax
 
SetResolution 0,4,24,75,2eh
setCursor 11,24
 mov dx,offset msg1
 mov ah,9
 int 21h 


NLINE
                         
 mov cx,7
 mov si,0
 setCursor 12,34
 password:
 
 mov ah,7                                ;input without echo
 int 21h
 mov pw1[si],al                          ;logic for password
 
 mov bl,pw1[si]
 cmp bl,pass[si]
 jne invalid  
 
 inc si
 mov dx,offset ast
 mov ah,9
 int 21h
 

 loop password 
 
NLINE
 
 mov dx,offset msg3          
 mov ah,9
 int 21h 
 
NLINE
 
 mov ah,1
 int 21h
 
 mov ah,00            ;clear screen
 mov al,2
 int 10h
 
 
 cmp al,0
 jae continue
 
 
 continue: 
    
    restart:
    
    mov ah,00          ;clear screen
    mov al,2
    int 10h
     
SetResolution 0,4,24,75,3eh           
    setCursor 11,15
    mov dx,offset msg8                               ;Press to choose any of the following
    mov ah,9                                        
    int 21h
  
NLINE
    
    mov dx,offset msg5                              ;1)Breakfast
    mov ah,9
    int 21h
    
    
NLINE
   
    mov dx,offset msg6                              ;2)Lunch
    mov ah,9
    int 21h
    
NLINE

    mov dx,offset msg7                              ;3)Dinner
    mov ah,9
    int 21h
    
NLINE
    
    mov dx,offset msg32                             ;4)Total
    mov ah,9
    int 21h  
    
NLINE
    
    mov dx,offset msg35                             ;5)Show orders
    mov ah,9
    int 21h
    
NLINE
    mov dx,offset msg37                             ;6)delete record
    mov ah,9
    int 21h 
    
NLINE
    mov dx,offset msg36                             ;7)Exit
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    
    cmp al,'1'
    je Breakfast
    
    cmp al,'2'
    je Lunch
    
    cmp al,'3'
    je Dinner 
    
    cmp al,'4'
    je tot
    
    cmp al,'5'
    je ord  

    cmp al,'6'
    je delete
    
    cmp al,'7'
    je ex 
    
    cmp al,'8'                  ; 8 is not an option so menu will pop on screen 
    jae restart                 ; if 0 or 8 and greater than 8 is pressed
    
    cmp al,'0'                  
    je restart                    
    
   
    Breakfast:
    rest:
    
    mov ah,00
    mov al,2
    int 10h 
    SetResolution 0,4,24,75,4eh 
           setCursor 11,15
           mov dx,offset msg15
           mov ah,9
           int 21h 
           
          
NLINE
                                                                        ; foods list in breakfast
           mov dx,offset msg9
           mov ah,9
           int 21h  
                             mov dx,156  ;ascii code for pound
                             mov ah,2
                             int 21h
    
NLINE
     
           mov dx,offset msg10
           mov ah,9
           int 21h
                             mov dx,156
                             mov ah,2
                             int 21h
      
NLINE
          mov dx,offset msg11
          mov ah,9
          int 21h 
                            mov dx,156
                            mov ah,2
                            int 21h
NLINE

          mov dx,offset msg12
          mov ah,9
          int 21h   
                             mov dx,156
                             mov ah,2
                             int 21h
    
NLINE
          mov dx,offset msg13
          mov ah,9
          int 21h 
                            
                             mov dx,156
                             mov ah,2
                             int 21h
NLINE
          mov dx,offset msg14
          mov ah,9
          int 21h            
                            
                             mov dx,156
                             mov ah,2
                             int 21h 
                             
    
          
          mov ah,1
          int 21h
          
       
           
        cmp al,'6'
        jle label
        
        label:
        cmp al,'1'
        je french 
        cmp al,'2'
        je waffles
        cmp al,'3'
        je Sausage
        cmp al,'4'
        je Avocado    
        cmp al,'5'
        je Tea 
        cmp al,'6'
        je Coffee
        cmp al,'7'
        jae wrong
     
        wrong: 
         mov ah,00
         mov al,2
         int 10h   
         SetResolution 0,4,24,75,5eh 
         setCursor 11,15
        mov dx,offset msg40
        mov ah,9
        int 21h
        
        
        
        mov ah,1 
        int 21h
        cmp al,'0'
        jae rest
         
        
        french:                                                       
         
          add a1,1
          add total,2
          
          cmp al,'1'
          je restart
          
          
        waffles:
        
          add b1,1
          add total,3  
          cmp al,'2'
          je restart
          
        
        Sausage:
          
          add c1,1
          add total,4
          cmp al,'3'
          je restart
          
            
       Avocado:
          
          add d1,1
          add total,3
          cmp al,'4'
          je restart
          
          
       Tea:
          
          add e1,1
          add total,1
          cmp al,'5'
          je restart
          
       Coffee: 
          
          add f1,1
          add total,2       
          cmp al,'6'
          je restart
          
          
        
          
          
 
          
          
                                                          
  Lunch:
    rest1:
    mov ah,00
    mov al,2
    int 10h
           SetResolution 0,4,24,75,6eh 
           setCursor 11,15
           mov dx,offset msg15
           mov ah,9
           int 21h

NLINE
                                                              ;foods list in Lunch  
           mov dx,offset msg16
           mov ah,9
           int 21h
                             mov dx,156
                             mov ah,2
                             int 21h 
    
NLINE
           mov dx,offset msg17
           mov ah,9
           int 21h
                             mov dx,156
                             mov ah,2
                             int 21h 
    
NLINE
                           
          mov dx,offset msg18
          mov ah,9
          int 21h 
                             mov dx,156
                             mov ah,2
                             int 21h
NLINE
          mov dx,offset msg19
          mov ah,9
          int 21h
                             mov dx,156
                             mov ah,2
                             int 21h
NLINE
          mov dx,offset msg20
          mov ah,9
          int 21h 
                             mov dx,156
                             mov ah,2
                             int 21h
NLINE
          mov dx,offset msg21
          mov ah,9
          int 21h 
                             mov dx,156
                             mov ah,2
                             int 21h 
                
NLINE
          mov dx,offset msg22
          mov ah,9
          int 21h 
                             mov dx,156
                             mov ah,2
                             int 21h
                
         mov ah,1
          int 21h
          
       
           
        cmp al,'7'
        jle label2
        
        label2:
        cmp al,'1'
        je peas 
        cmp al,'2'
        je masala
        cmp al,'3'
        je beans
        cmp al,'4'
        je sandwich    
        cmp al,'5'
        je vegetable 
        cmp al,'6'
        je buffalo 
        cmp al,'7'
        je paratha 
        cmp al,'8'
        jae wrong1
        
        wrong1: 
         mov ah,00
         mov al,2
         int 10h   
         SetResolution 0,4,24,75,7eh 
         setCursor 11,15
        mov dx,offset msg40
        mov ah,9
        int 21h
        
        
        
        mov ah,1 
        int 21h
        cmp al,'0'
        jae rest1
        
        peas:
         
          add g1,1
          add total,4
          
          cmp al,'1'
          je restart
          
          
        masala:
        
          add h1,1
          add total,3  
          cmp al,'2'
          je restart
          
        
        beans:
          
          add i1,1
          add total,2
          cmp al,'3'
          je restart
          
            
       sandwich:
          
          add j1,1
          add total,5
          cmp al,'4'
          je restart
          
          
       vegetable:
          
          add k1,1
          add total,6
          cmp al,'5'
          je restart
          
       buffalo: 
          
          add l1,1
          add total,6       
          cmp al,'6'
          je restart 
          
       paratha:
          add m1,1
          add total,1
          cmp al,'7'
          je restart
      

Dinner:
rest2:
    mov ah,00
    mov al,2
    int 10h
           SetResolution 0,4,24,75,8eh 
           setCursor 11,15
           mov dx,offset msg15
           mov ah,9
           int 21h
    
NLINE
                                                                     ;foods list in Dinner 
           mov dx,offset msg23
           mov ah,9
           int 21h
                             mov dx,156
                             mov ah,2
                             int 21h 
NLINE
     
           mov dx,offset msg24
           mov ah,9
           int 21h
                             mov dx,156
                             mov ah,2
                             int 21h 
    
NLINE
                           
          mov dx,offset msg25
          mov ah,9
          int 21h 
                             mov dx,156
                             mov ah,2
                             int 21h
NLINE
          mov dx,offset msg26
          mov ah,9
          int 21h
                             mov dx,156
                             mov ah,2
                             int 21h
NLINE
    
          mov dx,offset msg27
          mov ah,9
          int 21h 
                             mov dx,156
                             mov ah,2
                             int 21h
NLINE
     
          mov dx,offset msg28
          mov ah,9
          int 21h 
                             mov dx,156
                             mov ah,2
                             int 21h 
NLINE
          mov dx,offset msg29
          mov ah,9
          int 21h 
                             mov dx,156
                             mov ah,2
                             int 21h
NLINE              
         
          mov dx,offset msg30
          mov ah,9
          int 21h 
                           
                             mov dx,156
                             mov ah,2
                             int 21h 
NLINE
          mov dx,offset msg31
          mov ah,9
          int 21h 
                             mov dx,156
                             mov ah,2
                             int 21h
                             
NLINE 
          mov ah,1
          int 21h
          
       
           
        cmp al,'9'
        jle label3
        
        label3:
        cmp al,'1'
        je Fried 
        cmp al,'2'
        je Omelet
        cmp al,'3'
        je Pizza
        cmp al,'4'
        je Kebab    
        cmp al,'5'
        je Fish 
        cmp al,'6'
        je Steak 
        cmp al,'7'
        je Broth
        cmp al,'8'
        je Salad
        cmp al,'9'
        je bread 
        cmp al,'0'
        je wrong2
        
        wrong2: 
         mov ah,00
         mov al,2
         int 10h   
         SetResolution 0,4,24,75,9eh 
         setCursor 11,15
        mov dx,offset msg40
        mov ah,9
        int 21h
        
        
        
        mov ah,1 
        int 21h
        cmp al,'0'
        jae rest2
        
        Fried:
         
          add n1,1
          add total,4
          
          cmp al,'1'
          je restart
          
          
       Omelet:
        
          add o1,1
          add total,2  
          cmp al,'2'
          je restart
          
        
        Pizza:
          
          add p1,1
          add total,7
          cmp al,'3'
          je restart
          
            
       Kebab:
          
          add q1,1
          add total,3
          cmp al,'4'
          je restart
          
          
       Fish:
          
          add r1,1
          add total,5
          cmp al,'5'
          je restart
          
       Steak: 
          
          add s1,1
          add total,6       
          cmp al,'6'
          je restart 
          
       Broth:
          add t1,1
          add total,5
          cmp al,'7'
          je restart
          
          
      Salad:
          add u1,1
          add total,2
          cmp al,'8'
          je restart
          
      bread:    
          add v1,1
          add total,1
          cmp al,'9'
          je restart    

        
                  
  tot:                                                              ;show total
   
    mov ah,00
    mov al,2
    int 10h  
    SetResolution 0,4,24,75,8eh   
    setCursor 11,15
  mov dx,offset msg33
  mov ah,9
  int 21h  
  
   mov dx,156
  mov ah,2
  int 21h
  
  

 mov al,total 


mov bl,5
mul bl

mov ah,0             
mov bl,10            
div bl



mov ah,0 
mov bl,10
div bl 


mov bl,al
mov bh,ah
mov percent,bh


add bl,total
mov ah,0
mov al,bl

mov bl,10
div bl
mov bl,al
mov bh,ah

mov dl,bl
add dl,48
mov ah,2
int 21h

mov dl,bh
add dl,48
mov ah,2
int 21h 

mov dl,46
mov ah,2
int 21h

mov dl,percent
add dl,48
mov ah,2
int 21h 


  
NLINE
  
  mov dx,offset msg34
  mov ah,9
  int 21h
  
  mov ah,1
  int 21h
  
  
  cmp al,'0' 
  jae restart  
  
  ord:                                                    ;show orders 
  mov ah,00
  mov al,2
  int 10h
  
  SetResolution 0,4,24,75,7eh 
  mov dx,offset a
  mov ah,9
  int 21h 
  
  mov dl,a1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE 
  
  mov dx,offset b
  mov ah,9
  int 21h 
  
  mov dl,b1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
   mov dx,offset c
  mov ah,9
  int 21h 
  
  mov dl,c1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  mov dx,offset d
  mov ah,9
  int 21h 
  
  mov dl,d1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
   mov dx,offset e
  mov ah,9
  int 21h 
  
  mov dl,e1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
   mov dx,offset f
  mov ah,9
  int 21h 
  
  mov dl,f1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
   mov dx,offset g
  mov ah,9
  int 21h 
  
  mov dl,g1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  mov dx,offset h
  mov ah,9
  int 21h 
  
  mov dl,h1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  mov dx,offset i
  mov ah,9
  int 21h 
  
  mov dl,i1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  mov dx,offset j
  mov ah,9
  int 21h 
  
  mov dl,j1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  mov dx,offset k
  mov ah,9
  int 21h 
  
  mov dl,k1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
   mov dx,offset l
  mov ah,9
  int 21h 
  
  mov dl,l1
  add dl,48
  mov ah,2
  int 21h  
 
NLINE
  
  mov dx,offset m
  mov ah,9
  int 21h 
  
  mov dl,m1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
   mov dx,offset n
  mov ah,9
  int 21h 
  
  mov dl,n1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
   mov dx,offset o
  mov ah,9
  int 21h 
  
  mov dl,o1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
   mov dx,offset p
  mov ah,9
  int 21h 
  
  mov dl,p1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  mov dx,offset q
  mov ah,9
  int 21h 
  
  mov dl,q1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  
  mov dx,offset r
  mov ah,9
  int 21h 
  
  mov dl,r1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  
  mov dx,offset s
  mov ah,9
  int 21h 
  
  mov dl,s1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  
  mov dx,offset t
  mov ah,9
  int 21h 
  
  mov dl,t1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  mov dx,offset u
  mov ah,9
  int 21h 
  
  mov dl,u1
  add dl,48
  mov ah,2
  int 21h  
  
NLINE
  mov dx,offset v
  mov ah,9
  int 21h 
  
  mov dl,v1
  add dl,48
  mov ah,2
  int 21h  

NLINE
  
  mov dx,offset msg34
  mov ah,9
  int 21h
  
  
  
  mov ah,1
  int 21h 

  
  cmp al,'0'
  jae restart 
  
  delete:                                ; will delete the record by replacing the initital
  mov ah,00                              ; value by 0 in total and by replacing the orders count
  mov al,2                               ; with 0 from its initital value 0,1,2,3,4 and etc..
  int 10h
  mov total,0
  mov a1,0
  mov b1,0
  mov c1,0
  mov d1,0
  mov e1,0
  mov f1,0  
  mov g1,0
  mov h1,0
  mov i1,0
  mov j1,0
  mov k1,0
  mov l1,0
  mov m1,0
  mov n1,0
  mov o1,0
  mov p1,0
  mov q1,0
  mov r1,0
  mov s1,0
  mov t1,0
  mov u1,0
  mov v1,0  
  SetResolution 0,4,24,75,6eh 
  setCursor 11,14
  mov dx,offset msg38
  mov ah,9
  int 21h   
  
NLINE
  mov dx,offset msg34
  mov ah,9
  int 21h

  
  mov ah,1
  int 21h 

  
  cmp al,'0'
  jae restart
  

ex:
 
 
 
mov al,total 


mov bl,5
mul bl

mov ah,0             
mov bl,10            
div bl



mov ah,0 
mov bl,10
div bl 


mov bl,al
mov bh,ah
mov percent,bh


add bl,total
mov ah,0
mov al,bl

mov bl,10
div bl


add al,48
add ah,48
mov cl,163
mov ch,32


 
 mov bx,0
 
 
 mov si,0 
 
 mov text[si],ch
 inc si
 inc bx  
 
 
 mov text[si],cl
 inc si  
 inc bx
 
 mov text[si],ch
 inc si
 inc bx
  
 mov text[si],al
 inc si
 
 inc bx
 mov text[si],ah
 inc si  
 mov cl,46
 inc bx
 mov text[si],cl
 
 inc si
 mov ch,percent
 add ch,48

 inc bx 
 mov text[si],ch   
 inc bx
 
          

WriteString:
                    
mov len, bx
;CREATE FILE.
  mov  ah, 3ch
  mov  cx, 0
  mov  dx, offset filename
  int  21h  

;PRESERVE FILE HANDLER RETURNED.
  mov  handler, ax

;WRITE STRING.
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 40  ;STRING LENGTH.
  mov dx,offset msg33
  int 21h 
  
  
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, len  ;STRING LENGTH.
  mov  dx, offset text
  int  21h 
  

  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset a
  int 21h
  
  mov al,a1
  add al,48
  mov si,0 
  mov a2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset a2
  int 21h
 
  
    mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset b
  int 21h 
  
  mov al,b1
  add al,48
  mov si,0 
  mov b2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset b2
  int 21h  
  
    mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset c
  int 21h 
  
  
  mov al,c1
  add al,48
  mov si,0 
  mov c2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset c2
  int 21h  
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset d 
  int 21h  
  
  mov al,d1
  add al,48
  mov si,0 
  mov d2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset d2
  int 21h
  
   
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset e
  int 21h
  
  mov al,e1
  add al,48
  mov si,0 
  mov e2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset e2
  int 21h
  
  
     
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset f
  int 21h  
  
  mov al,f1
  add al,48
  mov si,0 
  mov f2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset f2
  int 21h 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset g
  int 21h 
  
  
  mov al,g1
  add al,48
  mov si,0 
  mov g2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset g2
  int 21h  
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset h
  int 21h  
  
  mov al,h1
  add al,48
  mov si,0 
  mov h2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset h2
  int 21h 
  

  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset i
  int 21h  
  
  
  
  
  mov al,i1
  add al,48
  mov si,0 
  mov i2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset i2
  int 21h
           
           
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset j
  int 21h 
  
  mov al,j1
  add al,48
  mov si,0 
  mov j2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset j2
  int 21h
  
  
    
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset k
  int 21h 
  
  mov al,k1
  add al,48
  mov si,0 
  mov k2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset k2
  int 21h
  

  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset l
  int 21h 
  
  mov al,l1
  add al,48
  mov si,0 
  mov l2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset l2
  int 21h
  

  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset m
  int 21h
  
  mov al,m1
  add al,48
  mov si,0 
  mov m2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset m2
  int 21h
  

  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset n
  int 21h 
  
  
  mov al,n1
  add al,48
  mov si,0 
  mov n2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset n2
  int 21h  
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset o
  int 21h   
  
  mov al,o1
  add al,48
  mov si,0 
  mov o2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset o2
  int 21h
  

  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov  dx,offset p
  int 21h   
            
  mov al,p1
  add al,48
  mov si,0 
  mov p2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset p2
  int 21h         
   
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset q
  int 21h   
  
  mov al,q1
  add al,48
  mov si,0 
  mov q2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset q2
  int 21h
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov  dx,offset r
  int 21h 
  mov al,r1
  add al,48
  mov si,0 
  mov r2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset r2
  int 21h
  
  
    
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov  dx,offset s
  int 21h  
  
  mov al,s1
  add al,48
  mov si,0 
  mov s2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset s2
  int 21h
   
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov  dx,offset t
  int 21h 
  
  mov al,t1
  add al,48
  mov si,0 
  mov t2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset t2
  int 21h
  
 
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov  dx,offset u
  int 21h
          
  
  mov al,u1
  add al,48
  mov si,0 
  mov u2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset u2
  int 21h        
          
 
          
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 43  ;STRING LENGTH.
  mov dx,offset v
  int 21h 
  
  mov al,v1
  add al,48
  mov si,0 
  mov v2[si],al 
  
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 1  ;STRING LENGTH.
  mov  dx,offset v2
  int 21h  
  

;CLOSE FILE (OR DATA WILL BE LOST).
  
  mov  ah, 3eh
  mov  bx, handler
  int  21h      

  
 mov ah,4ch
 int 21h

 invalid: 
 
NLINE
 
 mov dx,offset msg2
 mov ah,9
 int 21h 
 
 mov ah,4ch
 int 21h


 main endp
 end main
