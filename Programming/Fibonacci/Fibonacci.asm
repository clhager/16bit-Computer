jmp 000b  //startup
lda 0005  //f() modulo
ldb 0006
jgr 0006
jeq 0006
jmp 0009
sub 0000
sta 0005
jmp 0003
sta 0007
jm  0007 //end f()
wra 0000 //main()
sta 0000 //curr = 0
wrb 0001
stb 0001 //next = 1
wrb 0000
stb 0003 //out = 0
wrb 270f
stb 0004 //9999 set
lda 0000
ldb 0004
jls 0018
jeq 0018
jmp 002c
oam 0003 //print()
lda 0001
sta 0002 //temp = next
ldb 0000
add 0000
sta 0001 //next += curr
lda 0002
sta 0000 //curr = temp
lda 0003
wrb 0001
add 0000 //(out + 1)
sta 0005 // set n
wrb 0006
stb 0006 // set mod
wrb 0028
stb 0008 // set return address
jmp 0001 // call modulo()
lda 0007
sta 0003 // out = (out + 1) % 6
jmp 0013
hlt 0000

Vars:
curr   : 0000
next   : 0001
temp   : 0002
out    : 0003
9999   : 0004
mod(n) : 0005
mod(m) : 0006
mod(r) : 0007
mod(ad): 0008
