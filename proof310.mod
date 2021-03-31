-- I) Base case
open INV
  op m2 : -> Message2 .
  red inv310(init,m2) .
close

-- sdm1
-- c-sdm1 is true
-- m2 \in network(s)

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m2 : -> Message2 .
 eq m2 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep310(m2) .
close

-- sdm1
-- c-sdm1 is false
-- m2 \in network(s)

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m2 : -> Message2 .
 eq m2 \in network(s) = true .
 eq r10 \in rands(s) = true .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep310(m2) .
close

-- sdm1
-- c-sdm1 is false
-- m2 \in network(s) = false

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m2 : -> Message2 .
 eq m2 \in network(s) = false .
 eq r10 \in rands(s) = true .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep310(m2) .
close

-- sdm1
-- c-sdm1 is true
-- m2 \in network is false

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m2 : -> Message2 .
 eq m2 \in network(s) = false .
 eq r10 \in rands(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep310(m2) .
close

-- sdm2
-- c-sdm is false

open ISTEP 
 op m2 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep310(m2) .
close

-- sdm2
-- c-sdm2 is true
-- m2 \in network(s) = true
-- rand(point(expo(m2))) = r10

open ISTEP 
 op m2 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 -- c-sdm2 = true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 -- eq creator(m10) = p .
 -- eq sender(m10) = p .
 -- eq knowspi(p) = true .
 eq r10 \in rands(s) = false .
 --
 eq m2 \in network(s) = true .
 eq rand(point(expo(m2))) = r10 .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep310(m2) .
close

-- sdm2
-- c-sdm2 is true
-- m20 \in network(s) = true
-- eq (rand(point(expo(m20))) = r10) = false .
-- eq (me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m20) = false . 

open ISTEP 
 op m20 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random . 
 op nw10 : -> Network .
 -- eq m10 \in network(s) = true .
 -- eq m20 \in network(s) = false .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq network(s) = m10 m20 nw10 .
 -- eq creator(m10) = p .
 -- eq sender(m10) = p .
 -- eq knowspi(p) = true .
 eq r10 \in rands(s) = false .
 eq (rand(point(expo(m20))) = r10) = false .
 -- ab hier
 eq (me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m20) = false . 
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep310(m20) .
close


-- sdm2
-- c-sdm2 is true
-- m20 \in network(s) = true
-- eq (rand(point(expo(m20))) = r10) = false .
-- eq me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m20 . 

open ISTEP 
 op m20 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random . 
 op nw10 : -> Network .
 -- eq m10 \in network(s) = true .
 -- eq m20 \in network(s) = false .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq network(s) = m10 m20 nw10 .
 -- eq creator(m10) = p .
 -- eq sender(m10) = p .
 -- eq knowspi(p) = true .
 eq r10 \in rands(s) = false .
 eq (rand(point(expo(m20))) = r10) = false .
 -- ab hier
 eq me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m20 . 
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep310(m20) .
close


-- sdm2
-- c-sdm2 is true
-- m20 \in network(s) = false
-- eq (rand(point(expo(m20))) = r10) = false .
-- eq rand(point(expo(m20))) = rand(cipher1(m10)) 

open ISTEP 
 op m20 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random . 
 op nw10 : -> Network .
 -- eq m10 \in network(s) = true .
 -- eq m20 \in network(s) = false .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq network(s) = m10 nw10 .
 eq m20 \in nw10 = false .
 -- eq creator(m10) = p .
 -- eq sender(m10) = p .
 -- eq knowspi(p) = true .
 eq r10 \in rands(s) = false .
 eq (rand(point(expo(m20))) = r10) = false .
 eq rand(point(expo(m20))) = rand(cipher1(m10)) .
 -- für das folgende ein lemma: m1 \in nw(s) folgt rand cipher1 m10 in rands(s)   = inv4
 -- eq rand(cipher1(m10)) \in rands(s) = true .
 -- ab hier
 -- eq (me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m20) = true . 
 -- eq rand(point(expo(m20))) \in rands(s) = true .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv300(s,m10) implies istep310(m20) .
close


-- sdm2
-- c-sdm2 is true
-- m20 \in network(s) = false
-- eq (rand(point(expo(m20))) = r10) = false .
-- eq rand(point(expo(m20))) = rand(cipher1(m10)) = false

open ISTEP 
 op m20 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random . 
 op nw10 : -> Network .
 -- eq m10 \in network(s) = true .
 -- eq m20 \in network(s) = false .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq network(s) = m10 nw10 .
 eq m20 \in nw10 = false .
 -- eq creator(m10) = p .
 -- eq sender(m10) = p .
 -- eq knowspi(p) = true .
 eq r10 \in rands(s) = false .
 eq (rand(point(expo(m20))) = r10) = false .
 eq (rand(point(expo(m20))) = rand(cipher1(m10))) = false .
 -- für das folgende ein lemma: m1 \in nw(s) folgt rand cipher1 m10 in rands(s)   = inv4
 -- eq rand(cipher1(m10)) \in rands(s) = true .
 -- ab hier
 -- eq (me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m20) = true . 
 -- eq rand(point(expo(m20))) \in rands(s) = true .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv300(s,m10) implies istep310(m20) .
close


-- sdm2
-- c-sdm2 is true
-- m20 \in network(s) = false
-- eq (rand(point(expo(m20))) = r10

open ISTEP 
 op m20 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random . 
 op nw10 : -> Network .
 -- eq m10 \in network(s) = true .
 -- eq m20 \in network(s) = false .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq network(s) = m10 nw10 .
 eq (m20 \in nw10) = false .
 -- eq creator(m10) = p .
 -- eq sender(m10) = p .
 -- eq knowspi(p) = true .
 eq r10 \in rands(s) = false .
 eq rand(point(expo(m20))) = r10 .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep310(m20) .
close

-- sdm3
-- c-sdm3 = false 

open ISTEP 
 ops m20 m221 m222 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m221,m222) = false .
 eq s' = sdm3(s,p10,q10,m10,m221,m222) .
 red istep310(m20) .
close

-- sdm3
-- c-sdm3 = true

open ISTEP 
 ops m20 m221 m222 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m221,m222) = true .
 eq s' = sdm3(s,p10,q10,m10,m221,m222) .
 red istep310(m20) .
close

-- fkm11
-- c-fkm11 = false

open ISTEP 
 ops m20 : -> Message2 .
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep310(m20) .
close

-- fkm11
-- c-fkm11 = true

open ISTEP 
 ops m20 : -> Message2 .
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = true .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep310(m20) .
close

-- fkm12
-- c-fkm12 = false

open ISTEP 
 ops m20 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep310(m20) .
close

-- fkm12
-- c-fkm12 = true

open ISTEP 
 ops m20 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep310(m20) .
close

-- fkm21
-- c-fkm21 = false

open ISTEP 
 ops m20 : -> Message2 .
 op e10 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e10) = false .
 eq s' = fkm21(s,p10,q10,e10) .
 red istep310(m20) .
close

-- fkm21
-- c-fkm21 = true

open ISTEP 
 ops m20 : -> Message2 .
 op e10 : -> Expo . 
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e10) = true .
 eq s' = fkm21(s,p10,q10,e10) .
 red istep310(m20) .
close

-- fkm22
-- c-fkm22 = false

open ISTEP 
 ops m20 : -> Message2 .
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep310(m20) .
close

-- fkm22
-- c-fkm22 = true

open ISTEP 
 ops m20 : -> Message2 .
 ops p10 q10 : -> Principal .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep310(m20) .
close

-- fkm31
-- c-fkm31 = false

open ISTEP 
 ops m20 : -> Message2 .
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep310(m20) .
close

-- fkm31
-- c-fkm31 = true

open ISTEP 
 ops m20 : -> Message2 .
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep310(m20) .
close

-- fkm32
-- c-fkm32 = false 

open ISTEP 
 ops m20 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep310(m20) .
close

-- fkm32
-- c-fkm32 = true

open ISTEP 
 ops m20 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep310(m20) .
close
