instructionsOther

^ #(

(#femms #emit 0 0 "R" 0 "C1" 16r00000F0E 0 )  " looks like invalid one "

(#movsb #emit 0 0 "R" 0 "C1" 16r000000A4 0 )  
(#movsd #emit 0 0 "R" 0 "C1" 16r000000A5 0 )   "in 64bit mode - moves 64bits"
(#rep #emit 0 0 "R" 0 "C1" 16r000000F3 0 )   "repeat prefix"
(#repe #emit 0 0 "R" 0 "C1" 16r000000F3 0 )   "repeat prefix"
(#repz #emit 0 0 "R" 0 "C1" 16r000000F3 0 )   "repeat prefix"
(#repne #emit 0 0 "R" 0 "C1" 16r000000F2 0 )   "repeat prefix"
(#repnz #emit 0 0 "R" 0 "C1" 16r000000F2 0 )   "repeat prefix"


(#cmpsb #emit 0 0 "R" 0 "C1" 16r000000A6 0 )  
"(#cmpsw #emit 0 0 0  16r000000A7 0 )  "
(#cmpsd #emit 0 0 "R" 0 "C1" 16r000000A7 0 )  

)