-- I) Base case
open INV
  op m20 : -> Message2 .
  op e10 : -> Expo .
  red inv600(init,m20,e10) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
  ops m20 : -> Message2 .
  ops e10 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep600(m20,e10) .
close

-- sdm1
-- c-sdm1 is true
open ISTEP 
  ops m20 : -> Message2 .
  ops e10 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep600(m20,e10) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep600(m200,e100) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m200 \in network(s) = true . 
 eq (e100 = expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep600(m200,e100) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m200 \in network(s) = true . 
 eq e100 = expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))) .
 eq rand(expo(m200)) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv160(s,m200) implies istep600(m200,e100) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m200 \in network(s) = true . 
 eq e100 = expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))) .
 eq (rand(expo(m200)) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep600(m200,e100) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m200 \in network(s) = false . 
 eq (me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m200) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep600(m200,e100) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m200 \in network(s) = false . 
 eq m200 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) .
 eq (e100 = expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = false .
 eq e100 \in expos(s) = true .
 eq rand(e100) = rand(expo(m200)) .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv170(s,e100) implies istep600(m200,e100) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m200 \in network(s) = false . 
 eq m200 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) .
 eq (e100 = expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = false .
 eq e100 \in expos(s) = true .
 eq (rand(e100) = rand(expo(m200))) = false .
 eq (rand(e100) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep600(m200,e100) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m200 \in network(s) = false . 
 eq m200 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) .
 eq (e100 = expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = false .
 eq e100 \in expos(s) = true .
 eq (rand(e100) = rand(expo(m200))) = false .
 eq rand(e100) = r10 . 
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv170(s,e100) implies istep600(m200,e100) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m200 \in network(s) = false . 
 eq m200 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) .
 eq (e100 = expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = false .
 eq e100 \in expos(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep600(m200,e100) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 --
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 --
 eq m200 \in network(s) = false . 
 eq m200 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) .
 eq e100 = expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))) .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep600(m200,e100) .
close

--
-- sdm3
--

-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops m210 m220 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m210,m220) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m210,m220) .
 red istep600(m200,e100) .
close


-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops m210 m220 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m210,m220) = true .
 --
 eq s' = sdm3(s,p10,q10,m10,m210,m220) .
 red istep600(m200,e100) .
close


--

-- fkm11
-- c-fkm11 is false
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op c10 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep600(m200,e100) .
close


-- fkm11
-- c-fkm11 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op c10 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c10) = true .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep600(m200,e100) .
close


-- fkm12
-- c-fkm12 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep600(m200,e100) .
close


-- fkm12
-- c-fkm12 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep600(m200,e100) .
close


-- fkm21
-- c-fkm11 is false
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op e20 : -> Expo .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep600(m200,e100) .
close


-- fkm21
-- c-fkm11 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op e20 : -> Expo .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m200 \in network(s) = true .
 eq e100 \in expos(s) = true .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep600(m200,e100) .
close


-- fkm21
-- c-fkm11 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op e20 : -> Expo .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m200 \in network(s) = true .
 eq e100 \in expos(s) = false .
 -- eq me2(intruder,p10,q10,expo(m20)) = m200 .
 eq creator(m200) = intruder .
 eq sender(m200) = p10 .
 eq receiver(m200) = q10 .
 eq expo(m200) = e20 .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep600(m200,e100) .
close


-- fkm21
-- c-fkm11 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op e20 : -> Expo .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m200 \in network(s) = true .
 eq e100 \in expos(s) = false .
 eq (me2(intruder,p10,q10,e20) = m200) = false .
 eq (e100 = e20) = false .
 eq s' = fkm21(s,p10,q10,e20) .
 red istep600(m200,e100) .
close


-- fkm21
-- c-fkm11 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op e20 : -> Expo .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m200 \in network(s) = true .
 eq e100 \in expos(s) = false .
 eq (me2(intruder,p10,q10,e20) = m200) = false .
 eq e20 = e100 .
 eq s' = fkm21(s,p10,q10,e20) .
 red istep600(m200,e100) .
close



-- fkm22
-- c-fkm22 is false
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep600(m200,e100) .
close


-- fkm22
-- c-fkm22 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq m200 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep600(m200,e100) .
close


-- fkm22
-- c-fkm22 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq m200 \in network(s) = true .
 eq e100 \in expos(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep600(m200,e100) .
close


-- fkm22
-- c-fkm22 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq m200 \in network(s) = true .
 eq e100 \in expos(s) = false .
 eq (e100 = expo(r10,maptopoint(r20,d10))) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep600(m200,e100) .
close


-- fkm22
-- c-fkm22 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq r20 \in randsi(s) = true .
 --
 eq m200 \in network(s) = true .
 eq e100 \in expos(s) = false .
 -- eq (e100 = expo(r10,maptopoint(r20,d10))) = true .
 eq rand(e100) = r10 .
 eq rand(point(e100)) = r20 .
 eq dpar(point(e100)) = d10 .
 --
 eq creator(m200) = intruder .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep600(m200,e100) .
close


-- fkm22
-- c-fkm22 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq r20 \in randsi(s) = true .
 --
 eq m200 \in network(s) = true .
 eq e100 \in expos(s) = false .
 -- eq (e100 = expo(r10,maptopoint(r20,d10))) = true .
 eq rand(e100) = r10 .
 eq rand(point(e100)) = r20 .
 eq dpar(point(e100)) = d10 .
 --
 eq (creator(m200) = intruder) = false .
 eq (rand(expo(m200)) = r10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep600(m200,e100) .
close


-- fkm22
-- c-fkm22 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case1
 eq r10 \in randsi(s) = true .
 eq r20 \in randsi(s) = true .
 --
 eq m200 \in network(s) = true .
 eq e100 \in expos(s) = false .
 -- eq (e100 = expo(r10,maptopoint(r20,d10))) = true .
 eq rand(e100) = r10 .
 eq rand(point(e100)) = r20 .
 eq dpar(point(e100)) = d10 .
 --
 eq (creator(m200) = intruder) = false .
 eq rand(expo(m200)) = r10 .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red inv110(s,m200) and inv320(s,m200,r10) implies istep600(m200,e100) .
close


-- fkm22
-- c-fkm22 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case2
 eq r10 \in rands(s) = false .
 eq r20 \in randsi(s) = true .
 --
 eq m200 \in network(s) = true .
 eq e100 \in expos(s) = false .
 -- eq (e100 = expo(r10,maptopoint(r20,d10))) = true .
 eq rand(e100) = r10 .
 eq rand(point(e100)) = r20 .
 eq dpar(point(e100)) = d10 .
 --
 eq (creator(m200) = intruder) = false .
 eq rand(expo(m200)) = r10 .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red inv160(s,m200) implies istep600(m200,e100) .
close


-- fkm31
-- c-fkm31 is false
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = false .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep600(m200,e100) .
close


-- fkm31
-- c-fkm31 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = true .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep600(m200,e100) .
close


-- fkm32
-- c-fkm32 is false
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep600(m200,e100) .
close


-- fkm32
-- c-fkm32 is true
open ISTEP 
  ops m200 : -> Message2 .
  ops e100 : -> Expo .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep600(m200,e100) .
close
