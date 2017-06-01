jmp //go to main()
lda 0001 // partition() call depth 0006 (6 var slots + return address)
wra 0001
sub 0000
lam 0000 // load A arr.length
wrb 0001 // write B 1
jeq 0009
jmp 000a
jm  0007



// main()
wra 0006
sta 0000 // set unsorted.length
wra 0018
sta 0001
wra 000c
sta 0002
wra 0032
sta 0003
wra 029e
sta 0004
wra 0007
sta 0005
wra 005c
sta 0006 // set unsorted @0002


Vars:
0000 : 0006 unsorted.length
0001 - 0006 : unsorted{24, 12, 50, 670, 7, 92}
