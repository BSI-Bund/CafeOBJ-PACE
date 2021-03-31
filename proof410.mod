-- I) Base case
open INV
  op m30 : -> Message3 .
  red inv410(init,m30) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep410(m30) .
close

-- sdm1
-- c-sdm1 is true
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep410(m30) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep410(m30) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep410(m30) .
close

-- c-sdm3
-- c-sdm3 is true
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops m221 m222 : -> Message2 .
 op m100 : -> Message1 .
 eq c-sdm3(s,p10,q10,m100,m221,m222) = true .
 --
 eq m30 \in network(s) = true .
 --
 eq s' = sdm3(s,p10,q10,m100,m221,m222) .
 red istep410(m30) .
close


-- c-sdm3
-- c-sdm3 is true
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops m221 m222 : -> Message2 .
 op m100 : -> Message1 .
 eq c-sdm3(s,p10,q10,m100,m221,m222) = true .
 --
 eq m30 \in network(s) = false .
 --
 eq (me3(p10,p10,q10,mac(hash(rand(expo(m222)),expo(m221)),expo(m221),dpar(cipher1(m100)))) = m30) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m221,m222) .
 red istep410(m30) .
close


-- c-sdm3
-- c-sdm3 is true
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops m221 m222 : -> Message2 .
 op m100 : -> Message1 .
 eq c-sdm3(s,p10,q10,m100,m221,m222) = true . 
 eq m221 \in network(s) = true .
 --
 eq m30 \in network(s) = false .
 --
 --  eq (me3(p10,p10,q10,mac(hash(rand(expo(m222)),expo(m221)),expo(m221),dpar(cipher1(m100)))) = m30) 
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m222)),expo(m221)) .
 eq expo(cipher3(m30)) = expo(m221) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m100)) .
 --
 eq s' = sdm3(s,p10,q10,m100,m221,m222) .
 red inv180(s,m221) implies istep410(m30) .
close

--
-- fkm11
--

-- fkm11
-- c-fkm11 false
open ISTEP 
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
  eq s' = fkm11(s,p10,q10,c10) .
  red istep410(m30) .
close



-- fkm11
-- c-fkm11 true
open ISTEP 
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = true .
 --
  eq s' = fkm11(s,p10,q10,c10) .
  red istep410(m30) .
close

-- fkm12
-- c-fkm12 false
open ISTEP 
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep410(m30) .
close


-- fkm12
-- c-fkm12 true
open ISTEP 
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep410(m30) .
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
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep410(m300) .
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
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep410(m300) .
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
 red istep410(m300) .
close


--
-- c-fkm22 true
open ISTEP 
 ops m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep410(m300) .
close




-- fkm31
-- c-fkm31 false
open ISTEP 
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep410(m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq m300 \in network(s) = true .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep410(m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq m300 \in network(s) = false .
 --
 eq (me3(intruder,p10,q10,c30) = m300) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep410(m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 eq m300 \in network(s) = false .
 --
 eq (me3(intruder,p10,q10,c30) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red inv350(s,c30) implies istep410(m300) .
close


-- fkm32
-- c-fkm32 false
open ISTEP 
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep410(m300) .
close


-- fkm32
-- c-fkm32 true
open ISTEP 
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep410(m300) .
close


-- fkm32
-- c-fkm32 true
open ISTEP 
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 -- eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = mac(hash(r10,e10),e20,d10) .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep410(m300) .
close
