-- I) Base case
open INV
  op m20 : -> Message2 .
  red inv180(init,m20) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
  ops m20 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep180(m20) .
close


-- sdm1
-- c-sdm1 is false
open ISTEP 
  ops m20 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep180(m20) .
close



-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m20 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep180(m20) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m20 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep180(m20) .
close

-- c-sdm3
-- c-sdm3 is false
open ISTEP 
  ops m20 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops m221 m222 : -> Message2 .
 op m100 : -> Message1 .
 eq c-sdm3(s,p10,q10,m100,m221,m222) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m221,m222) .
 red istep180(m20) .
close

-- c-sdm3
-- c-sdm3 is true
open ISTEP 
  ops m20 : -> Message2 .
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops m221 m222 : -> Message2 .
 op m100 : -> Message1 .
 eq c-sdm3(s,p10,q10,m100,m221,m222) = true .
 --
 eq s' = sdm3(s,p10,q10,m100,m221,m222) .
 red istep180(m20) .
close

-- fkm11
-- c-fkm11 false
open ISTEP 
  op m20 : -> Message2 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
  eq s' = fkm11(s,p10,q10,c10) .
  red istep180(m20) .
close

-- fkm11
-- c-fkm11 true
open ISTEP 
  op m20 : -> Message2 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = true .
 --
  eq s' = fkm11(s,p10,q10,c10) .
  red istep180(m20) .
close

-- fkm12
-- c-fkm12 false
open ISTEP 
  ops m20 : -> Message2 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep180(m20) .
close

-- fkm12
-- c-fkm12 false
open ISTEP 
  ops m20 : -> Message2 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep180(m20) .
close

-- fkm21
-- c-fkm21 false
open ISTEP 
  op m200 : -> Message2 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep180(m200) .
close

-- fkm21
-- c-fkm21 true
open ISTEP 
  op m200 : -> Message2 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq (m200 = me2(intruder,p10,q10,e20))  = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep180(m200) .
close


-- fkm21
-- c-fkm21 true
open ISTEP 
  op m200 : -> Message2 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m200 = me2(intruder,p10,q10,e20) . 
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep180(m200) .
close



-- fkm22
-- c-fkm21 false
open ISTEP 
  op m200 : -> Message2 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep180(m200) .
close

-- fkm22
-- c-fkm21 true
open ISTEP 
  op m200 : -> Message2 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep180(m200) .
close

-- fkm31
-- c-fkm31 false
open ISTEP 
  op m200 : -> Message2 .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep180(m200) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  op m200 : -> Message2 .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep180(m200) .
close


-- fkm32
-- c-fkm32 false
open ISTEP 
  op m200 : -> Message2 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep180(m200) .
close


-- fkm32
-- c-fkm32 false
open ISTEP 
  op m200 : -> Message2 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep180(m200) .
close


