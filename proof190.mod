-- I) Base case
open INV
  op m200 : -> Message2 .
  red inv190(init,m200) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
 op m2000 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep190(m2000) .
close


-- sdm1
-- c-sdm1 is true
open ISTEP 
 op m2000 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep190(m2000) .
close


-- sdm2
-- c-sdm is false
open ISTEP 
 op m2000 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep190(m2000) .
close

-- sdm2
-- c-sdm is true
open ISTEP 
 op m2000 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep190(m2000) .
close

-- sdm3
-- c-sdm3 = false 
open ISTEP 
 ops m2000 m221 m222 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m221,m222) = false .
 eq s' = sdm3(s,p10,q10,m10,m221,m222) .
 red istep190(m2000) .
close

-- sdm3
-- c-sdm3 = true
open ISTEP 
 ops m2000 m221 m222 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m221,m222) = true .
 eq s' = sdm3(s,p10,q10,m10,m221,m222) .
 red istep190(m2000) .
close


-- fkm11
-- c-fkm11 = false
open ISTEP 
 ops m200 : -> Message2 .
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep190(m200) .
close

-- fkm11
-- c-fkm11 = false
open ISTEP 
 ops m200 : -> Message2 .
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = true .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep190(m200) .
close

-- fkm12
-- c-fkm12 = false
open ISTEP 
 ops m2000 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep190(m2000) .
close

-- fkm12
-- c-fkm12 = true
open ISTEP 
 ops m2000 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep190(m2000) .
close


-- fkm21
-- c-fkm21 = false
open ISTEP 
 ops m2000 : -> Message2 .
 op e10 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e10) = false .
 eq s' = fkm21(s,p10,q10,e10) .
 red istep190(m2000) .
close

-- fkm21
-- c-fkm21 = true
open ISTEP 
 ops m2000 : -> Message2 .
 op e10 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e10) = true .
 --
 eq (m2000 = me2(intruder,p10,q10,e10)) = false .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep190(m2000) .
close


-- fkm21
-- c-fkm21 = true
open ISTEP 
 ops m2000 : -> Message2 .
 op e10 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e10) = true .
 eq e10 \in expos(s) = true .
 --
 eq m2000 = me2(intruder,p10,q10,e10) .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep190(m2000) .
close


-- fkm22
-- c-fkm22 = false
open ISTEP 
 ops m20 : -> Message2 .
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep190(m20) .
close

-- fkm22
-- c-fkm22 = true
open ISTEP 
 ops m20 : -> Message2 .
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep190(m20) .
close

-- fkm31
-- c-fkm31 = false
open ISTEP 
 ops m20 : -> Message2 .
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep190(m20) .
close

-- fkm31
-- c-fkm31 = true
open ISTEP 
 ops m20 : -> Message2 .
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep190(m20) .
close


-- fkm32
-- c-fkm32 = false 
open ISTEP 
 ops m20 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep190(m20) .
close



-- fkm32
-- c-fkm32 = true 
open ISTEP 
 ops m20 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep190(m20) .
close
