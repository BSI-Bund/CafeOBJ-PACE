--
-- c-sdm3 false
--

-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
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
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
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
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
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
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
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
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq (sender(m21) = p) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
 --
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m11 m13 : -> Message2 .
 op m10 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m10,m11,m13) = false .
 --
 eq m1 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m11,m13) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-sdm3 true
--

-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq (sender(m21) = p) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 -- in order to avoid too much branching and thus time-outs
 eq m1 \in network(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq (receiver(m21) = q) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 -- in order to avoid too much branching and thus time-outs
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
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 eq knowspi(p) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 eq (receiver(m22) = p) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close




-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 eq p = intruder .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 eq q = p . 
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 eq (expo(m21) = expo(cipher3(m3))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 -- used nf for creator(m21) below
 eq p = creator(m3) .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 eq (dpar(cipher1(m1)) = dpar(point(expo(cipher3(m3))))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 -- used nf below
 eq (rand(cipher1(m1)) = rand(point(expo(cipher3(m3))))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 -- using nf of dpar(cipher1(m1)) here
 eq (dpar(point(expo(cipher3(m3)))) = dpar(cipher3(m3))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 -- using nf of expo(m21) in next one
 eq (hash(cipher3(m3)) = hash(rand(expo(cipher3(m3))),expo(m22))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
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
 -- m3 not generated here
 eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq p10 = creator(m202) .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq rand(expo(m202)) = rand(expo(m21)) .
 eq rand(expo(m201)) = rand(expo(m22)) .
 --
 eq m3 \in network(s) = true .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq p10 = creator(m202) .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq rand(expo(m202)) = rand(expo(m21)) .
 eq rand(expo(m201)) = rand(expo(m22)) .
 --
 eq m3 \in network(s) = false .
 eq hash(cipher3(m3)) \in hashes(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq p10 = creator(m202) .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq rand(expo(m202)) = rand(expo(m21)) .
 eq rand(expo(m201)) = rand(expo(m22)) .
 --
 eq m3 \in network(s) = false .
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq creator(m202) = intruder .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 red istep900(m1,m21,m22,m3,p,q) .
close




-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq rand(expo(m202)) = rand(expo(m21)) .
 eq rand(expo(m201)) = rand(expo(m22)) .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 eq m3 \in network(s) = false .
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq (creator(m202) = intruder) = false .
 --
 eq p10 = intruder .
 --
 -- red inv1d(s,hash(cipher3(m3))) .
 -- red inv15(s,m202,rand(expo(m22))) .
 -- red knowspi(p10) .
 -- red creator(m202) .
 -- red knowspi(creator(m202)) .
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq rand(expo(m202)) = rand(expo(m21)) .
 eq rand(expo(m201)) = rand(expo(m22)) .
 --
 eq m3 \in network(s) = false .
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq (creator(m202) = intruder) = false .
 --
 eq (p10 = intruder) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 red inv320(s,m202,rand(expo(m22))) and inv120(s,hash(cipher3(m3))) implies istep900(m1,m21,m22,m3,p,q) .
close


--
--
--


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq rand(expo(m202)) = rand(expo(m21)) .
 eq (rand(expo(m201)) = rand(expo(m22))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq (rand(point(expo(m201))) = rand(point(expo(m22)))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq rand(expo(m201)) = rand(expo(m22)) .
 eq (rand(expo(m202)) = rand(expo(m22))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 red istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq p10 = creator(m202) .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq rand(expo(m201)) = rand(expo(m22)) .
 eq rand(expo(m202)) = rand(expo(m22)) .
 --
 eq creator(m202) = intruder .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 red istep900(m1,m21,m22,m3,p,q) .
close






-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq rand(expo(m201)) = rand(expo(m22)) .
 eq rand(expo(m202)) = rand(expo(m22)) .
 --
 eq (creator(m202) = intruder) = false .
 eq hash(cipher3(m3)) \in hashes(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 --
 red istep900(m1,m21,m22,m3,p,q) .
close




-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq rand(expo(m201)) = rand(expo(m22)) .
 eq rand(expo(m202)) = rand(expo(m22)) .
 --
 eq (creator(m202) = intruder) = false .
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq p10 = intruder .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq rand(expo(m201)) = rand(expo(m22)) .
 eq rand(expo(m202)) = rand(expo(m22)) .
 --
 eq (creator(m202) = intruder) = false .
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq (p10 = intruder) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 --
 red inv320(s,m202,rand(expo(m22))) and inv120(s,hash(cipher3(m3))) implies istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq (rand(expo(m201)) = rand(expo(m22))) = false .
 eq (rand(expo(m202)) = rand(expo(m22))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq (rand(expo(m201)) = rand(expo(m22))) = false .
 eq rand(expo(m202)) = rand(expo(m22)) .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 eq p10 = intruder .
 --
 -- red inv15(s,m202,rand(expo(m22))) .
 -- red inv1d(s,hash(cipher3(m3))) .

 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq (rand(expo(m201)) = rand(expo(m22))) = false .
 eq rand(expo(m202)) = rand(expo(m22)) .
 --
 eq (p10 = intruder) = false .
 eq hash(cipher3(m3)) \in hashes(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 --
 --

 -- red inv15(s,m202,rand(expo(m22))) .
 -- red inv1d(s,hash(cipher3(m3))) .

 red istep900(m1,m21,m22,m3,p,q) .
close



-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq (rand(expo(m201)) = rand(expo(m22))) = false .
 eq rand(expo(m202)) = rand(expo(m22)) .
 --
 eq (p10 = intruder) = false .
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq creator(m201) = intruder .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red inv710(s,m202,m201) and inv180(s,m22) and inv600(s,m202,expo(m22)) and inv120(s,hash(cipher3(m3))) and inv320(s,m202,rand(expo(m22))) implies istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq (rand(expo(m201)) = rand(expo(m22))) = false .
 eq rand(expo(m202)) = rand(expo(m22)) .
 --
 eq (p10 = intruder) = false .
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq (creator(m201) = intruder) = false .
 eq creator(m22) = intruder .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red inv110(s,m201) and inv320(s,m201,rand(expo(m201))) and inv120(s,hash(cipher3(m3))) and inv710(s,m21,m22) implies istep900(m1,m21,m22,m3,p,q) .
close


-- sdm3(s,p10,q10,m10,m11,m13)
open ISTEP
 ops p10 q10 : -> Principal .
 ops m201 m202 : -> Message2 .
 op m100 : -> Message1 .
 --
 eq c-sdm3(s,p10,q10,m100,m201,m202) = true .
 --
 eq m100 \in network(s) = true .
 eq m202 \in network(s) = true .
 eq m201 \in network(s) = true .
 eq rand(cipher1(m100)) = rand(point(expo(m202))) .
 eq sender(m201) = q10 .
 eq receiver(m201) = p10 .
 eq creator(m202) = p10 .
 eq sender(m202) = p10 .
 eq receiver(m202) = q10 .
 eq dpar(cipher1(m100)) = dpar(point(expo(m202))) .
 eq knowspi(p10) = true .
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
 -- m3 generated here
 -- eq (m3 = me3(p10,p10,q10,mac(hash(rand(expo(m202)),expo(m201)),expo(m201),dpar(cipher1(m100))))) = true .
 eq creator(m3) = p10 .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq rand(hash(cipher3(m3))) = rand(expo(m202)) .
 eq expo(hash(cipher3(m3))) = expo(m201) .
 eq expo(cipher3(m3)) = expo(m201) .
 eq dpar(cipher3(m3)) = dpar(cipher1(m100)) .
 --
 eq (rand(expo(m202)) = rand(expo(m21))) = false .
 eq rand(point(expo(m201))) = rand(point(expo(m22))) .
 eq (rand(expo(m201)) = rand(expo(m22))) = false .
 eq rand(expo(m202)) = rand(expo(m22)) .
 --
 eq (p10 = intruder) = false .
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq (creator(m201) = intruder) = false .
 eq (creator(m22) = intruder) = false .
 -- red inv1d(s,hash(cipher3(m3))) .
 --
 eq s' = sdm3(s,p10,q10,m100,m201,m202) .
 red inv110(s,m201) and inv320(s,m201,rand(expo(m201))) and
     inv110(s,m22) and inv320(s,m22,rand(expo(m22))) 
     and inv120(s,hash(cipher3(m3))) implies istep900(m1,m21,m22,m3,p,q) .
close
