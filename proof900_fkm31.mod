

--
-- c-fkm32 true
--

-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq (m3 = me3(intruder,p10,q10,c30)) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 -- by c-fkm31 we have:
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m3 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m3) = intruder .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq cipher3(m3) = c30 . 
 --
 eq (rand(hash(c30)) = rand(expo(m22))) = false .
 eq rand(expo(hash(c30))) = rand(expo(m22)) .
 eq rand(hash(c30)) = rand(expo(c30)) .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red inv740(s,m21,m3) implies istep900(m1,m21,m22,m3,p,q) .
close 



-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 -- by c-fkm31 we have:
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m3 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m3) = intruder .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq cipher3(m3) = c30 . 
 --
 eq (rand(hash(c30)) = rand(expo(m22))) = false .
 eq rand(expo(hash(c30))) = rand(expo(m22)) .
 eq (rand(hash(c30)) = rand(expo(c30))) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 -- by c-fkm31 we have:
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m3 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m3) = intruder .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq cipher3(m3) = c30 . 
 --
 eq (rand(hash(c30)) = rand(expo(m22))) = false .
 eq (rand(expo(hash(c30))) = rand(expo(m22))) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep900(m1,m21,m22,m3,p,q) .
close 


-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 -- by c-fkm31 we have:
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m3 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m3) = intruder .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq cipher3(m3) = c30 . 
 --
 eq hash(c30) \in hashes(s) = true .
 --
 eq rand(hash(c30)) = rand(expo(m22)) .
 eq rand(point(expo(hash(c30)))) = rand(point(expo(m22))) .
 eq (rand(expo(hash(c30))) = rand(expo(c30))) = false .
 eq (rand(expo(m22)) = rand(expo(c30))) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep900(m1,m21,m22,m3,p,q) .
close 



-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 -- by c-fkm31 we have:
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m3 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m3) = intruder .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq cipher3(m3) = c30 . 
 --
 eq hash(c30) \in hashes(s) = true .
 --
 eq rand(hash(c30)) = rand(expo(m22)) .
 eq rand(point(expo(hash(c30)))) = rand(point(expo(m22))) .
 eq (rand(expo(hash(c30))) = rand(expo(c30))) = false .
 eq rand(expo(m22)) = rand(expo(c30)) .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep900(m1,m21,m22,m3,p,q) .
close 



-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 -- by c-fkm31 we have:
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m3 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m3) = intruder .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq cipher3(m3) = c30 . 
 --
 eq hash(c30) \in hashes(s) = true .
 --
 eq rand(hash(c30)) = rand(expo(m22)) .
 eq rand(point(expo(hash(c30)))) = rand(point(expo(m22))) .
 eq rand(expo(hash(c30))) = rand(expo(c30)) .
 --
 eq creator(m22) = intruder .
 eq rand(expo(m22)) \in randsi(s) = true .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red inv730(s,m21,expo(m22)) and 
     inv180(s,m22) and
     inv600(s,m21,expo(hash(c30))) and
     inv350(s,c30) 
     implies istep900(m1,m21,m22,m3,p,q) .
close 



-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 -- by c-fkm31 we have:
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m3 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m3) = intruder .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq cipher3(m3) = c30 . 
 --
 eq hash(c30) \in hashes(s) = true .
 --
 eq rand(hash(c30)) = rand(expo(m22)) .
 eq rand(point(expo(hash(c30)))) = rand(point(expo(m22))) .
 eq rand(expo(hash(c30))) = rand(expo(c30)) .
 --
 eq creator(m22) = intruder .
 eq rand(expo(m22)) \in randsi(s) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red inv320(s,m21,rand(expo(c30))) and inv120(s,hash(c30)) implies istep900(m1,m21,m22,m3,p,q) .
close 


-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 -- by c-fkm31 we have:
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m3 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m3) = intruder .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq cipher3(m3) = c30 . 
 --
 eq hash(c30) \in hashes(s) = true .
 --
 eq rand(hash(c30)) = rand(expo(m22)) .
 eq rand(point(expo(hash(c30)))) = rand(point(expo(m22))) .
 eq rand(expo(hash(c30))) = rand(expo(c30)) .
 --
 eq (creator(m22) = intruder) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red inv320(s,m22,rand(expo(m22))) and 
     inv320(s,m21,rand(expo(c30))) and 
     inv110(s,m22) and
     inv120(s,hash(c30))
    implies istep900(m1,m21,m22,m3,p,q) .
close 




-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 -- by c-fkm31 we have:
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m3 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m3) = intruder .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq cipher3(m3) = c30 . 
 --
 eq hash(c30) \in hashes(s) = false .
 --
 eq rand(hash(c30)) = rand(expo(m22)) .
 eq rand(point(expo(hash(c30)))) = rand(point(expo(m22))) .
 eq rand(expo(hash(c30))) = rand(expo(c30)) .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep900(m1,m21,m22,m3,p,q) .
close 



-- c-fkm32 true
open ISTEP
 ops p10 q10 : -> Principal .
 op c30 : -> Cipher3 .
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
 eq (p = intruder) = false .
 eq (q = p) = false .
 eq expo(m21) = expo(cipher3(m3)) .
 eq (creator(m21) = creator(m3)) = false .
 eq dpar(cipher1(m1)) = dpar(point(expo(m21))) .
 eq rand(cipher1(m1)) = rand(point(expo(m21))) .
 eq dpar(cipher1(m1)) = dpar(cipher3(m3)) .
 eq (hash(cipher3(m3)) = hash(rand(expo(m21)),expo(m22))) = false .
 --
 eq c-fkm31(s,p10,q10,c30) = true .
 -- by c-fkm31 we have:
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m3 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m3) = intruder .
 eq sender(m3) = p10 .
 eq receiver(m3) = q10 .
 eq cipher3(m3) = c30 . 
 --
 --
 eq rand(hash(c30)) = rand(expo(m22)) .
 eq (rand(point(expo(hash(c30)))) = rand(point(expo(m22)))) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep900(m1,m21,m22,m3,p,q) .
close 
