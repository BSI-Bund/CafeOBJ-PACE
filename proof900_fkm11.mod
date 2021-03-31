

-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
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
 eq sender(m1) = p . 
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
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
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq (receiver(m22) = p) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq (sender(m22) = q) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq (receiver(m21) = q) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq (sender(m21) = p) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm11 is false
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = false . 
 --
 eq m21 \in network(s) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close

--
-- c-fkm11 true
--


-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
 eq m21 \in network(s) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq (sender(m21) = p) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq (receiver(m21) = q) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq (sender(m22) = q) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq sender(m22) = q .
 eq knowspi(p) = true .
 eq (receiver(m22) = p) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close




-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
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
 eq p = intruder .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
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
 eq q = p . 
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
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
 eq (expo(m21) = expo(cipher3(m3))) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
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
 -- nf below
 eq p = creator(m3) .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close




-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
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
 eq (dpar(cipher1(m1)) = dpar(point(expo(cipher3(m3))))) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close




-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
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
 -- nf below
 eq (rand(cipher1(m1)) = rand(point(expo(cipher3(m3))))) = false  .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
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
 -- nf below
 eq (dpar(point(expo(cipher3(m3)))) = dpar(cipher3(m3))) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
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
 -- nf below
 eq (hash(cipher3(m3)) = hash(rand(expo(cipher3(m3))),expo(m22))) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
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
 eq (m1 = me1(intruder,p10,q10,c10)) = false .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- c-fkm11 is true
open ISTEP
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 --
 eq c-fkm11(s,p10,q10,c10) = true . 
 --
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
 eq m1 = me1(intruder,p10,q10,c10) .
 --
 eq s' = fkm11(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close

