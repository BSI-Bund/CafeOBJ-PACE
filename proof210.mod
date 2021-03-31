-- I) Base case
open INV
  op m300 : -> Message3 .
  red inv210(init,m300) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep210(m300) .
close


-- sdm1
-- c-sdm1 is true
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep210(m300) .
close

-- sdm2
-- c-sdm2 is false
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep210(m300) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep210(m300) .
close


--
-- sdm3
--
-- c-sdm3 is false
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep210(m300) .
close


--
-- sdm3
--
-- c-sdm3 is true
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep210(m300) .
close


--
-- fkm11
--
-- c-fkm11 false
open ISTEP 
 op m300 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep210(m300) .
close


--
-- fkm11
--
-- c-fkm11 true
open ISTEP 
 op m300 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = true .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep210(m300) .
close


-- fkm12
-- c-fkm12 false
open ISTEP 
 op m300 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep210(m300) .
close


-- fkm12
-- c-fkm12 true
open ISTEP 
 op m300 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep210(m300) .
close


-- fkm21
-- c-fkm21 false
open ISTEP 
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep210(m300) .
close


-- fkm21
-- c-fkm21 true
open ISTEP 
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep210(m300) .
close


--
-- fkm22
--
-- c-fkm22 false
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep210(m300) .
close


--
-- fkm22
--
-- c-fkm22 false
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep210(m300) .
close


--
-- fkm31
--
-- c-fkm31 false
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep210(m300) .
close


--
-- fkm31
--
-- c-fkm31 true
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq (m300 = me3(intruder,p10,q10,c30)) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep210(m300) .
close


--
-- fkm31
--
-- c-fkm31 true
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 eq m300 = me3(intruder,p10,q10,c30) .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep210(m300) .
close


--
-- fkm32
--
-- c-fkm32 false
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep210(m300) .
close


--
-- fkm32
--
-- c-fkm32 false
open ISTEP 
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep210(m300) .
close
