

--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
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
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
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
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
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
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
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
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
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
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq (receiver(m21) = q) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq (sender(m21) = p) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close

--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is false
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = false .
 --
 eq m1 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is true
--


--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
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
 eq (m22 = me2(intruder,p10,q10,c10)) = false .
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = false .
 -- eq (m21 = me2(intruder,p10,q10,c10)) = true .
 -- use normal form of creator(m21) below
 eq p = intruder .
 eq sender(m21) = p10 .
 eq receiver(m21) = q10 .
 eq expo(m21) = c10 .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = true .
 eq creator(m22) = intruder .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq expo(m22) = c10 .
 --
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq (rand(hash(cipher3(m3))) = rand(c10)) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close




--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = true .
 -- use normal form of creator(m22) below
 eq creator(m22) = intruder .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq expo(m22) = c10 .
 --
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(c10) .
 eq (rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3)))) = false .
 eq rand(c10) = rand(expo(cipher3(m3))) .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = true .
 -- use normal form of creator(m22) below
 eq creator(m22) = intruder .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq expo(m22) = c10 .
 --
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(c10) .
 eq (rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3)))) = false .
 eq (rand(c10) = rand(expo(cipher3(m3)))) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close




--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
 eq c10 \in expos(s) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = true .
 -- use normal form of creator(m22) below
 eq creator(m22) = intruder .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq expo(m22) = c10 .
 --
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(c10) .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 --
 eq rand(c10) \in randsi(s) = true .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(c10)) .
 --
 eq m21 \in network(s) = true .
 eq expo(hash(cipher3(m3))) \in expos(s) = true .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red inv600(s,m21,expo(hash(cipher3(m3)))) and inv730(s,m21,c10) implies istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
 eq c10 \in expos(s) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = true .
 -- use normal form of creator(m22) below
 eq creator(m22) = intruder .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq expo(m22) = c10 .
 --
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(c10) .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 --
 eq rand(c10) \in randsi(s) = true .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(c10)) .
 --
 eq m21 \in network(s) = true .
 eq expo(hash(cipher3(m3))) \in expos(s) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red inv410(s,m3) and inv320(s,m21,rand(expo(cipher3(m3)))) implies istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
 eq c10 \in expos(s) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = true .
 -- use normal form of creator(m22) below
 eq creator(m22) = intruder .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq expo(m22) = c10 .
 --
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(c10) .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 --
 eq rand(c10) \in randsi(s) = true .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(c10)) .
 --
 eq m21 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
 eq c10 \in expos(s) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = true .
 -- use normal form of creator(m22) below
 eq creator(m22) = intruder .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq expo(m22) = c10 .
 --
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(c10) .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 --
 eq rand(c10) \in randsi(s) = true .
 eq (rand(point(expo(hash(cipher3(m3))))) = rand(point(c10))) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
 eq c10 \in expos(s) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = true .
 -- use normal form of creator(m22) below
 eq creator(m22) = intruder .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq expo(m22) = c10 .
 --
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(c10) .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 --
 eq rand(c10) \in randsi(s) = false .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(c10)) .
 eq m21 \in network(s) = true .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red inv120(s,hash(cipher3(m3))) and 
     inv320(s,m21,rand(expo(cipher3(m3)))) 
     implies istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
 eq c10 \in expos(s) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = true .
 -- use normal form of creator(m22) below
 eq creator(m22) = intruder .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq expo(m22) = c10 .
 --
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(c10) .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 --
 eq rand(c10) \in randsi(s) = false .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(c10)) .
 eq m21 \in network(s) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close




--
-- c-fkm21 is true
open ISTEP
 ops p10 q10 : -> Principal .
 op c10 : -> Expo .
 --
 eq c-fkm21(s,p10,q10,c10) = true .
 eq c10 \in expos(s) = true .
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
 -- eq (m22 = me2(intruder,p10,q10,c10)) = true .
 -- use normal form of creator(m22) below
 eq creator(m22) = intruder .
 eq sender(m22) = p10 .
 eq receiver(m22) = q10 .
 eq expo(m22) = c10 .
 --
 eq (m21 = me2(intruder,p10,q10,c10)) = false .
 --
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = rand(c10) .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 --
 eq rand(c10) \in randsi(s) = false .
 eq (rand(point(expo(hash(cipher3(m3))))) = rand(point(c10))) = false .
 --
 eq s' = fkm21(s,p10,q10,c10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



