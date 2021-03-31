-- I) Base case
open INV
  op h100 : -> Hash .
  op r100 : -> Random .
  op e100 : -> Expo .
  red inv220(init,h100,r100,e100) .
close

-- sdm1
open ISTEP 
  op h100 : -> Hash .
  op r100 : -> Random .
  op e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep220(h100,r100,e100) .
close


-- sdm2
open ISTEP 
  op h100 : -> Hash .
  op r100 : -> Random .
  op e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep220(h100,r100,e100) .
close


--
-- sdm3
--
open ISTEP 
  op h100 : -> Hash .
  op r100 : -> Random .
  op e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep220(h100,r100,e100) .
close


--
-- fkm11
--
open ISTEP 
  op h100 : -> Hash .
  op r100 : -> Random .
  op e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op c10 : -> Cipher1 .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep220(h100,r100,e100) .
close


--
-- fkm12
--
open ISTEP 
  op h100 : -> Hash .
  op r100 : -> Random .
  op e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep220(h100,r100,e100) .
close



--
-- fkm21
--
open ISTEP 
  op h100 : -> Hash .
  op r100 : -> Random .
  op e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep220(h100,r100,e100) .
close


--
-- fkm22
--
open ISTEP 
  op h100 : -> Hash .
  op r100 : -> Random .
  op e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep220(h100,r100,e100) .
close


--
-- fkm31
--
open ISTEP 
  op h100 : -> Hash .
  op r100 : -> Random .
  op e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep220(h100,r100,e100) .
close


--
-- fkm32
--
open ISTEP 
  op h100 : -> Hash .
  op r100 : -> Random .
  op e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep220(h100,r100,e100) .
close
