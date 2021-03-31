-- I) Base case
open INV
  op m20 : -> Message2 .
  red inv110(init,m20) .
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
 red istep110(m20) .
close

-- sdm1
-- c-sdm1 is true
open ISTEP 
  ops m20 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep110(m20) .
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
 red istep110(m20) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m20 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq (me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m20) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep110(m20) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m20 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 -- eq me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m20 .
 eq creator(m20) = p10 .
 eq sender(m20) = p10 .
 eq receiver(m20) = q10 .
 eq expo(m20) = expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))) .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep110(m20) .
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
 red istep110(m20) .
close


-- c-sdm3
-- c-sdm3 is false
open ISTEP 
  ops m20 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops m221 m222 : -> Message2 .
 op m100 : -> Message1 .
 eq c-sdm3(s,p10,q10,m100,m221,m222) = true .
 --
 eq s' = sdm3(s,p10,q10,m100,m221,m222) .
 red istep110(m20) .
close


--
-- fkm11
--

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
  red istep110(m20) .
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
  red istep110(m20) .
close


-- fkm12
-- c-fkm12 false
open ISTEP 
  op m20 : -> Message2 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep110(m20) .
close


-- fkm12
-- c-fkm12 true
open ISTEP 
  op m20 : -> Message2 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep110(m20) .
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
 red istep110(m200) .
close

-- fkm21
-- c-fkm21 true
open ISTEP 
  op m200 : -> Message2 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep110(m200) .
close


--
-- fkm22
--
-- c-fkm22 false
open ISTEP 
 ops m200 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep110(m200) .
close


--
-- c-fkm22 true
open ISTEP 
 ops m200 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep110(m200) .
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
 red istep110(m200) .
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
 red istep110(m200) .
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
 red istep110(m200) .
close

-- fkm32
-- c-fkm32 true
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
 red istep110(m200) .
close
