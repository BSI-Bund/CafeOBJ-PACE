-- I) Base case
open INV
  ops m221 : -> Message2 . 
  op e20 : -> Expo .
  red inv620(init,m221,e20) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
 ops m221 : -> Message2 .
  op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep620(m221,e20) .
close


-- sdm1
-- c-sdm1 is true
open ISTEP 
 ops m221 : -> Message2 .
  op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep620(m221,e20) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep620(m221,e20) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 eq e20 \in expos(s) = false .
 eq m221 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep620(m221,e20) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 eq e20 \in expos(s) = false .
 eq m221 \in network(s) = true .
 eq (rand(e20) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep620(m221,e20) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 eq e20 \in expos(s) = false .
 eq m221 \in network(s) = true .
 eq rand(e20) = r10 .
 eq (rand(expo(m221)) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep620(m221,e20) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 eq e20 \in expos(s) = false .
 eq m221 \in network(s) = true .
 eq rand(e20) = r10 .
 eq rand(expo(m221)) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv160(s,m221) implies istep620(m221,e20) .
close



-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 eq e20 \in expos(s) = false .
 eq m221 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep620(m221,e20) .
close



-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 eq e20 \in expos(s) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep620(m221,e20) .
close



-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221  : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) .
 --
 eq e20 \in expos(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep620(m221,e20) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) .
 --
 eq e20 \in expos(s) = true .
 eq (r10 = rand(e20)) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep620(m221,e20) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) .
 --
 eq e20 \in expos(s) = true .
 eq rand(e20) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv170(s,e20) implies istep620(m221,e20) .
close

--
-- sdm3
--

-- sdm3
-- c-sdm3 is false
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops m201 m202 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m201,m202) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m201,m202) .
 red istep620(m221,e20) .
close


-- sdm3
-- c-sdm3 is true
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops m201 m202 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m201,m202) = true .
 --
 eq s' = sdm3(s,p10,q10,m10,m201,m202) .
 red istep620(m221,e20) .
close




--
-- fkm11
--
-- c-fkm11 false
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep620(m221,e20) .
close


-- c-fkm11 true
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = true .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep620(m221,e20) .
close


-- fkm12
-- c-fkm12 false
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep620(m221,e20) .
close


-- fkm12
-- c-fkm12 false
open ISTEP 
 ops m221 : -> Message2 .
 op e20 : -> Expo .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep620(m221,e20) .
close


-- fkm21
-- c-fkm21 false
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep620(m221,e200) .
close


-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq (m221 = me2(intruder,p10,q10,e20)) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep620(m221,e200) .
close



-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m221 = me2(intruder,p10,q10,e20) .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep620(m221,e200) .
close




--
-- fkm22
--
-- c-fkm22 false
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep620(m221,e200) .
close


--
-- c-fkm22 true
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq m221 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep620(m221,e200) .
close


--
-- c-fkm22 true
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq r10 \in randsi(s) = true .
 --
 eq m221 \in network(s) = true .
 eq creator(m221) = intruder .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep620(m221,e200) .
close



--
-- c-fkm22 true
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq r10 \in randsi(s) = true .
 --
 eq m221 \in network(s) = true .
 eq (creator(m221) = intruder) = false .
 eq (rand(e200) = r10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep620(m221,e200) .
close



--
-- c-fkm22 true
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq r10 \in randsi(s) = true .
 --
 eq m221 \in network(s) = true .
 eq (creator(m221) = intruder) = false .
 eq rand(e200) = r10 .
 eq (rand(expo(m221)) = r10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep620(m221,e200) .
close




--
-- c-fkm22 true
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq r10 \in randsi(s) = true .
 --
 eq m221 \in network(s) = true .
 eq (creator(m221) = intruder) = false .
 eq rand(e200) = r10 .
 eq rand(expo(m221)) = r10 .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red inv110(s,m221) and inv320(s,m221,r10) implies istep620(m221,e200) .
close


--
-- fkm31
--

--
-- fkm31
--
-- c-fkm31 false
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep620(m221,e200) .
close


--
-- fkm31
--
-- c-fkm31 false
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep620(m221,e200) .
close


--
-- fkm32
--
-- c-fkm32 false
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep620(m221,e200) .
close


--
-- fkm32
--
-- c-fkm32 false
open ISTEP 
 ops m221 : -> Message2 .
 op e200 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops e10 e20 : -> Expo .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep620(m221,e200) .
close
