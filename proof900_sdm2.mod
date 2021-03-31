
-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
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
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 

-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
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
 eq (receiver(m22) = p) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m1 \in network(s) = true .
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
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq receiver(m21) = q .
 eq (sender(m22) = q) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq (receiver(m21) = q) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq (sender(m21) = p) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is false
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is false 
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m1 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 

--
-- c-sdm2 true
--

-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m1 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p .
 eq (sender(m21) = p) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p .
 eq sender(m21) = p .
 eq (receiver(m21) = q) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 

-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq p = intruder .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq (p = intruder) = false .
 eq q = p .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq (expo(m21) = expo(cipher3(m3))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 -- used nf of creator(m21) in next
 eq p = creator(m3) .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 -- use nf of expo(m21) in next one
 eq (dpar(cipher1(m1)) = dpar(point(expo(cipher3(m3))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq (rand(cipher1(m1)) = rand(point(expo(cipher3(m3))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 -- use nf of cipher1(m1) in next one
 eq (dpar(point(expo(cipher3(m3)))) = dpar(cipher3(m3))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 -- use nf of expo(m21) in next one
 eq (hash(cipher3(m3)) = hash(rand(expo(cipher3(m3))),expo(m22))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 



-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- 
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq knowspi(p10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 -- m22 not generated here
 eq (m22 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- 
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq knowspi(p10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 -- m22 generated here
 -- eq (m22 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq creator(m22) = p10 .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq rand(expo(m22)) = r10 .
 eq rand(point(expo(m22))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m22))) = dpar(cipher1(m10)) .
 --
 eq (rand(expo(hash(cipher3(m3)))) = r10) = false .
 eq (rand(hash(cipher3(m3))) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- 
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq knowspi(p10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 -- m22 generated here
 -- eq (m22 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq creator(m22) = p10 .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq rand(expo(m22)) = r10 .
 eq rand(point(expo(m22))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m22))) = dpar(cipher1(m10)) .
 --
 eq (rand(expo(hash(cipher3(m3)))) = r10) = false .
 eq rand(hash(cipher3(m3))) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv470(s,m3) implies istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- 
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq knowspi(p10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 -- m22 generated here
 -- eq (m22 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq creator(m22) = p10 .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq rand(expo(m22)) = r10 .
 eq rand(point(expo(m22))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m22))) = dpar(cipher1(m10)) .
 --
 eq rand(expo(hash(cipher3(m3)))) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv510(s,m3) implies istep900(m1,m21,m22,m3,p,q) .
close 



-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- 
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq knowspi(p10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = false .
 --
 -- m21 not generated here
 eq (m21 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- 
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq knowspi(p10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = false .
 --
 -- m21 generated here
 -- eq (m21 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq creator(m21) = p10 .
 eq sender(m21) = p10 .
 eq receiver(m21) = q10 .
 eq rand(expo(m21)) = r10 .
 eq rand(point(expo(m21))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m21))) = dpar(cipher1(m10)) .
 --
 eq m22 \in network(s) = true .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- 
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq knowspi(p10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = false .
 --
 -- m21 generated here
 -- eq (m21 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq creator(m21) = p10 .
 eq sender(m21) = p10 .
 eq receiver(m21) = q10 .
 eq rand(expo(m21)) = r10 .
 eq rand(point(expo(m21))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m21))) = dpar(cipher1(m10)) .
 --
 eq m22 \in network(s) = true .
 eq rand(expo(cipher3(m3))) = r10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv500(s,m3) implies istep900(m1,m21,m22,m3,p,q) .
close 



-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- 
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq knowspi(p10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = false .
 --
 -- m21 generated here
 -- eq (m21 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq creator(m21) = p10 .
 eq sender(m21) = p10 .
 eq receiver(m21) = q10 .
 eq rand(expo(m21)) = r10 .
 eq rand(point(expo(m21))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m21))) = dpar(cipher1(m10)) .
 --
 eq m22 \in network(s) = false .
 -- m22 not generated here
 eq (m22 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- 
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq knowspi(p10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = false .
 --
 -- m21 generated here
 -- eq (m21 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq creator(m21) = p10 .
 eq sender(m21) = p10 .
 eq receiver(m21) = q10 .
 eq rand(expo(m21)) = r10 .
 eq rand(point(expo(m21))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m21))) = dpar(cipher1(m10)) .
 --
 eq m22 \in network(s) = false .
 -- m22 generated here
 eq creator(m22) = p10 .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq rand(expo(m22)) = r10 .
 eq rand(point(expo(m22))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m22))) = dpar(cipher1(m10)) .
 --
 eq p = p10 .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm2(s,p10,q10,r10,m10) 
-- c-sdm2(s,p,q,r10,m10) is true
open ISTEP 
 op r10 : -> Random .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 -- c-sdm2(s,p10,q10,r10,m10) is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 -- 
 eq m10 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq knowspi(p10) = true .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = true .
 --
 eq m21 \in network(s) = false .
 --
 -- m21 generated here
 -- eq (m21 = me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10)))))) = true .
 eq creator(m21) = p10 .
 eq sender(m21) = p10 .
 eq receiver(m21) = q10 .
 eq rand(expo(m21)) = r10 .
 eq rand(point(expo(m21))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m21))) = dpar(cipher1(m10)) .
 --
 eq m22 \in network(s) = false .
 -- m22 generated here
 -- this means m22 is actually the same as m21
 -- but this is a contradiction since sender(m21) = p, sender(m22) = q and p != q
 eq creator(m22) = p10 .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq rand(expo(m22)) = r10 .
 eq rand(point(expo(m22))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m22))) = dpar(cipher1(m10)) .
 --
 eq (p = p10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 
