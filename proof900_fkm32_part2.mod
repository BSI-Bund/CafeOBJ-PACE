open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 --
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close

--
-- case 2
--
-- m3 \in network
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = false .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq m3 \in network(s) = true .
 eq rand(hash(cipher3(m3))) = r10 .
 --
 eq sender(m1) = p . 
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 -- 7 secs
 red inv470(s,m3) implies istep900(m1,m21,m22,m3,p,q) .
close



--
-- case 2
--
-- m3 \in network
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = false .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq m3 \in network(s) = true .
 eq rand(hash(cipher3(m3))) = r10 .
 --
 eq (sender(m1) = p) = false . 
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 -- 7 secs
 red inv470(s,m3) implies istep900(m1,m21,m22,m3,p,q) .
close



--
-- case 2
--
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 --
 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = false .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq m3 \in network(s) = true .
 eq (rand(hash(cipher3(m3))) = r10) = false .
 eq (rand(expo(hash(cipher3(m3)))) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- case 2
--
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = false .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq m3 \in network(s) = true .
 eq (rand(hash(cipher3(m3))) = r10) = false .
 eq rand(expo(hash(cipher3(m3)))) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv510(s,m3) implies istep900(m1,m21,m22,m3,p,q) .
close



--
-- case 2
--
-- m3 \in network = false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = false .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq m3 \in network(s) = false .
 --
 eq rand(hash(cipher3(m3))) = r10 .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 eq (rand(expo(m22)) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- case 2
--
-- m3 \in network = false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = false .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq m3 \in network(s) = false .
 --
 eq rand(hash(cipher3(m3))) = r10 .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 eq rand(expo(m22)) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv160(s,m22) implies istep900(m1,m21,m22,m3,p,q) .
close



--
-- case 2
--
-- m3 \in network = false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = false .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq m3 \in network(s) = false .
 --
 eq rand(hash(cipher3(m3))) = r10 .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(expo(cipher3(m3))) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv160(s,m21) implies istep900(m1,m21,m22,m3,p,q) .
close


--
-- case 2
--
-- m3 \in network = false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = false .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq m3 \in network(s) = false .
 --
 eq rand(hash(cipher3(m3))) = r10 .
 eq rand(expo(cipher3(m3))) = rand(hash(cipher3(m3))) .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv160(s,m21) implies istep900(m1,m21,m22,m3,p,q) .
close


--
-- case 2
--
-- m3 \in network = false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = false .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq m3 \in network(s) = false .
 --
 eq (rand(hash(cipher3(m3))) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- case 1
--

open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = false .
 eq m3 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = false .
 --
 eq m3 \in network(s) = false .
 eq (m3 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = false .
 --
 eq m3 \in network(s) = false .
 -- eq (m3 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = true .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = r10 .
 eq expo(hash(cipher3(m3))) = e10 .
 eq expo(cipher3(m3)) = e20 .
 eq dpar(cipher3(m3)) = d10 .
 --
 eq (r10 = rand(e20)) = false .
 eq rand(point(e10)) = rand(point(expo(m22))) .
 eq rand(e20) = rand(e10) .
 eq (rand(e10) = rand(expo(m22))) = false .
 eq rand(expo(m22)) = r10 .
 eq (creator(m22) = intruder) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv110(s,m22) and inv320(s,m22,r10) implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = false .
 --
 eq m3 \in network(s) = false .
 -- eq (m3 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = true .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = r10 .
 eq expo(hash(cipher3(m3))) = e10 .
 eq expo(cipher3(m3)) = e20 .
 eq dpar(cipher3(m3)) = d10 .
 --
 eq (r10 = rand(e20)) = false .
 eq rand(point(e10)) = rand(point(expo(m22))) .
 eq rand(e20) = rand(e10) .
 eq (rand(e10) = rand(expo(m22))) = false .
 eq rand(expo(m22)) = r10 .
 eq creator(m22) = intruder .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv600(s,m21,e10) and inv710(s,m21,m22) implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = false .
 --
 eq m3 \in network(s) = false .
 -- eq (m3 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = true .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = r10 .
 eq expo(hash(cipher3(m3))) = e10 .
 eq expo(cipher3(m3)) = e20 .
 eq dpar(cipher3(m3)) = d10 .
 --
 eq (r10 = rand(e20)) = false .
 eq rand(point(e10)) = rand(point(expo(m22))) .
 eq rand(e20) = rand(e10) .
 eq (rand(e10) = rand(expo(m22))) = false .
 eq (rand(expo(m22)) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = false .
 --
 eq m3 \in network(s) = false .
 -- eq (m3 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = true .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = r10 .
 eq expo(hash(cipher3(m3))) = e10 .
 eq expo(cipher3(m3)) = e20 .
 eq dpar(cipher3(m3)) = d10 .
 --
 eq (r10 = rand(e20)) = false .
 eq rand(point(e10)) = rand(point(expo(m22))) .
 eq rand(e20) = rand(e10) .
 eq rand(e10) = rand(expo(m22)) .
 eq (r10 = rand(expo(m22))) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = false .
 --
 eq m3 \in network(s) = false .
 -- eq (m3 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = true .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = r10 .
 eq expo(hash(cipher3(m3))) = e10 .
 eq expo(cipher3(m3)) = e20 .
 eq dpar(cipher3(m3)) = d10 .
 --
 eq (r10 = rand(e20)) = false .
 eq rand(point(e10)) = rand(point(expo(m22))) .
 eq rand(e20) = rand(e10) .
 eq rand(e10) = rand(expo(m22)) .
 eq rand(expo(m22)) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,r10) implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = false .
 --
 eq m3 \in network(s) = false .
 -- eq (m3 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = true .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = r10 .
 eq expo(hash(cipher3(m3))) = e10 .
 eq expo(cipher3(m3)) = e20 .
 eq dpar(cipher3(m3)) = d10 .
 --
 eq (r10 = rand(e20)) = false .
 eq rand(point(e10)) = rand(point(expo(m22))) .
 eq (rand(e20) = rand(e10)) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = false .
 --
 eq m3 \in network(s) = false .
 -- eq (m3 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = true .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = r10 .
 eq expo(hash(cipher3(m3))) = e10 .
 eq expo(cipher3(m3)) = e20 .
 eq dpar(cipher3(m3)) = d10 .
 --
 eq (r10 = rand(e20)) = false .
 eq (rand(point(e10)) = rand(point(expo(m22)))) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = false .
 --
 eq m3 \in network(s) = false .
 -- eq (m3 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = true .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = r10 .
 eq expo(hash(cipher3(m3))) = e10 .
 eq expo(cipher3(m3)) = e20 .
 eq dpar(cipher3(m3)) = d10 .
 --
 eq rand(e20) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,r10) implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 eq (rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3)))) = false .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m221) = expo(cipher3(m3)) by assumption
 eq (rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(cipher3(m3))) .
 --
 eq m3 \in network(s) = false .
 eq rand(expo(cipher3(m3))) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,r10) implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m221) = expo(cipher3(m3)) by assumption
 eq (rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(cipher3(m3))) .
 --
 eq m3 \in network(s) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,r10) implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m221) = expo(cipher3(m3)) by assumption
 eq (rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(cipher3(m3))) .
 --
 eq m3 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv210(s,m3) and inv740(s,m21,m3) implies istep900(m1,m21,m22,m3,p,q) .
close




open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m221) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq (rand(e10) = rand(expo(cipher3(m3)))) = false .
 eq (r10 = rand(expo(cipher3(m3)))) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv220(s,hash(cipher3(m3)),r10,e10) implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m221) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq (rand(e10) = rand(expo(cipher3(m3)))) = false .
 eq rand(expo(cipher3(m3))) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,r10) implies istep900(m1,m21,m22,m3,p,q) .
close



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(expo(cipher3(m3))) = rand(e10) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq (rand(hash(cipher3(m3))) = rand(expo(m22))) = false .
 eq (rand(hash(cipher3(m3))) = rand(e10)) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq (rand(hash(cipher3(m3))) = rand(expo(m22))) = false .
 eq rand(hash(cipher3(m3))) = rand(e10) .
 --
 eq m3 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv210(s,m3) and inv740(s,m21,m3) implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq (rand(hash(cipher3(m3))) = rand(expo(m22))) = false .
 eq rand(hash(cipher3(m3))) = rand(e10) .
 --
 eq m3 \in network(s) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq (rand(hash(cipher3(m3))) = rand(expo(m22))) = false .
 eq rand(hash(cipher3(m3))) = rand(e10) .
 --
 eq m3 \in network(s) = false .
 eq rand(expo(cipher3(m3))) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,r10) implies istep900(m1,m21,m22,m3,p,q) .
close



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq (creator(m22) = intruder) = false .
 --
 eq m3 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv210(s,m3) and inv740(s,m22,m3) implies istep900(m1,m21,m22,m3,p,q) .
close



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq (creator(m22) = intruder) = false .
 --
 eq m3 \in network(s) = false .
 eq (rand(expo(m22)) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 -- red inv34(s,m3) and inv2a(s,m22,m3) implies istep900(m1,m21,m22,m3,p,q) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq (creator(m22) = intruder) = false .
 --
 eq m3 \in network(s) = false .
 eq rand(expo(m22)) = r10 . 
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv110(s,m22) and inv320(s,m22,r10) implies istep900(m1,m21,m22,m3,p,q) .
close



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq creator(m22) = intruder .
 eq expo(cipher3(m3)) = expo(m22) .
 --
 eq m3 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv210(s,m3) and inv740(s,m21,m3) implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq creator(m22) = intruder .
 eq expo(cipher3(m3)) = expo(m22) .
 --
 eq m3 \in network(s) = false .
 eq (rand(expo(m22)) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq creator(m22) = intruder .
 eq expo(cipher3(m3)) = expo(m22) .
 --
 eq m3 \in network(s) = false .
 eq rand(expo(m22)) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,r10) implies istep900(m1,m21,m22,m3,p,q) .
close



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq creator(m22) = intruder .
 eq (expo(cipher3(m3)) = expo(m22)) = false .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(expo(m22))) .
 eq (rand(expo(m22)) = r10) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv220(s,hash(cipher3(m3)),r10,e10) implies istep900(m1,m21,m22,m3,p,q) .
close



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq creator(m22) = intruder .
 eq (expo(cipher3(m3)) = expo(m22)) = false .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(expo(m22))) .
 eq (rand(expo(m22)) = r10) = false .
 eq rand(expo(cipher3(m3))) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,r10) implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq creator(m22) = intruder .
 eq (expo(cipher3(m3)) = expo(m22)) = false .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(expo(m22))) .
 eq rand(expo(m22)) = r10 .
 --
 eq m3 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv210(s,m3) 
  and inv350(s,cipher3(m3)) 
  and inv600(s,m21,expo(hash(cipher3(m3)))) 
  and inv710(s,m21,m22) 
  implies istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq creator(m22) = intruder .
 eq (expo(cipher3(m3)) = expo(m22)) = false .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(expo(m22))) .
 eq rand(expo(m22)) = r10 .
 --
 eq m3 \in network(s) = false .
 eq rand(point(expo(m22))) = rand(point(e10)) .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv600(s,m21,e10) and inv710(s,m21,m22) implies istep900(m1,m21,m22,m3,p,q) .
close



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq creator(m22) = intruder .
 eq (expo(cipher3(m3)) = expo(m22)) = false .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(expo(m22))) .
 eq rand(expo(m22)) = r10 .
 --
 eq m3 \in network(s) = false .
 eq (rand(point(expo(m22))) = rand(point(e10))) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq creator(m3) = intruder .
 eq (hash(cipher3(m3)) = hash(r10,e10)) = true .
 -- note: we have expo(m21) = expo(cipher3(m3)) by assumption
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(e10) = rand(expo(cipher3(m3))) .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(expo(m22)) .
 eq creator(m22) = intruder .
 eq (expo(cipher3(m3)) = expo(m22)) = false .
 eq (rand(point(expo(hash(cipher3(m3))))) = rand(point(expo(m22)))) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close






-- r10 = expo(m22)
--
-- aus eq (r10 = rand(expo(m22))) = true .
-- und r10 \in randsi 
-- folgt rand(expo(m22)) \in randsi
-- daraus folgt (mit lemma) rand(point(expo(m22))) \in randsi
-- aber aus
-- eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
-- folgt rand(point(expo(m22))) = hash(rand(point(expo(m22)))) 
-- und aus (lemma) folgt mit
-- (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true
-- dass hash(cipher3(m3)) = hash(rand(expo(m22),expo(m21)))
-- also rand(point(expo(m21))) = rand(point(expo(m22)))
-- daher rand(point(expo(m21))) \in randsi(s)
-- Widerspruch

open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 eq (sender(m1) = p) = false .
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq (creator(m3) = intruder) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 eq rand(expo(m22)) = r10 .
 eq (p = intruder) = false .
 eq sender(m1) = p . 
 --
 -- für die folgende gleichheit wird lemma benötigt.
 -- eq rand(point(expo(m22))) = rand(point(expo(hash(cipher3(m3))))) .
 -- = inv30

 -- für die folgende gleichheit wird lemma benötigt.
 -- eq rand(point(expo(m22))) = rand(point(expo(m21))) .
 -- = inv40
 -- hierfür wird ein Lemma benötigt:
 -- = inv19
 -- eq expo(m22) \in expos(s) = true .
 -- 26secs mit not (q=p) in inv 40
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red        inv430(s,m21,rand(point(expo(cipher3(m3)))))
     and    inv190(s,m22)
     and    inv440(s,expo(m22),rand(point(expo(cipher3(m3)))))
     and    inv200(s,m21,m22,m3)
     and    inv800(s,m1,m21,m22,m3)
   implies  istep900(m1,m21,m22,m3,p,q) .
close
-- note inv39 instead of inv40 works



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq (creator(m3) = intruder) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 eq rand(expo(m22)) = r10 .
 eq (p = intruder) = false .
 eq (sender(m1) = p) = false .
 --
 -- für die folgende gleichheit wird lemma benötigt.
 -- eq rand(point(expo(m22))) = rand(point(expo(hash(cipher3(m3))))) .
 -- = inv30

 -- für die folgende gleichheit wird lemma benötigt.
 -- eq rand(point(expo(m22))) = rand(point(expo(m21))) .
 -- = inv40
 -- hierfür wird ein Lemma benötigt:
 -- = inv19
 -- eq expo(m22) \in expos(s) = true .
 -- 26secs mit not (q=p) in inv 40
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red        inv430(s,m21,rand(point(expo(cipher3(m3)))))
     and    inv190(s,m22)
     and    inv440(s,expo(m22),rand(point(expo(cipher3(m3)))))
     and    inv200(s,m21,m22,m3)
     and    inv800(s,m1,m21,m22,m3)
   implies  istep900(m1,m21,m22,m3,p,q) .
close
-- note inv39 instead of inv40 works



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true 
 -- by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq (creator(m3) = intruder) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 eq rand(expo(m22)) = r10 .
 eq p = intruder .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close




open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 -- eq c-fkm32( ... ) = true
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- by case 1 
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq (creator(m3) = intruder) = false .
 eq rand(expo(cipher3(m3))) = r10 .
 -- daraus folgt per definition: 
 -- r10 = rand(expo(m21))
 -- aber m21 ist von p gesendet; kein intruder
 -- also: r10 nicht in randsi

 -- eq (rand(expo(m22)) = r10) = false .
 eq sender(m1) = p . 
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,rand(expo(m21))) implies  istep900(m1,m21,m22,m3,p,q) .
close



open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 -- eq c-fkm32( ... ) = true
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- by case 1 
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq (creator(m3) = intruder) = false .
 eq rand(expo(cipher3(m3))) = r10 .
 -- daraus folgt per definition: 
 -- r10 = rand(expo(m21))
 -- aber m21 ist von p gesendet; kein intruder
 -- also: r10 nicht in randsi

 -- eq (rand(expo(m22)) = r10) = false .
 eq (sender(m1) = p) = false . 
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,rand(expo(m21))) implies  istep900(m1,m21,m22,m3,p,q) .
close




open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- c-fkm32 is true
 -- by case1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq (creator(m3) = intruder) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 eq (rand(expo(m22)) = r10) = false .
--
 eq (r10 = rand(expo(hash(cipher3(m3))))) = false .
 eq (rand(hash(cipher3(m3))) = r10) = false .

 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close

open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- c-fkm32 is true by case1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq (creator(m3) = intruder) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 eq (rand(expo(m22)) = r10) = false .
 --
 eq (r10 = rand(expo(hash(cipher3(m3))))) = false .
 eq rand(hash(cipher3(m3))) = r10 .

 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar . 
 --
 -- Assumptions
 -- we need to split cases wrt these assumptions
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 -- eq sender(m1) = p . 
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --

 -- c-fkm32 is true by case 1
 eq r10 \in randsi(s) = true .
 eq e10 \in expos(s) = true .
 eq e20 \in expos(s) = true .
 --
 eq (creator(m3) = intruder) = false .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 eq (rand(expo(m22)) = r10) = false .
--
 eq rand(expo(hash(cipher3(m3)))) = r10 .
-- dann muss r10 entweder
--   rand(expo(m21)) sein (wenn key exchange seltsam)
--   widerspruch, weil rand(expo(m21)) geheim
-- oder r10 ist rand(expo(m22))
-- widerspruch zu oben.
 -- eq rand(expo(m21)) = rand(expo(hash(cipher3(m3)))) .
 -- eq rand(expo(m21)) \in randsi(s) = false .

 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv320(s,m21,rand(expo(m21))) implies  istep900(m1,m21,m22,m3,p,q) .
close
