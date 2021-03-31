-- I) Base case
open INV
  op r100 : -> Random .
  red inv140(init,r100) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep140(r100) .
close

-- sdm1
-- c-sdm1 is true
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep140(r100) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op m11 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m11) = false .
 eq s' = sdm2(s,p10,q10,r10,m11) .
 red istep140(r100) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op m11 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m11) = true .
 eq s' = sdm2(s,p10,q10,r10,m11) .
 red istep140(r100) .
close


-- sdm3
-- c-sdm3 is false
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op m11 : -> Message1 .
 ops m221 m222 : -> Message2 .
 eq c-sdm3(s,p10,q10,m11,m221,m222) = false .
 eq s' = sdm3(s,p10,q10,m11,m221,m222) .
 red istep140(r100) .
close


-- sdm3
-- c-sdm3 is true
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op m11 : -> Message1 .
 ops m221 m222 : -> Message2 .
 eq c-sdm3(s,p10,q10,m11,m221,m222) = true .
 eq s' = sdm3(s,p10,q10,m11,m221,m222) .
 red istep140(r100) .
close



-- fkm11
-- c-fkm11 is false
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c11 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c11) = false .
 eq s' = fkm11(s,p10,q10,c11) .
 red istep140(r100) .
close



-- fkm11
-- c-fkm11 is true
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c11 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c11) = true .
 eq s' = fkm11(s,p10,q10,c11) .
 red istep140(r100) .
close


-- fkm12
-- c-fkm12 is false
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep140(r100) .
close

-- fkm12
-- c-fkm12 is true
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep140(r100) .
close


-- fkm21
-- c-fkm21 is false
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c200 : -> Expo .
 eq c-fkm21(s,p10,q10,c200) = false .
 eq s' = fkm21(s,p10,q10,c200) .
 red istep140(r100) .
close


-- fkm21
-- c-fkm21 is true
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c200 : -> Expo .
 eq c-fkm21(s,p10,q10,c200) = true .
 eq s' = fkm21(s,p10,q10,c200) .
 red istep140(r100) .
close



-- fkm22
-- c-fkm22 is false
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r11,r12,d10) = false .
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep140(r100) .
close

-- fkm22
-- c-fkm22 is true
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep140(r100) .
close


-- fkm31
-- c-fkm31 is false
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c300 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c300) = false .
 eq s' = fkm31(s,p10,q10,c300) .
 red istep140(r100) .
close



-- fkm31
-- c-fkm31 is true
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c300 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c300) = true .
 eq s' = fkm31(s,p10,q10,c300) .
 red istep140(r100) .
close


-- fkm32
-- c-fkm32 is false
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e11 e12 : -> Expo . 
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = false .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep140(r100) .
close


-- fkm32
-- c-fkm32 is true
open ISTEP 
 op r100 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e11 e12 : -> Expo . 
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep140(r100) .
close
