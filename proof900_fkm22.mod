
--
-- c-fkm22 is false
--

--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq sender(m21) = p .
 eq (receiver(m21) = q) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq creator(m21) = p . 
 eq (sender(m21) = p) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq receiver(m3) = p .
 eq (creator(m21) = p) = false . 
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq sender(m3) = q .
 eq (receiver(m3) = p) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = true .
 eq (sender(m3) = q) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 --
 eq m1 \in network(s) = true .
 eq m3 \in network(s) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 --
 eq m1 \in network(s) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 true
--



--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq rand(expo(m22)) = r10 .
 eq rand(expo(hash(cipher3(m3)))) = r10 .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq (rand(hash(cipher3(m3))) = r10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq rand(expo(m22)) = r10 .
 eq rand(expo(hash(cipher3(m3)))) = r10 .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = r10 .
 eq (rand(expo(cipher3(m3))) = r10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq rand(expo(m22)) = r10 .
 eq rand(expo(hash(cipher3(m3)))) = r10 .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = r10 .
 eq rand(expo(cipher3(m3))) = r10 .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red inv320(s,m21,r10) implies istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- case 2
 eq r10 \in rands(s) = false .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq rand(expo(m22)) = r10 .
 eq rand(expo(hash(cipher3(m3)))) = r10 .
 eq (rand(hash(cipher3(m3))) = rand(expo(cipher3(m3)))) = false .
 eq rand(hash(cipher3(m3))) = r10 .
 eq rand(expo(cipher3(m3))) = r10 .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red inv160(s,m21) implies istep900(m1,m21,m22,m3,p,q) .
close




--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq rand(expo(m22)) = r10 .
 eq (rand(expo(hash(cipher3(m3)))) = r10) = false .
 eq (rand(hash(cipher3(m3))) = r10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq rand(expo(m22)) = r10 .
 eq (rand(expo(hash(cipher3(m3)))) = r10) = false .
 eq rand(hash(cipher3(m3))) = r10 .
 eq (rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3)))) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- case 2
 eq r10 \in rands(s) = false .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq rand(expo(m22)) = r10 .
 eq (rand(expo(hash(cipher3(m3)))) = r10) = false .
 eq rand(hash(cipher3(m3))) = r10 .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 -- red inv1d(s,hash(cipher3(m3))) and 
 --    inv3(s,r10) and 
 --    inv15(s,m21,rand(expo(cipher3(m3)))) 
 --    implies istep900(m1,m21,m22,m3,p,q) .
 red inv470(s,m3) implies istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 eq r11 \in randsi(s) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq rand(expo(m22)) = r10 .
 eq (rand(expo(hash(cipher3(m3)))) = r10) = false .
 eq rand(hash(cipher3(m3))) = r10 .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(expo(m22))) .
 eq rand(point(expo(m22))) = r11 .
 -- eq creator(m22) = intruder .
 -- eq expo(hash(cipher3(m3))) \in expos(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 -- eq cipher3(m3) \in cipher3s(s) = true .
 -- eq expo(hash(cipher3(m3))) \in expos(s) = true .
 -- eq r11 = rand(point(expo(cipher3(m3)))) .
 -- eq rand(expo(cipher3(m3))) \in randsi(s) = true .
 -- eq (creator(m1) = intruder) = false .
 -- red inv24(s,m21,expo(hash(cipher3(m3)))) .
 -- red inv40b(s,m21,expo(hash(cipher3(m3)))) .
 -- red inv15(s,m21,rand(expo(cipher3(m3)))) .
 -- red inv10(s,m21,r11) .
 -- eq rand(expo(cipher3(m3))) \in randsi(s) = false .
 -- red rand(expo(cipher3(m3))) .
 -- red inv25a(s,m1) .
-- red inv1b(s,m3) .
-- red inv15(s,m21,rand(expo(cipher3(m3)))) .
 
 --
 red inv600(s,m21,expo(hash(cipher3(m3)))) and
     inv430(s,m21,r11) and
     inv400(s,m1) and
     inv410(s,m3)  and
     inv320(s,m21,rand(expo(cipher3(m3)))) 
 implies
     istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 eq r11 \in randsi(s) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq rand(expo(m22)) = r10 .
 eq (rand(expo(hash(cipher3(m3)))) = r10) = false .
 eq rand(hash(cipher3(m3))) = r10 .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq rand(point(expo(hash(cipher3(m3))))) = rand(point(expo(m22))) .
 eq (rand(point(expo(m22))) = r11) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 eq r11 \in randsi(s) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq rand(expo(m22)) = r10 .
 eq (rand(expo(hash(cipher3(m3)))) = r10) = false .
 eq rand(hash(cipher3(m3))) = r10 .
 eq rand(expo(hash(cipher3(m3)))) = rand(expo(cipher3(m3))) .
 eq (rand(point(expo(hash(cipher3(m3))))) = rand(point(expo(m22)))) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close





--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- in both cases:
 eq r11 \in randsi(s) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = false .
 --
 eq (rand(expo(m22)) = r10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close



--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- in both cases:
 eq r11 \in randsi(s) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = true .
 eq m22 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- in both cases:
 eq r11 \in randsi(s) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = true .
 eq m21 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep900(m1,m21,m22,m3,p,q) .
close


--
-- c-fkm22 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
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
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- in both cases:
 eq r11 \in randsi(s) = true .
 -- 
 eq hash(cipher3(m3)) \in hashes(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 -- 4 secs
 red istep900(m1,m21,m22,m3,p,q) .
close
