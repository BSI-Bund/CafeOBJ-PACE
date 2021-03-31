
-- sdm1
-- c-sdm1 is false
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 -- 143 secs
 red istep800(m100,m221,m222,m300) .
close


-- sdm1
-- c-sdm1 is false
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm1
-- c-sdm1 is false
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is false
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = false .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is false
-- f
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq m300 \in network(s) = false .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close



-- sdm1
-- c-sdm1 is true
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 -- 145 secs
 red istep800(m100,m221,m222,m300) .
close


-- sdm1
-- c-sdm1 is true
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is true
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is true
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is true
-- f
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq m300 \in network(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

--
-- sdm2
-- 
--

-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- 139 secs
 red istep800(m100,m221,m222,m300) .
close




-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m300 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- 291 secs
 red istep800(m100,m221,m222,m300) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq (m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 -- m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))
 eq creator(m222) = p10 .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m222))) = dpar(cipher1(m10)) .
 --
 eq (rand(hash(cipher3(m300))) = r10) = false .
 eq (rand(expo(hash(cipher3(m300)))) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 -- m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))
 eq creator(m222) = p10 .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m222))) = dpar(cipher1(m10)) .
 --
 eq (rand(hash(cipher3(m300))) = r10) = false .
 eq rand(expo(hash(cipher3(m300)))) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- 10 secs
 red inv510(s,m300) implies istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 -- m222 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))
 eq creator(m222) = p10 .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(expo(m222)) = r10 .
 eq rand(point(expo(m222))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m222))) = dpar(cipher1(m10)) .
 --
 eq rand(hash(cipher3(m300))) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- 86 secs
 red inv470(s,m300) implies istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 --
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 --
 -- m221 = me2(p10,p10,q10,expo(r10,maptoppoint(rand(cipher1(m10)),dpar(cipher1(m10))))))
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq (rand(hash(cipher3(m300))) = r10) = false .
 eq (rand(expo(hash(cipher3(m300)))) = r10) = false . 
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 --
 -- m221 = me2(p10,p10,q10,expo(r10,maptoppoint(rand(cipher1(m10)),dpar(cipher1(m10))))))
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq (rand(hash(cipher3(m300))) = r10) = false .
 eq rand(expo(hash(cipher3(m300)))) = r10 . 
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- 6 secs
 red inv510(s,m300) implies istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 --
 -- m221 = me2(p10,p10,q10,expo(r10,maptoppoint(rand(cipher1(m10)),dpar(cipher1(m10))))))
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq rand(hash(cipher3(m300))) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- 43 secs
 red inv470(s,m300) implies istep800(m100,m221,m222,m300) .
close



-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 --
 eq (m221 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 --
 -- m221 = me2(p10,p10,q10,expo(r10,maptoppoint(rand(cipher1(m10)),dpar(cipher1(m10))))))
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq (rand(hash(cipher3(m300))) = r10) = false .
 eq (rand(expo(hash(cipher3(m300)))) = r10) = false . 
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 --
 -- m221 = me2(p10,p10,q10,expo(r10,maptoppoint(rand(cipher1(m10)),dpar(cipher1(m10))))))
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq (rand(hash(cipher3(m300))) = r10) = false .
 eq rand(expo(hash(cipher3(m300)))) = r10 . 
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- 166 seconds
 red inv510(s,m300) implies istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 --
 -- m221 = me2(p10,p10,q10,expo(r10,maptoppoint(rand(cipher1(m10)),dpar(cipher1(m10))))))
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq rand(hash(cipher3(m300))) = r10 .
 --
 eq (expo(hash(cipher3(m300))) = expo(m222)) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- 177 seconds
 red inv470(s,m300) implies istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq m300 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 --
 -- m221 = me2(p10,p10,q10,expo(r10,maptoppoint(rand(cipher1(m10)),dpar(cipher1(m10))))))
 eq creator(m221) = p10 .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq rand(expo(m221)) = r10 .
 eq rand(point(expo(m221))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m221))) = dpar(cipher1(m10)) .
 --
 eq rand(hash(cipher3(m300))) = r10 .
 --
 eq expo(hash(cipher3(m300))) = expo(m222) .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- 23 seconds
 red inv470(s,m300) implies istep800(m100,m221,m222,m300) .
close



--
-- sdm3
-- 
--

-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 -- 156 secs
 red istep800(m100,m221,m222,m30) .
close

-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close

-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close

-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .

 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close



-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq m100 \in network(s) = false .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close



-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = true .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 -- 290 secs
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = true .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 -- 300 secs
 red istep800(m100,m221,m222,m30) .
close

-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = true .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = true .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close

-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = false .
-- eq m221 \in network(s) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 -- implied by above condition:
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = false .
-- eq m221 \in network(s) = true .
-- eq m222 \in network(s) = false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 -- implied by above: 
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- c-sdm3 is true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 eq (m30 = me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10))))) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- c-sdm3 is true
-- m30 is generated here
-- tfff
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq (m221 = m2001) = false . 
 eq (rand(point(expo(m222))) = rand(point(expo(m221)))) = false .
 eq (dpar(point(expo(m2001))) = dpar(point(expo(m222)))) = false .
 -- eq rand(point(expo(m221))) = rand(point(expo(m2001))) .

 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close

--
-- tfftt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq (m221 = m2001) = false . 
 eq (rand(point(expo(m222))) = rand(point(expo(m221)))) = false .
 eq dpar(point(expo(m2001))) = dpar(point(expo(m222))) .
 eq rand(point(expo(m221))) = rand(point(expo(m2001))) .

 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 -- 7 secs
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- m3 generated here
-- tfftf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq (m221 = m2001) = false . 
 eq (rand(point(expo(m222))) = rand(point(expo(m221)))) = false .
 eq dpar(point(expo(m2001))) = dpar(point(expo(m222))) .
 eq (rand(point(expo(m221))) = rand(point(expo(m2001)))) = false .

 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- m3 generated here
-- tftt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq (m221 = m2001) = false . 
 eq rand(point(expo(m222))) = rand(point(expo(m221))) .
 eq dpar(point(expo(m2001))) = dpar(point(expo(m222))) .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 -- 7 secs
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- m3 generated here
-- tftf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq (m221 = m2001) = false . 
 eq rand(point(expo(m222))) = rand(point(expo(m221))) .
 eq (dpar(point(expo(m2001))) = dpar(point(expo(m222)))) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- m3 generated here
-- tt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq m221 = m2001 . 
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 -- 4 secs
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- m3 generated here
-- f
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close

--
-- fkm11
--

-- fkm11
-- c-fkm11 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 -- 
 eq s' = fkm11(s,p10,q10,c10) .
 -- 141 secs
 red istep800(m100,m221,m222,m30) .
close

-- fkm11
-- c-fkm11 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 -- 
 eq s' = fkm11(s,p10,q10,c10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 -- 
 eq s' = fkm11(s,p10,q10,c10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm11
-- c-fkm11 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 -- 
 eq s' = fkm11(s,p10,q10,c10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm11
-- c-fkm11 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq m100 \in network(s) = false .
 -- 
 eq s' = fkm11(s,p10,q10,c10) .
 red istep800(m100,m221,m222,m30) .
close



-- fkm11
-- c-fkm11 true
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = true . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq s' = fkm11(s,p10,q10,c10) .
 -- 
 -- about 150 secs
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,c10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = true . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 eq s' = fkm11(s,p10,q10,c10) .
 -- 
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = true . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq s' = fkm11(s,p10,q10,c10) .
 -- 
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = true . 
 eq m221 \in network(s) = false .
 eq s' = fkm11(s,p10,q10,c10) .
 -- 
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- fttt
-- m100 is not gen. here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq (me1(intruder,p10,q10,c10) = m100) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm11
-- c-fkm11 true
-- fttt
-- m100 is gen. here
--  eq creator(m221) = intruder .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 -- eq (me1(intruder,p10,q10,c10) = m100) = true
 eq creator(m100) = intruder .
 eq sender(m100) = p10 .
 eq receiver(m100) = q10 .
 eq rand(cipher1(m100)) = rand(c10) .
 eq dpar(cipher1(m100)) = dpar(c10) .
 --
 eq creator(m221) = intruder .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- fttt
-- m100 is gen. here
--  eq creator(m221) = intruder = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,c10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 -- eq (me1(intruder,p10,q10,cipher1(m10)) = m100) = true
 eq creator(m100) = intruder .
 eq sender(m100) = p10 .
 eq receiver(m100) = q10 .
 eq rand(cipher1(m100)) = rand(c10) .
 eq dpar(c10) = dpar(cipher1(m100)) .
 --
 eq (creator(m221) = intruder) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- fttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm11
-- c-fkm11 true
-- ftf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- ff
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq c10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep800(m100,m221,m222,m30) .
close

--
--  fkm12
--
--


-- fkm12
-- c-fkm12 false
-- f
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm12
-- c-fkm12 false
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm12
-- c-fkm12 false
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm12
-- c-fkm12 false
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 false
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 -- 144 seconds
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- ff
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- ftf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- fttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- fttt
-- m100 not generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 eq (me1(intruder,p10,q10,enc(r10,d10)) = m100) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- fttt
-- m100 generated here
-- creator m221 = intruder
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 -- eq (me1(intruder,p10,q10,enc(r10,d10)) = m100) = true .
 eq creator(m100) = intruder .
 eq sender(m100) = p10 .
 eq receiver(m100) = q10 .
 eq rand(cipher1(m100)) = r10 .
 eq dpar(cipher1(m100)) = d10 . 
 --
 eq creator(m221) = intruder .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- fttt
-- m100 generated here
-- creator m221 = intruder = false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 -- eq (me1(intruder,p10,q10,enc(r10,d10)) = m100) = true .
 eq creator(m100) = intruder .
 eq sender(m100) = p10 .
 eq receiver(m100) = q10 .
 eq rand(cipher1(m100)) = r10 .
 eq dpar(cipher1(m100)) = d10 . 
 --
 eq (creator(m221) = intruder) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close



-- fkm12
-- c-fkm12 true
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 -- 145 secs
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm21
--
--

-- fkm21
-- c-fkm21 false
-- f
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 false
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 false
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 false
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 false
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 -- 141 secs
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 true
-- f
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 true
-- tf
-- creator m221 = intruder = false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq (creator(m221) = intruder) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm21
-- c-fkm21 true
-- tf
-- creator m221 = intruder 
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq creator(m221) = intruder .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 true
-- ttff
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm21
-- c-fkm21 true
-- ttft
-- m222 not generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
 eq (me2(intruder,p10,q10,e20) = m222) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 true
-- ttft
-- m222 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
 -- eq (me2(intruder,p10,q10,e20) = m222) = true
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = e20 .
 --
 -- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case1
 eq rand(hash(cipher3(m30))) = rand(expo(m221)) .
 eq expo(hash(cipher3(m30))) = expo(m222) .
 --
 eq (creator(m221) = creator(m30)) = false .
 eq (creator(m221) = intruder) = false .
 eq rand(expo(cipher3(m30))) = rand(expo(m221)) .
 eq rand(expo(m221)) = rand(expo(m222)) .

 eq s' = fkm21(s,p10,q10,e20) .
 red inv620(s,m221,expo(m222)) implies istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 true
-- ttft
-- m222 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
 -- eq (me2(intruder,p10,q10,e20) = m222) = true
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(e20) = rand(expo(m222)) .
 eq dpar(point(e20)) = dpar(point(expo(m222))) .
 eq rand(point(e20)) = rand(point(expo(m222))) .
 --
 -- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case1
 eq rand(hash(cipher3(m30))) = rand(expo(m221)) .
 eq expo(hash(cipher3(m30))) = expo(m222) .
 --
 eq (creator(m221) = creator(m30)) = false .
 eq (creator(m221) = intruder) = false .
 eq rand(expo(cipher3(m30))) = rand(expo(m221)) .
 eq (rand(expo(m222)) = rand(expo(m221))) = false .

 eq s' = fkm21(s,p10,q10,e20) .
 red   inv210(s,m30)
   and inv740(s,m221,m30) 
   and inv130(s,m30) implies istep800(m100,m221,m222,m30) .
close



-- fkm21
-- c-fkm21 true
-- ttft
-- m222 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
 -- eq (me2(intruder,p10,q10,e20) = m222) = true
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(e20) = rand(expo(m222)) .
 eq dpar(point(e20)) = dpar(point(expo(m222))) .
 eq rand(point(e20)) = rand(point(expo(m222))) .
 --
 -- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case1
 eq rand(hash(cipher3(m30))) = rand(expo(m221)) .
 eq expo(hash(cipher3(m30))) = expo(m222) .
 --
 eq (creator(m221) = creator(m30)) = false .
 eq (creator(m221) = intruder) = false .
 eq (rand(expo(cipher3(m30))) = rand(expo(m221))) = false .

 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 true
-- ttft
-- m222 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
 -- eq (me2(intruder,p10,q10,e20) = m222) = true
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(e20) = rand(expo(m222)) .
 eq dpar(point(e20)) = dpar(point(expo(m222))) .
 eq rand(point(e20)) = rand(point(expo(m222))) .
 --
 -- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case1
 eq rand(hash(cipher3(m30))) = rand(expo(m221)) .
 eq expo(hash(cipher3(m30))) = expo(m222) .
 --
 eq (creator(m221) = creator(m30)) = false .
 eq creator(m221) = intruder .

 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 true
-- ttft
-- m222 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
 -- eq (me2(intruder,p10,q10,e20) = m222) = true
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(e20) = rand(expo(m222)) .
 eq dpar(point(e20)) = dpar(point(expo(m222))) .
 eq rand(point(e20)) = rand(point(expo(m222))) .
 --
 -- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case1
 eq rand(hash(cipher3(m30))) = rand(expo(m221)) .
 eq expo(hash(cipher3(m30))) = expo(m222) .
 --
 eq creator(m221) = creator(m30) .

 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


--
-- case 2 of hash equal
--


-- fkm21
-- c-fkm21 true
-- ttft
-- m222 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
 -- eq (me2(intruder,p10,q10,e2)) = m222) = true
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(e20) = rand(expo(m222)) .
 eq dpar(point(e20)) = dpar(point(expo(m222))) .
 eq rand(point(e20)) = rand(point(expo(m222))) .
 --
 -- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case2
 eq rand(hash(cipher3(m30))) = rand(expo(m222)) .
 eq rand(expo(hash(cipher3(m30)))) = rand(expo(m221)) .
 eq rand(point(expo(hash(cipher3(m30))))) = rand(point(expo(m222))) .
 eq dpar(point(expo(hash(cipher3(m30))))) = dpar(point(expo(m222))) .
 --
 eq (creator(m221) = creator(m30)) = false .
 eq (creator(m221) = intruder) = false .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 --
 red inv700(s,m221,m30) implies istep800(m100,m221,m222,m30) .
close



-- fkm21
-- c-fkm21 true
-- ttft
-- m222 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
 -- eq (me2(intruder,p10,q10,e2)) = m222) = true
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(e20) = rand(expo(m222)) .
 eq dpar(point(e20)) = dpar(point(expo(m222))) .
 eq rand(point(e20)) = rand(point(expo(m222))) .
 --
 -- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case2
 eq rand(hash(cipher3(m30))) = rand(expo(m222)) .
 eq rand(expo(hash(cipher3(m30)))) = rand(expo(m221)) .
 eq rand(point(expo(hash(cipher3(m30))))) = rand(point(expo(m222))) .
 eq dpar(point(expo(hash(cipher3(m30))))) = dpar(point(expo(m222))) .
 --
 eq (creator(m221) = creator(m30)) = false .
 eq creator(m221) = intruder .
 --
 eq s' = fkm21(s,p10,q10,e20) .
 --
 red istep800(m100,m221,m222,m30) .
close




-- fkm21
-- c-fkm21 true
-- ttft
-- m222 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(m20)) = m222) = true
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(e20) = rand(expo(m222)) .
 eq dpar(point(e20)) = dpar(point(expo(m222))) .
 eq rand(point(e20)) = rand(point(expo(m222))) .
 --
 -- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case2
 eq rand(hash(cipher3(m30))) = rand(expo(m222)) .
 eq rand(expo(hash(cipher3(m30)))) = rand(expo(m221)) .
 eq rand(point(expo(hash(cipher3(m30))))) = rand(point(expo(m222))) .
 eq dpar(point(expo(hash(cipher3(m30))))) = dpar(point(expo(m222))) .
 --
 eq creator(m221) = creator(m30) . 
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm21
-- c-fkm21 true
-- ttft
-- m222 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op e20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e20) = true .
 eq e20 \in expos(s) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(m20)) = m222) = true
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq rand(e20) = rand(expo(m222)) .
 eq dpar(point(e20)) = dpar(point(expo(m222))) .
 eq rand(point(e20)) = rand(point(expo(m222))) .
 --
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = false .
 -- case false
 --
 eq s' = fkm21(s,p10,q10,e20) .
 red istep800(m100,m221,m222,m30) .
close
