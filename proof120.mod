-- Base Case

open INV
 op h10 : -> Hash .
 red inv120(init,h10) .
close

-- Induction

--
-- sdm1
--

open ISTEP 
 op h10 : -> Hash .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 --
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep120(h10) . 
close 


open ISTEP 
 op h10 : -> Hash .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 --
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep120(h10) . 
close 

--
-- sdm2
--

open ISTEP 
 op h10 : -> Hash .
 --
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep120(h10) .
close 


open ISTEP 
 op h10 : -> Hash .
 --
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep120(h10) .
close 


--
-- sdm3
--

open ISTEP
 op h10 : -> Hash .
 --
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep120(h10) .
close


open ISTEP
 op h10 : -> Hash .
 --
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = true .
 --
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep120(h10) .
close


--
-- fkm11
--

-- c-fkm11 is false
open ISTEP
 op h10 : -> Hash .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep120(h10) .
close


-- c-fkm11 is true
open ISTEP
 op h10 : -> Hash .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep120(h10) .
close


-- fkm12
-- c-fkm12 false
open ISTEP 
 op h10 : -> Hash .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep120(h10) .
close


-- fkm12
-- c-fkm12 true
open ISTEP 
 op h10 : -> Hash .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep120(h10) .
close


--
-- fkm21
--

-- fkm21
-- c-fkm21 false
open ISTEP 
 op h10 : -> Hash .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep120(h10) .
close


-- fkm21
-- c-fkm21 false
open ISTEP 
 op h10 : -> Hash .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep120(h10) .
close


--
-- fkm22
--

-- fkm22
-- c-fkm21 false
open ISTEP 
 op h10 : -> Hash .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep120(h10) .
close


-- fkm22
-- c-fkm21 true
open ISTEP 
 op h10 : -> Hash .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep120(h10) .
close


--
-- fkm31
--

-- fkm31
-- c-fkm31 false
open ISTEP 
 op h10 : -> Hash .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep120(h10) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
 op h10 : -> Hash .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep120(h10) .
close


--
-- fkm32
--

-- fkm32
-- c-fkm32 false
open ISTEP 
 op h10 : -> Hash .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep120(h10) .
close


-- fkm32
-- c-fkm32 true
open ISTEP 
 op h10 : -> Hash .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep120(h10) .
close
