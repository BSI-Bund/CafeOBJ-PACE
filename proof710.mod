-- I) Base case
open INV
  op m221 : -> Message2 .
  op m222 : -> Message2 .
  red inv710(init,m221,m222) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep710(m221,m222) .
close

-- sdm1
-- c-sdm1 is true
open ISTEP
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep710(m221,m222) .
close

-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep710(m221,m222) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep710(m221,m222) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- case 1
 eq m10 \in network(s) = true .
 eq creator(m10) = p10 .
 eq knowspi(p10) = false .
 --
 eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))))  .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m222))) .
 eq rand(expo(m222)) \in randsi(s) = true .
 eq m222 \in network(s) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv180(s,m222) and 
     inv400(s,m10) and 
     inv440(s,expo(m222),rand(cipher1(m10))) 
     implies istep710(m221,m222) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- case 2
 eq m10 \in network(s) = true .
 eq (knowspi(creator(m10))) = true .
 eq knowspi(p10) = true .
 --
 eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))))  .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m222))) .
 eq rand(expo(m222)) \in randsi(s) = true .
 eq m222 \in network(s) = true .
 eq intruder = creator(m10) .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv100(s,m10) implies istep710(m221,m222) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- case 2
 eq m10 \in network(s) = true .
 eq (knowspi(creator(m10))) = true .
 eq knowspi(p10) = true .
 --
 eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))))  .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m222))) .
 eq rand(expo(m222)) \in randsi(s) = true .
 eq m222 \in network(s) = true .
 eq (intruder = creator(m10)) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv180(s,m222) and 
     inv400(s,m10) and
     inv440(s,expo(m222),rand(cipher1(m10))) 
     implies istep710(m221,m222) .
close



-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq knowspi(p10) = true . 
 --
 eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))))  .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m222))) .
 eq rand(expo(m222)) \in randsi(s) = true .
 eq m222 \in network(s) = false .
 eq creator(m222) = p10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep710(m221,m222) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq knowspi(p10) = true . 
 --
 eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))))  .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m222))) .
 eq rand(expo(m222)) \in randsi(s) = true .
 eq m222 \in network(s) = false .
 eq (creator(m222) = p10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep710(m221,m222) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq knowspi(p10) = true . 
 --
 eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))))  .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m222))) .
 eq rand(expo(m222)) \in randsi(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep710(m221,m222) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq knowspi(p10) = true . 
 --
 eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))))  .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq (rand(cipher1(m10)) = rand(point(expo(m222)))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep710(m221,m222) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq knowspi(p10) = true . 
 --
 -- eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 eq creator(m222) = p10 .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m222))) = dpar(cipher1(m10)) .
 --
 eq p10 = intruder .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep710(m221,m222) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq knowspi(p10) = true . 
 --
 -- eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 eq creator(m222) = p10 .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m222))) = dpar(cipher1(m10)) .
 --
 eq (p10 = intruder) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep710(m221,m222) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq knowspi(p10) = true . 
 --
 -- eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 -- eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq creator(m222) = p10 .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m222))) = dpar(cipher1(m10)) .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep710(m221,m222) .
close


--
-- sdm3 
--


-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 op r10 : -> Random .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep710(m221,m222) .
close


-- sdm3
-- c-sdm3 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 op r10 : -> Random .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep710(m221,m222) .
close

-- fkm11

-- fkm11
-- c-fkm11 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op c10 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep710(m221,m222) .
close


-- fkm11
-- c-fkm11 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op c10 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c10) = true .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep710(m221,m222) .
close

--
-- fkm12
-- c-fkm12 = false
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep710(m221,m222) .
close


--
-- fkm12
-- c-fkm12 = true 
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq (creator(m221) = intruder) = false .
 eq (rand(expo(m222)) = r10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep710(m221,m222) .
close


-- fkm12
-- c-fkm12 = true 
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- case 2
 eq r10 \in randsi(s) = true .
 --
 eq (creator(m221) = intruder) = false .
 eq rand(expo(m222)) = r10 .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep710(m221,m222) .
close


-- fkm12
-- c-fkm12 = true 
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- case 1
 eq r10 \in rands(s) = false .
 --
 eq (creator(m221) = intruder) = false .
 eq rand(expo(m222)) = r10 .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep710(m221,m222) .
close


-- fkm12
-- c-fkm12 = true 
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- case 1
 eq r10 \in rands(s) = false .
 --
 eq (creator(m221) = intruder) = false .
 eq rand(expo(m222)) = r10 .
 eq m222 \in network(s) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red inv160(s,m222) implies istep710(m221,m222) .
close


-- fkm12
-- c-fkm12 = true 
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq creator(m221) = intruder .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep710(m221,m222) .
close


-- fkm21
-- c-fkm21 = false
open ISTEP 
  ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = false .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep710(m221,m222) .
close


-- fkm21
-- c-fkm21 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = true .
 --
 eq e10 \in expos(s) = true .
 --
 eq (m222 = me2(intruder,p10,q10,e10)) = false .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep710(m221,m222) .
close




-- fkm21
-- c-fkm21 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = true .
 --
 eq e10 \in expos(s) = true .
 --
 -- eq (m222 = me2(intruder,p10,q10,e10)) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = e10 .
 --
 eq rand(point(expo(m221))) = rand(point(e10)) .
 eq rand(e10) \in randsi(s) = true .
 eq rand(point(e10)) \in randsi(s) = false .
 eq (creator(m221) = intruder) = false .
 -- eq m221 \in network(s) = true .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 -- red inv10(s,m221,rand(point(e10))) .
 red inv110(s,m221) and inv440(s,e10,rand(point(e10))) implies istep710(m221,m222) .
close


-- fkm21
-- c-fkm21 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = true .
 --
 eq e10 \in expos(s) = true .
 --
 -- eq (m222 = me2(intruder,p10,q10,e10)) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = e10 .
 --
 eq rand(point(expo(m221))) = rand(point(e10)) .
 eq rand(e10) \in randsi(s) = true .
 eq rand(point(e10)) \in randsi(s) = false .
 eq creator(m221) = intruder .
 -- eq m221 \in network(s) = true .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 -- red inv10(s,m221,rand(point(e10))) .
 red istep710(m221,m222) .
close


-- fkm21
-- c-fkm21 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = true .
 --
 eq e10 \in expos(s) = true .
 --
 -- eq (m222 = me2(intruder,p10,q10,e10)) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = e10 .
 --
 eq rand(point(expo(m221))) = rand(point(e10)) .
 eq rand(e10) \in randsi(s) = true .
 eq rand(point(e10)) \in randsi(s) = true .
 eq creator(m221) = intruder .
 -- eq m221 \in network(s) = true .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 -- red inv10(s,m221,rand(point(e10))) .
 red istep710(m221,m222) .
close


-- fkm21
-- c-fkm21 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = true .
 --
 eq e10 \in expos(s) = true .
 --
 -- eq (m222 = me2(intruder,p10,q10,e10)) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = e10 .
 --
 eq rand(point(expo(m221))) = rand(point(e10)) .
 eq rand(e10) \in randsi(s) = true .
 eq rand(point(e10)) \in randsi(s) = true .
 eq (creator(m221) = intruder) = false .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red inv110(s,m221) and inv430(s,m221,rand(point(e10))) implies istep710(m221,m222) .
close


-- fkm21
-- c-fkm21 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = true .
 --
 eq e10 \in expos(s) = true .
 --
 -- eq (m222 = me2(intruder,p10,q10,e10)) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = e10 .
 --
 eq rand(point(expo(m221))) = rand(point(e10)) .
 eq rand(e10) \in randsi(s) = false .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep710(m221,m222) .
close


-- fkm21
-- c-fkm21 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op e10 : -> Expo .
 eq c-fkm21(s,p10,q10,e10) = true .
 --
 eq e10 \in expos(s) = true .
 --
 -- eq (m222 = me2(intruder,p10,q10,e10)) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = e10 .
 --
 eq (rand(point(expo(m221))) = rand(point(e10))) = false .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep710(m221,m222) .
close


--
-- fkm22
--
-- c-fkm22 = false
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep710(m221,m222) .
close



-- fkm22
--
-- c-fkm22 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case 1
 -- eq r10 \in randsi(s) = true .
 eq r20 \in randsi(s) = true .
 --
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = r20 .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red inv110(s,m221) and inv430(s,m221,r20) implies istep710(m221,m222) .
close


-- fkm22
--
-- c-fkm22 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 eq r20 \in randsi(s) = true .
 --
 eq rand(expo(m222)) = r10 .
 eq (rand(point(expo(m222))) = r20) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep710(m221,m222) .
close

-- fkm22
--
-- c-fkm22 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case 1
 eq r10 \in rands(s) = false .
 eq r20 \in randsi(s) = true .
 --
 eq rand(expo(m222)) = r10 .
 eq (rand(point(expo(m222))) = r20) = false .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep710(m221,m222) .
close


-- fkm22
--
-- c-fkm22 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case 1
 eq r10 \in rands(s) = false .
 eq r20 \in randsi(s) = true .
 --
 eq rand(expo(m222)) = r10 .
 eq (rand(point(expo(m222))) = r20) = false .
 eq m222 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red inv160(s,m222) implies istep710(m221,m222) .
close




-- fkm22
--
-- c-fkm22 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case 1
 -- eq r10 \in randsi(s) = true .
 eq r20 \in randsi(s) = true .
 --
 eq (rand(expo(m222)) = r10) = false .
 eq rand(expo(m222)) = r20 .
 eq rand(point(expo(m221))) = r20 .
 eq rand(point(expo(m222))) = r20 .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red inv110(s,m221) and inv430(s,m221,r20) implies istep710(m221,m222) .
close



-- fkm22
--
-- c-fkm22 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case 1
 -- eq r10 \in randsi(s) = true .
 -- eq r20 \in randsi(s) = true .
 --
 eq (rand(expo(m222)) = r10) = false .
 eq rand(expo(m222)) = r20 .
 eq rand(point(expo(m221))) = r20 .
 eq (rand(point(expo(m222))) = r20) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep710(m221,m222) .
close


-- fkm22
--
-- c-fkm22 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case 1
 -- eq r10 \in randsi(s) = true .
 eq r20 \in randsi(s) = true .
 --
 eq (rand(expo(m222)) = r10) = false .
 eq rand(expo(m222)) = r20 .
 eq (rand(point(expo(m221))) = r20) = false .
 eq (rand(point(expo(m222))) = r20) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep710(m221,m222) .
close


-- fkm22
--
-- c-fkm22 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case 1
 -- eq r10 \in randsi(s) = true .
 -- eq r20 \in randsi(s) = true .
 --
 eq (rand(expo(m222)) = r10) = false .
 eq rand(expo(m222)) = r20 .
 eq (rand(point(expo(m221))) = r20) = false .
 eq rand(point(expo(m222))) = r20 .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep710(m221,m222) .
close


-- fkm22
--
-- c-fkm22 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case 1
 -- eq r10 \in randsi(s) = true .
 -- eq r20 \in randsi(s) = true .
 --
 eq (rand(expo(m222)) = r10) = false .
 eq (rand(expo(m222)) = r20) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep710(m221,m222) .
close

--
-- fkm31
--

-- fkm31
--
-- c-fkm31 = false
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep710(m221,m222) .
close


-- fkm31
--
-- c-fkm31 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep710(m221,m222) .
close

--
-- fkm32
--


-- fkm32
--
-- c-fkm32 = false
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep710(m221,m222) .
close


-- fkm32
--
-- c-fkm32 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 --
 eq creator(m222) = intruder . 
 eq rand(expo(m222)) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep710(m221,m222) .
close


-- fkm32
--
-- c-fkm32 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 --
 eq creator(m222) = intruder . 
 eq (rand(expo(m222)) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep710(m221,m222) .
close


-- fkm32
--
-- c-fkm32 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 --
 eq (creator(m222) = intruder) = false . 
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep710(m221,m222) .
close


-- fkm32
--
-- c-fkm32 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- case 2
 eq r10 \in rands(s) = false .
 --
 eq rand(expo(m222)) = r10 .
 eq m222 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv160(s,m222) implies istep710(m221,m222) .
close


-- fkm32
--
-- c-fkm32 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- case 2
 eq r10 \in rands(s) = false .
 --
 eq rand(expo(m222)) = r10 .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep710(m221,m222) .
close



-- fkm32
--
-- c-fkm32 = true
open ISTEP 
 ops m221 m222 : -> Message2 .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- case 2
 eq r10 \in rands(s) = false .
 --
 eq (rand(expo(m222)) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep710(m221,m222) .
close
