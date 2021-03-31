-- I) Base case
open INV
  ops m221 m222 : -> Message2 .
  op m30 : -> Message3 .
  red inv200(init,m221,m222,m3) .
close

-- sdm1
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep200(m221,m222,m30) .
close

-- sdm2
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep200(m221,m222,m30) .
close

-- sdm3
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep200(m221,m222,m30) .
close

-- fkm11
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep200(m221,m222,m30) .
close

-- fkm12
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep200(m221,m222,m30) .
close

-- fkm21
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op e200 : -> Expo .
 eq s' = fkm21(s,p10,q10,e200) .
 red istep200(m221,m222,m30) .
close

-- fkm22
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep200(m221,m222,m30) .
close

-- fkm31
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 op c300 : -> Cipher3 .
 eq s' = fkm31(s,p10,q10,c300) .
 red istep200(m221,m222,m30) .
close

-- fkm32
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops r11 : -> Random .
 ops e10 e11 : -> Expo .
 op d10 : -> Dompar .
 eq s' = fkm32(s,p10,q10,r11,e10,e11,d10) .
 red istep200(m221,m222,m30) .
close
