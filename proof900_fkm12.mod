
--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq (receiver(m22) = p) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq (sender(m22) = q) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq (receiver(m21) = q) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq (sender(m21) = p) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 false
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 true
--
--
-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
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
 eq (m1 = me1(intruder,p10,q10,enc(r10,d10))) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm12 true
--
--
-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
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
 -- eq (m1 = me1(intruder,p10,q10,enc(r10,d10))) = true .
 eq creator(m1) = intruder .
 eq sender(m1) = p10 .
 eq receiver(m1) = q10 .
 eq rand(cipher1(m1)) = r10 .
 eq dpar(cipher1(m1)) = d10 .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(cipher3(m3))),expo(m22))) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
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
 -- used nf below
 eq (dpar(point(expo(cipher3(m3)))) = dpar(cipher3(m3))) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
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
 -- used nf below
 eq (rand(cipher1(m1)) = rand(point(expo(cipher3(m3))))) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
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
 -- used nf below
 eq (dpar(cipher1(m1)) = dpar(point(expo(cipher3(m3))))) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
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
 -- used nf below
 eq p = creator(m3) .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
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
 eq (expo(m21) = expo(cipher3(m3))) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close




-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 eq (p = intruder) = false .
 eq q = p .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq receiver(m22) = p .
 eq p = intruder .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq (receiver(m22) = p) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq (sender(m22) = q) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq (receiver(m21) = q) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq m3 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close




-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm12 true
open ISTEP
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 --
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m21 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close
