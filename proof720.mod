-- I) Base case
open INV
  ops m221 m222 : -> Message2 .
  op m300 : -> Message3 .
  red inv720(init,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep720(m221,m222,m300) .
close


-- sdm1
-- c-sdm1 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = expo(m221)) .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(cipher1(m10))  = rand(point(expo(m221))) .
 eq dpar(cipher1(m10)) = dpar(point(expo(m221)))  .
 --
 eq (creator(m300) = p10) = false .
 eq rand(expo(cipher3(m300))) = r10 .
 eq rand(hash(cipher3(m300))) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv470(s,m300) implies istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = expo m221) .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq (creator(m300) = p10) = false .
 eq rand(expo(cipher3(m300))) = r10 .
 eq (rand(hash(cipher3(m300))) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = expo m221) .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq (creator(m300) = p10) = false .
 eq (rand(expo(cipher3(m300))) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = expo m221) .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq creator(m300) = p10 . 
 eq (rand(hash(cipher3(m300))) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = expo m221) .
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq creator(m300) = p10 . 
 eq rand(hash(cipher3(m300))) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv470(s,m300) implies istep720(m221,m222,m300) .
close




-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = false .
 -- 
 eq (expo(m222) = expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = false .
 -- 
 -- eq (expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = expo m222) .
 -- eq creator(m222) = p10 .
 -- eq sender(m222) = p10 .
 -- eq receiver(m222) = q10 .
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m222))) = dpar(cipher1(m10)) .
 --
 eq rand(expo(m221)) = rand(hash(cipher3(m300))) .
 eq (rand(expo(hash(cipher3(m300)))) = r10) = false .
 eq (rand(hash(cipher3(m300))) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = false .
 -- 
 -- eq (expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = expo m222) .
 -- eq creator(m222) = p10 .
 -- eq sender(m222) = p10 .
 -- eq receiver(m222) = q10 .
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m222))) = dpar(cipher1(m10)) .
 --
 eq rand(expo(m221)) = rand(hash(cipher3(m300))) .
 eq (rand(expo(hash(cipher3(m300)))) = r10) = false .
 eq rand(hash(cipher3(m300))) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = false .
 -- 
 -- eq (expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = expo m222) .
 -- eq creator(m222) = p10 .
 -- eq sender(m222) = p10 .
 -- eq receiver(m222) = q10 .
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m222))) = dpar(cipher1(m10)) .
 --
 eq rand(expo(m221)) = rand(hash(cipher3(m300))) .
 eq rand(expo(hash(cipher3(m300)))) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv510(s,m300) implies istep720(m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m10 \in network(s) = true .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = false .
 -- 
 -- eq (expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = expo m222) .
 -- eq creator(m222) = p10 .
 -- eq sender(m222) = p10 .
 -- eq receiver(m222) = q10 .
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m222))) = dpar(cipher1(m10)) .
 --
 eq (rand(expo(m221)) = rand(hash(cipher3(m300)))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep720(m221,m222,m300) .
close


--
-- sdm3
--
-- c-sdm3 is false
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep720(m221,m222,m300) .
close


-- sdm3
--
-- c-sdm3 is true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq (m300 = me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10))))) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep720(m221,m222,m300) .
close


-- sdm3
--
-- c-sdm3 is true 
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq sender(m2001) = q10 .
 eq receiver(m2001) = p10 .
 eq creator(m2002) = p10 .
 eq sender(m2002) = p10 .
 eq receiver(m2002) = q10 .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq dpar(cipher1(m10)) = dpar(point(expo(m2002))) . 
 --
 -- eq (mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10)))) = cipher3 m300
 eq creator(m300) = p10 .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = rand(expo(m2002)) .
 eq expo(hash(cipher3(m300))) = expo(m2001) .
 eq expo(cipher3(m300)) = expo(m2001) .
 eq dpar(cipher3(m300)) = dpar(cipher1(m10)) .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 --
 eq expo(m221) = expo(m2001) .
 eq m300 \in network(s) = false .
 eq rand(expo(m2002)) = rand(expo(m2001)) .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep720(m221,m222,m300) .
close


-- sdm3
--
-- c-sdm3 is true 
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq sender(m2001) = q10 .
 eq receiver(m2001) = p10 .
 eq creator(m2002) = p10 .
 eq sender(m2002) = p10 .
 eq receiver(m2002) = q10 .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq dpar(cipher1(m10)) = dpar(point(expo(m2002))) . 
 --
 -- eq (mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10)))) = cipher3 m300
 eq creator(m300) = p10 .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = rand(expo(m2002)) .
 eq expo(hash(cipher3(m300))) = expo(m2001) .
 eq expo(cipher3(m300)) = expo(m2001) .
 eq dpar(cipher3(m300)) = dpar(cipher1(m10)) .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 --
 eq expo(m221) = expo(m2001) .
 eq m300 \in network(s) = false .
 eq (rand(expo(m2002)) = rand(expo(m2001))) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep720(m221,m222,m300) .
close



-- sdm3
--
-- c-sdm3 is true 
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq sender(m2001) = q10 .
 eq receiver(m2001) = p10 .
 eq creator(m2002) = p10 .
 eq sender(m2002) = p10 .
 eq receiver(m2002) = q10 .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq dpar(cipher1(m10)) = dpar(point(expo(m2002))) . 
 --
 -- eq (mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10)))) = cipher3 m300
 eq creator(m300) = p10 .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = rand(expo(m2002)) .
 eq expo(hash(cipher3(m300))) = expo(m2001) .
 eq expo(cipher3(m300)) = expo(m2001) .
 eq dpar(cipher3(m300)) = dpar(cipher1(m10)) .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 --
 eq expo(m221) = expo(m2001) .
 eq m300 \in network(s) = true .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep720(m221,m222,m300) .
close


-- sdm3
--
-- c-sdm3 is true 
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq sender(m2001) = q10 .
 eq receiver(m2001) = p10 .
 eq creator(m2002) = p10 .
 eq sender(m2002) = p10 .
 eq receiver(m2002) = q10 .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq dpar(cipher1(m10)) = dpar(point(expo(m2002))) . 
 --
 -- eq (mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10)))) = cipher3 m300
 eq creator(m300) = p10 .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = rand(expo(m2002)) .
 eq expo(hash(cipher3(m300))) = expo(m2001) .
 eq expo(cipher3(m300)) = expo(m2001) .
 eq dpar(cipher3(m300)) = dpar(cipher1(m10)) .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 --
 eq (expo(m221) = expo(m2001)) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep720(m221,m222,m300) .
close

-- sdm3
--
-- c-sdm3 is true 
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq sender(m2001) = q10 .
 eq receiver(m2001) = p10 .
 eq creator(m2002) = p10 .
 eq sender(m2002) = p10 .
 eq receiver(m2002) = q10 .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq dpar(cipher1(m10)) = dpar(point(expo(m2002))) . 
 --
 -- eq (mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10)))) = cipher3 m300
 eq creator(m300) = p10 .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = rand(expo(m2002)) .
 eq expo(hash(cipher3(m300))) = expo(m2001) .
 eq expo(cipher3(m300)) = expo(m2001) .
 eq dpar(cipher3(m300)) = dpar(cipher1(m10)) .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = false .
 --
 eq (expo(m221) = expo(m2001)) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep720(m221,m222,m300) .
close


-- sdm3
--
-- c-sdm3 is true 
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m2001 : -> Message2 .
 op m2002 : -> Message2 .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq sender(m2001) = q10 .
 eq receiver(m2001) = p10 .
 eq creator(m2002) = p10 .
 eq sender(m2002) = p10 .
 eq receiver(m2002) = q10 .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 eq dpar(cipher1(m10)) = dpar(point(expo(m2002))) . 
 --
 -- eq (mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10)))) = cipher3 m300
 -- eq creator(m300) = p10 .
 -- eq sender(m300) = p10 .
 -- eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = rand(expo(m2002)) .
 eq expo(hash(cipher3(m300))) = expo(m2001) .
 eq expo(cipher3(m300)) = expo(m2001) .
 eq dpar(cipher3(m300)) = dpar(cipher1(m10)) .
 --
 eq m221 \in network(s) = false .
 --
 eq (expo(m221) = expo(m2001)) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep720(m221,m222,m300) .
close


--
-- fkm11
--
-- c-fkm11 false
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep720(m221,m222,m300) .
close


--
-- fkm11
--
-- c-fkm11 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = true .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep720(m221,m222,m300) .
close


-- fkm12
-- c-fkm12 false
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep720(m221,m222,m300) .
close


-- fkm12
-- c-fkm12 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep720(m221,m222,m300) .
close

-- fkm21
-- c-fkm21 false
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close


-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m300 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close


-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close


-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = false .
 --
 eq (m222 = me2(intruder,p10,q10,e20)) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close


-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = false .
 --
 -- eq m222 = me2(intruder,p10,q10,e20) .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = e20 .

 --
 eq (rand(expo(m221)) = rand(expo(cipher3(m300)))) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close


-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq e20 \in expos(s) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = false .
 --
 -- eq (m222 = me2(intruder,p10,q10,e20) .
 -- eq creator(m222) = intruder .
 -- eq sender(m222) = p10 .
 -- eq receiver(m222) = q10 .
 -- eq expo(m222) = e20 .
 --
 -- eq rand(expo(m221)) = rand(expo(cipher3(m300))) .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close


-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq e20 \in expos(s) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq (m221 = me2(intruder,p10,q10,e20)) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close



-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq e20 \in expos(s) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (m221 = me2(intruder,p10,q10,e20)) = true .
 eq creator(m221) = intruder .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq expo(m221) = e20 .
 --
 eq expo(m222) \in expos(s) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close

-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq e20 \in expos(s) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (m221 = me2(intruder,p10,q10,e20)) = true .
 eq creator(m221) = intruder .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq expo(m221) = e20 .
 --
 eq expo(m222) \in expos(s) = true .
 eq creator(m300) = intruder .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close



-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq e20 \in expos(s) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (m221 = me2(intruder,p10,q10,e20)) = true .
 eq creator(m221) = intruder .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq expo(m221) = e20 .
 --
 eq expo(m222) \in expos(s) = true .
 eq (creator(m300) = intruder) = false .
 eq (rand(hash(cipher3(m300))) = rand(e20)) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close


-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq e20 \in expos(s) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (m221 = me2(intruder,p10,q10,e20)) = true .
 eq creator(m221) = intruder .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq expo(m221) = e20 .
 --
 eq expo(m222) \in expos(s) = true .
 eq (creator(m300) = intruder) = false .
 eq rand(hash(cipher3(m300))) = rand(expo(m221)) .
 eq (e20 = expo(cipher3(m300))) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close



-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq e20 \in expos(s) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (m221 = me2(intruder,p10,q10,e20)) = true .
 eq creator(m221) = intruder .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq expo(m221) = e20 .
 --
 eq expo(m222) \in expos(s) = true .
 eq (creator(m300) = intruder) = false .
 eq rand(hash(cipher3(m300))) = rand(expo(m221)) .
 eq expo(cipher3(m300)) = e20 .
 eq expo(hash(cipher3(m300))) = expo(m221) .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close



-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq e20 \in expos(s) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (m221 = me2(intruder,p10,q10,e20)) = true .
 eq creator(m221) = intruder .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq expo(m221) = e20 .
 --
 eq expo(m222) \in expos(s) = true .
 eq (creator(m300) = intruder) = false .
 eq rand(hash(cipher3(m300))) = rand(expo(m221)) .
 eq expo(cipher3(m300)) = e20 .
 eq (expo(hash(cipher3(m300))) = expo(m221)) = false .
 eq expo(hash(cipher3(m300))) = e20 .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep720(m221,m222,m300) .
close



-- fkm21
-- c-fkm21 true
open ISTEP 
 ops m221 m222 : -> Message2 .
 op m300 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq e20 \in expos(s) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 -- eq (m221 = me2(intruder,p10,q10,e20)) = true .
 eq creator(m221) = intruder .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq expo(m221) = e20 .
 --
 eq expo(m222) \in expos(s) = true .
 eq (creator(m300) = intruder) = false .
 eq rand(hash(cipher3(m300))) = rand(expo(m221)) .
 eq expo(cipher3(m300)) = e20 .
 eq (expo(hash(cipher3(m300))) = expo(m221)) = false .
 eq (expo(hash(cipher3(m300))) = e20) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red inv480(s,m221,m300) implies istep720(m221,m222,m300) .
close



--
-- fkm31
--

-- fkm31
-- c-fkm31 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep720(m221,m222,m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq m300 \in network(s) = false .
 --
 eq (m300 = me3(intruder,p10,q10,c30)) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep720(m221,m222,m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq m300 \in network(s) = false .
 --
 -- eq m300 = me3(intruder,p10,q10,c30) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m221 \in network(s) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep720(m221,m222,m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq m300 \in network(s) = false .
 --
 -- eq m300 = me3(intruder,p10,q10,c30) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep720(m221,m222,m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq c30 \in cipher3s(s) = true .
 --
 eq m300 \in network(s) = false .
 --
 -- eq m300 = me3(intruder,p10,q10,c30) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 eq (expo(m221) = expo(c30)) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep720(m221,m222,m300) .
close



-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq c30 \in cipher3s(s) = true .
 --
 eq m300 \in network(s) = false .
 --
 -- eq m300 = me3(intruder,p10,q10,c30) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 eq expo(m221) = expo(c30) .
 eq (rand(hash(c30)) = rand(expo(c30))) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep720(m221,m222,m300) .
close



-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq c30 \in cipher3s(s) = true .
 --
 eq m300 \in network(s) = false .
 --
 -- eq m300 = me3(intruder,p10,q10,c30) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 eq expo(m221) = expo(c30) .
 eq rand(hash(c30)) = rand(expo(c30)) .
 eq creator(m221) = intruder .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep720(m221,m222,m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq c30 \in cipher3s(s) = true .
 --
 eq m300 \in network(s) = false .
 --
 -- eq m300 = me3(intruder,p10,q10,c30) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 eq expo(m221) = expo(c30) .
 eq rand(hash(c30)) = rand(expo(c30)) .
 eq (creator(m221) = intruder) = false .
 eq expo(hash(c30)) = expo(c30) .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep720(m221,m222,m300) .
close



-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq c30 \in cipher3s(s) = true .
 --
 eq m300 \in network(s) = false .
 --
 -- eq m300 = me3(intruder,p10,q10,c30) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m221 \in network(s) = true .
 eq expo(m222) \in expos(s) = true .
 eq expo(m221) = expo(c30) .
 eq rand(hash(c30)) = rand(expo(c30)) .
 eq (creator(m221) = intruder) = false .
 eq (expo(hash(c30)) = expo(c30)) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red inv610(s,m221,c30) implies istep720(m221,m222,m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq c30 \in cipher3s(s) = true .
 --
 eq m300 \in network(s) = true .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep720(m221,m222,m300) .
close




-- fkm32
-- c-fkm32 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep720(m221,m222,m300) .
close



-- fkm32
-- c-fkm32 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq m300 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep720(m221,m222,m300) .
close


-- fkm32
-- c-fkm32 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq m300 \in network(s) = false .
 eq (m300 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep720(m221,m222,m300) .
close


-- fkm32
-- c-fkm32 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 -- case 1
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = false .
 -- eq (m300 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = r10 .
 eq expo(hash(cipher3(m300))) = e10 .
 eq expo(cipher3(m300)) = e20 .
 eq dpar(cipher3(m300)) = d10 .
 --
 eq m221 \in network(s) =  true .
 eq rand(expo(m221)) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv160(s,m221) implies istep720(m221,m222,m300) .
close



-- fkm32
-- c-fkm32 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 -- case 1
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = false .
 -- eq (m300 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = r10 .
 eq expo(hash(cipher3(m300))) = e10 .
 eq expo(cipher3(m300)) = e20 .
 eq dpar(cipher3(m300)) = d10 .
 --
 eq m221 \in network(s) =  true .
 eq (rand(expo(m221)) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep720(m221,m222,m300) .
close



-- fkm32
-- c-fkm32 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 -- case 1 & case 2
 --
 eq m300 \in network(s) = false .
 -- eq (m300 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = r10 .
 eq expo(hash(cipher3(m300))) = e10 .
 eq expo(cipher3(m300)) = e20 .
 eq dpar(cipher3(m300)) = d10 .
 --
 eq m221 \in network(s) =  false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep720(m221,m222,m300) .
close


-- fkm32
-- c-fkm32 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 -- case 2
 eq r10 \in randsi(s) = true .
 --
 eq m300 \in network(s) = false .
 -- eq (m300 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = r10 .
 eq expo(hash(cipher3(m300))) = e10 .
 eq expo(cipher3(m300)) = e20 .
 eq dpar(cipher3(m300)) = d10 .
 --
 eq m221 \in network(s) =  true .
 eq creator(m221) = intruder .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep720(m221,m222,m300) .
close



-- fkm32
-- c-fkm32 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 -- case 2
 eq r10 \in randsi(s) = true .
 --
 eq m300 \in network(s) = false .
 -- eq (m300 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = r10 .
 eq expo(hash(cipher3(m300))) = e10 .
 eq expo(cipher3(m300)) = e20 .
 eq dpar(cipher3(m300)) = d10 .
 --
 eq m221 \in network(s) =  true .
 eq (creator(m221) = intruder) = false .
 eq (rand(expo(m221)) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep720(m221,m222,m300) .
close


-- fkm32
-- c-fkm32 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 -- case 2
 eq r10 \in randsi(s) = true .
 --
 eq m300 \in network(s) = false .
 -- eq (m300 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq rand(hash(cipher3(m300))) = r10 .
 eq expo(hash(cipher3(m300))) = e10 .
 eq expo(cipher3(m300)) = e20 .
 eq dpar(cipher3(m300)) = d10 .
 --
 eq m221 \in network(s) =  true .
 eq (creator(m221) = intruder) = false .
 eq rand(expo(m221)) = r10 . 
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) . 
 red inv110(s,m221) and inv320(s,m221,r10) implies istep720(m221,m222,m300) .
close
