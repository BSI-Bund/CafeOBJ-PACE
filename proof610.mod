-- I) Base case
open INV
  op m221 : -> Message2 .
  op c300 : -> Cipher3 .
  red inv610(init,m221,c300) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
 op m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep610(m221,c300) .
close


-- sdm1
-- c-sdm1 is true
open ISTEP 
 op m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep610(m221,c300) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep610(m221,c300) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep610(m221,c300) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq r10 \in rands(s) = false . 
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq c300 \in cipher3s(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep610(m221,c300) .
close



-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq r10 \in rands(s) = false . 
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq c300 \in cipher3s(s) = true .
 eq (rand(hash(c300)) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep610(m221,c300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq r10 \in rands(s) = false . 
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq c300 \in cipher3s(s) = true .
 eq rand(hash(c300)) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv330(s,c300) implies istep610(m221,c300) .
close




--
-- sdm3
--
-- c-sdm3 is false
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep610(m221,c300) .
close


--
-- sdm3
--
-- c-sdm3 is true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m2001 \in network(s) = true .
 --
 eq (c300 = mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10)))) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep610(m221,c300) .
close


--
-- sdm3
--
-- c-sdm3 is true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m2001 \in network(s) = true .
 --
 -- eq (c300 = mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10)))) .
 eq rand(hash(c300)) = rand(expo(m2002)) .
 eq expo(hash(c300)) = expo(m2001) .
 eq expo(c300) = expo(m2001) .
 eq dpar(c300) = dpar(cipher1(m10)) .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep610(m221,c300) .
close

--
-- fkm11
--
-- c-fkm11 false 
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op c10 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep610(m221,c300) .
close

-- c-fkm11 true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op c10 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c10) = true .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep610(m221,c300) .
close

--
-- fkm12
--
-- c-fkm12 false
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep610(m221,c300) .
close

-- c-fkm12 false
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep610(m221,c300) .
close



--
-- fkm21
--
-- c-fkm21 false
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = false .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep610(m221,c300) .
close


--
-- fkm21
--
-- c-fkm21 true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = true .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep610(m221,c300) .
close


--
-- fkm22
--
-- c-fkm22 false
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep610(m221,c300) .
close


--
-- c-fkm22 true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep610(m221,c300) .
close


--
-- fkm31
--
-- c-fkm31 false
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep610(m221,c300) .
close


--
-- fkm31
--
-- c-fkm31 true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep610(m221,c300) .
close


--
-- fkm32
--
-- c-fkm32 false
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep610(m221,c300) .
close

-- c-fkm32 true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq (c300 = mac(hash(r10,e10),e20,d10)) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep610(m221,c300) .
close

-- c-fkm32 true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 -- eq (c300 = mac(hash(r10,e10),e20,d10)) .
 eq rand(hash(c300)) = r10 .
 eq expo(hash(c300)) = e10 .
 eq expo(c300) = e20 .
 eq dpar(c300) = d10 .
 --
 eq m221 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep610(m221,c300) .
close



-- c-fkm32 true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 -- eq (c300 = mac(hash(r10,e10),e20,d10)) .
 eq rand(hash(c300)) = r10 .
 eq expo(hash(c300)) = e10 .
 eq expo(c300) = e20 .
 eq dpar(c300) = d10 .
 --
 eq m221 \in network(s) = true .
 eq creator(m221) = intruder .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep610(m221,c300) .
close



-- c-fkm32 true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 -- eq (c300 = mac(hash(r10,e10),e20,d10)) .
 eq rand(hash(c300)) = r10 .
 eq expo(hash(c300)) = e10 .
 eq expo(c300) = e20 .
 eq dpar(c300) = d10 .
 --
 eq m221 \in network(s) = true .
 eq (creator(m221) = intruder) = false .
 eq (rand(expo(m221)) = r10) = false . 
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep610(m221,c300) .
close



-- c-fkm32 true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 --
 -- eq (c300 = mac(hash(r10,e10),e20,d10)) .
 eq rand(hash(c300)) = r10 .
 eq expo(hash(c300)) = e10 .
 eq expo(c300) = e20 .
 eq dpar(c300) = d10 .
 --
 eq m221 \in network(s) = true .
 eq (creator(m221) = intruder) = false .
 eq rand(expo(m221)) = r10 . 
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv110(s,m221) and inv320(s,m221,r10) implies istep610(m221,c300) .
close


-- c-fkm32 true
open ISTEP 
 ops m221 : -> Message2 .
 op c300 : -> Cipher3 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- case 2
 eq r10 \in rands(s) = false .
 --
 -- eq (c300 = mac(hash(r10,e10),e20,d10)) .
 eq rand(hash(c300)) = r10 .
 eq expo(hash(c300)) = e10 .
 eq expo(c300) = e20 .
 eq dpar(c300) = d10 .
 --
 eq m221 \in network(s) = true .
 eq (creator(m221) = intruder) = false .
 eq rand(expo(m221)) = r10 . 
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv160(s,m221) implies istep610(m221,c300) .
close
