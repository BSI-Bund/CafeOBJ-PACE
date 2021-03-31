-- Base Case

open INV
 red inv900(init,m1,m21,m22,m3,p,q) .
close

-- Induction Step(s)

-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
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
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
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
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 

-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
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
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
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
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq (sender(m21) = p) = false .
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 

-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = false .
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is false
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq m1 \in network(s) = false .
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 



-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 eq m1 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq knowspi(p) = true .
 eq sender(m1) = p . 
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 

-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 eq m1 \in network(s) = true .
 --
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq knowspi(p) = true .
 eq (sender(m1) = p) = false . 
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 eq m1 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq knowspi(p) = false .
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 eq m1 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq (sender(m21) = p) = false .
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 eq m1 \in network(s) = true .
 --
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 eq m1 \in network(s) = true .
 --
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 eq m1 \in network(s) = true .
 --
 eq (sender(m3) = q) = false .
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 eq m1 \in network(s) = false .
 --
 eq (m1 = me1(p10,p10,q10,enc(r10,d10))) = false .
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 --
 eq m1 \in network(s) = false .
 -- eq (m1 = me1(p10,p10,q10,enc(r10,d10))) = true .
 eq creator(m1) = p10 .
 eq sender(m1) = p10 .
 eq receiver(m1) = q10 .
 eq rand(cipher1(m1)) = r10 .
 eq dpar(cipher1(m1)) = d10 .
 --
 eq m21 \in network(s) = true .
 eq sender(m3) = q .
 eq creator(m21) = p . 
 eq expo(m21) = expo(cipher3(m3)) .
 --
 eq rand(point(expo(cipher3(m3)))) = r10 . 
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red inv310(s,m21) implies istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 --
 eq m1 \in network(s) = false .
 -- eq (m1 = me1(p10,p10,q10,enc(r10,d10))) = true .
 eq creator(m1) = p10 .
 eq sender(m1) = p10 .
 eq receiver(m1) = q10 .
 eq rand(cipher1(m1)) = r10 .
 eq dpar(cipher1(m1)) = d10 .
 --
 eq m21 \in network(s) = true .
 eq sender(m3) = q .
 eq creator(m21) = p . 
 eq expo(m21) = expo(cipher3(m3)) .
 --
 eq (rand(point(expo(cipher3(m3)))) = r10) = false . 
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 --
 eq m1 \in network(s) = false .
 -- eq (m1 = me1(p10,p10,q10,enc(r10,d10))) = true .
 eq creator(m1) = p10 .
 eq sender(m1) = p10 .
 eq receiver(m1) = q10 .
 eq rand(cipher1(m1)) = r10 .
 eq dpar(cipher1(m1)) = d10 .
 --
 eq m21 \in network(s) = true .
 eq sender(m3) = q .
 eq creator(m21) = p . 
 eq (expo(m21) = expo(cipher3(m3))) = false .
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 --
 eq m1 \in network(s) = false .
 -- eq (m1 = me1(p10,p10,q10,enc(r10,d10))) = true .
 eq creator(m1) = p10 .
 eq sender(m1) = p10 .
 eq receiver(m1) = q10 .
 eq rand(cipher1(m1)) = r10 .
 eq dpar(cipher1(m1)) = d10 .
 --
 eq m21 \in network(s) = true .
 eq sender(m3) = q .
 eq (creator(m21) = p) = false . 
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 --
 eq m1 \in network(s) = false .
 -- eq (m1 = me1(p10,p10,q10,enc(r10,d10))) = true .
 eq creator(m1) = p10 .
 eq sender(m1) = p10 .
 eq receiver(m1) = q10 .
 eq rand(cipher1(m1)) = r10 .
 eq dpar(cipher1(m1)) = d10 .
 --
 eq m21 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- sdm1(s,p10,q10,r10,d10)
open ISTEP 
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- c-sdm1(s,p10,q10,r10,d10) is true
 eq r10 \in rands(s) = false .
 --
 --
 eq m1 \in network(s) = false .
 -- eq (m1 = me1(p10,p10,q10,enc(r10,d10))) = true .
 eq creator(m1) = p10 .
 eq sender(m1) = p10 .
 eq receiver(m1) = q10 .
 eq rand(cipher1(m1)) = r10 .
 eq dpar(cipher1(m1)) = d10 .
 --
 eq m21 \in network(s) = false .
 --
 -- successor state
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


