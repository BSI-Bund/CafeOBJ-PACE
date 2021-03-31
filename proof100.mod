-- I) Base case
open INV
  op m10 : -> Message1 .
  red inv100(init,m10) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP
 ops m10 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep100(m10) .
close


-- sdm1
-- c-sdm1 is true
open ISTEP
 ops m10 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq r10 \in rands(s) = false .
 --
 eq (m10 = me1(p10,p10,q10,enc(r10,d10))) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep100(m10) .
close


-- sdm1
-- c-sdm1 is true
open ISTEP
 ops m10 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq r10 \in rands(s) = false .
 --
 eq m10 = me1(p10,p10,q10,enc(r10,d10)) .
 eq p10 = intruder .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep100(m10) .
close

-- sdm1
-- c-sdm1 is true
open ISTEP
 ops m10 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq r10 \in rands(s) = false .
 --
 eq m10 = me1(p10,p10,q10,enc(r10,d10)) .
 eq (p10 = intruder) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep100(m10) .
close

--
-- sdm2
--

--
-- sdm2
-- c-sdm2 is false
open ISTEP 
 ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep100(m100) .
close


--
-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep100(m100) .
close

--
-- sdm3
--

-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 op r10 : -> Random .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep100(m100) .
close



-- sdm3
-- c-sdm3 is true
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 op r10 : -> Random .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep100(m100) .
close


-- fkm11

-- fkm11
-- c-fkm11 is false
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op c10 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep100(m100) .
close



-- fkm11
-- c-fkm11 is true
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op c10 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq (m100 = me1(intruder,p10,q10,c10)) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep100(m100) .
close



-- fkm11
-- c-fkm11 is true
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op c10 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 = me1(intruder,p10,q10,c10) .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep100(m100) .
close


-- 
-- fkm12
--

--
-- fkm12
-- c-fkm12 = false
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep100(m100) .
close


--
-- fkm12
-- c-fkm12 = false
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- 
 eq (m100 = me1(intruder,p10,q10,enc(r10,d10))) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep100(m100) .
close


--
-- fkm12
-- c-fkm12 = false
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- 
 eq m100 = me1(intruder,p10,q10,enc(r10,d10)) .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep100(m100) .
close


-- 
-- fkm21
--

--
-- fkm21
-- c-fkm21 = false
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = false .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep100(m100) .
close


--
-- fkm21
-- c-fkm21 = true
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = true .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep100(m100) .
close


--
-- fkm22
--

--
-- fkm22
-- c-fkm22 = false
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep100(m100) .
close


--
-- fkm22
-- c-fkm22 = true
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep100(m100) .
close


-- 
-- fkm31
--

--
-- fkm31
-- c-fkm31 = false
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 ops c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep100(m100) .
close

--
-- fkm31
-- c-fkm31 = true
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 ops c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep100(m100) .
close


--
-- fkm32
--

--
-- fkm32
-- c-fkm31 = false
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 ops r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 --
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep100(m100) .
close


--
-- fkm32
--

--
-- fkm32
-- c-fkm31 = true
open ISTEP 
  ops m100 : -> Message1 .
 --
 ops p10 q10 : -> Principal .
 ops r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 --
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep100(m100) .
close
