-- base case
open INV
  op m10 : -> Message1 .
  red inv420(init,m10) .
close

-- sdm1
-- c-sdm1 is false

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m10 : -> Message1 .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep420(m10) .
close

-- sdm1
-- c-sdm1 is true 
--  eq r10 \in randsi(s) = true .

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m10 : -> Message1 .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = false .
 eq r10 \in randsi(s) = true .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red inv140(s,r10) implies istep420(m10) .
close



-- sdm1
-- c-sdm1 is true 
--  eq r10 \in randsi(s) = false .
-- m10 is constructed here
-- 

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m10 : -> Message1 .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = false .
 eq r10 \in randsi(s) = false .
 -- m10 is the message constructed here
 -- eq me1(p10,p10,q10,enc(r10,d10)) = m10 .
 eq creator(m10) = p10 . 
 eq sender(m10) = p10 .
 eq receiver(m10) = q10 .
 eq rand(cipher1(m10)) = r10 .
 eq dpar(cipher1(m10)) = d10 .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep420(m10) .
close

-- sdm1
-- c-sdm1 is true 
--  eq r10 \in randsi(s) = false .
-- m10 is _not_ constructed here
-- 

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m10 : -> Message1 .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = false .
 eq r10 \in randsi(s) = false .
 -- m10 is the message constructed here
 eq (me1(p10,p10,q10,enc(r10,d10)) = m10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep420(m10) .
close

-- sdm2
-- c-sdm2 is false

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m10 : -> Message1 .
 op m11 : -> Message1 .
 eq c-sdm2(s,p10,q10,r10,m11) = false .
 eq s' = sdm2(s,p10,q10,r10,m11) .
 red istep420(m10) .
close


-- sdm2
-- c-sdm2 is true

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m10 : -> Message1 .
 op m11 : -> Message1 .
 eq c-sdm2(s,p10,q10,r10,m11) = true .
 eq s' = sdm2(s,p10,q10,r10,m11) .
 red istep420(m10) .
close

-- sdm3
-- c-sdm3 is false

open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m11 : -> Message1 .
 ops m221 m222 : -> Message2 .
 eq c-sdm3(s,p10,q10,m11,m221,m222) = false .
 eq s' = sdm3(s,p10,q10,m11,m221,m222) .
 red istep420(m10) .
close


-- sdm3
-- c-sdm3 is true

open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op m11 : -> Message1 .
 ops m221 m222 : -> Message2 .
 eq c-sdm3(s,p10,q10,m11,m221,m222) = true .
 eq s' = sdm3(s,p10,q10,m11,m221,m222) .
 red istep420(m10) .
close

-- fkm11
-- c-fkm11 is false

open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op c11 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c11) = false .
 eq s' = fkm11(s,p10,q10,c11) .
 red istep420(m10) .
close

-- fkm11
-- c-fkm11 is true
-- m10 is generated in this step

open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op c11 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c11) = true .
 -- m10 is the generated message 
 eq me1(intruder,p10,q10,c11) = m10 .
 -- direct consequences (explicitly stated, since can not be
 -- rewritten by the above equation:
 eq creator(m10) = intruder .
 eq sender(m10) = p10 .
 eq receiver(m10) = q10 .
 eq cipher1(m10) = c11 .

 eq s' = fkm11(s,p10,q10,c11) .
 red istep420(m10) .
close

-- fkm11
-- c-fkm11 is true
-- m10 is not generated in this step

open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op c11 : -> Cipher1 .
 eq c-fkm11(s,p10,q10,c11) = true .
 -- m10 is not the generated message 
 eq (me1(intruder,p10,q10,c11) = m10) = false .
 eq s' = fkm11(s,p10,q10,c11) .
 red istep420(m10) .
close

-- fkm12
-- c-fkm12 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random . 
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep420(m10) .
close


-- fkm12
-- c-fkm12 is true
-- case1
-- m10 is not generated here
-- rc1 m10 = r10 = false
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random . 
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = false .
 eq (me1(intruder,p10,q10,enc(r10,d10)) = m10) = false .
 eq (rand(cipher1(m10)) = r10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep420(m10) .
close

-- fkm12
-- c-fkm12 is true
-- case1
-- m10 is not generated here
-- rc1 m10 = r10
-- r10 is not in randsi
-- m10 is not in the network
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random . 
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = false .
 eq (me1(intruder,p10,q10,enc(r10,d10)) = m10) = false .
 eq rand(cipher1(m10)) = r10 .
 eq r10 \in randsi(s) = false .
 eq m10 \in network(s) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep420(m10) .
close


-- fkm12
-- c-fkm12 is true
-- case1
-- m10 is not generated here
-- rc1 m10 = r10
-- r10 is not in randsi
-- m10 is in the network
-- + Lemma 4
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random . 
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = false .
 eq (me1(intruder,p10,q10,enc(r10,d10)) = m10) = false .
 eq rand(cipher1(m10)) = r10 .
 eq r10 \in randsi(s) = false .
 eq m10 \in network(s) = true .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red inv300(s,m10) implies istep420(m10) .
close


-- fkm12
-- c-fkm12 is true
-- case1
-- m10 is not generated here
-- rc1 m10 = r10
-- r10 is in randsi
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random . 
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = false .
 eq (me1(intruder,p10,q10,enc(r10,d10)) = m10) = false .
 eq rand(cipher1(m10)) = r10 .
 eq r10 \in randsi(s) = true .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep420(m10) .
close


-- fkm12
-- c-fkm12 is true
-- case1
-- m10 is generated here
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random . 
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = false .
 eq me1(intruder,p10,q10,enc(r10,d10)) = m10 .
 eq creator(m10) = intruder .
 eq sender(m10) = p10 .
 eq receiver(m10) = q10 .
 eq rand(cipher1(m10)) = r10 .
 eq dpar(cipher1(m10)) = d10 .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep420(m10) .
close


-- fkm12
-- c-fkm12 is true
-- case2
-- m10 is generated here
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random . 
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq r10 \in randsi(s) = true .
 --
 eq me1(intruder,p10,q10,enc(r10,d10)) = m10 .
 eq creator(m10) = intruder .
 eq sender(m10) = p10 .
 eq receiver(m10) = q10 .
 eq rand(cipher1(m10)) = r10 .
 eq dpar(cipher1(m10)) = d10 .


 eq s' = fkm12(s,p10,q10,r10,d10) .
 red inv300(s,m10) implies istep420(m10) .
close


-- fkm12
-- c-fkm12 is true
-- case2
-- m10 is not generated here
-- rand(cipher1(m10)) = r10
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random . 
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq r10 \in randsi(s) = true .
 --
 eq (me1(intruder,p10,q10,enc(r10,d10)) = m10) = false .
 eq rand(cipher1(m10)) = r10 .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red inv300(s,m10) implies istep420(m10) .
close



-- fkm12
-- c-fkm12 is true
-- case2
-- m10 is not generated here
-- (rand(cipher1(m10)) = r10) = false
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random . 
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq r10 \in randsi(s) = true .
 --
 eq (me1(intruder,p10,q10,enc(r10,d10)) = m10) = false .
 eq (rand(cipher1(m10)) = r10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red inv300(s,m10) implies istep420(m10) .
close

-- fkm21
-- c-fkm21 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op e200 : -> Expo .
 eq c-fkm21(s,p10,q10,e200) = false .
 --
 eq s' = fkm21(s,p10,q10,e200) .
 red istep420(m10) .
close

-- fkm21
-- c-fkm21 is true
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op e200 : -> Expo .
 eq c-fkm21(s,p10,q10,e200) = true .
 --
 eq s' = fkm21(s,p10,q10,e200) .
 red istep420(m10) .
close

-- fkm22
-- c-fkm22 is false
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r11,r12,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep420(m10) .
close

-- fkm22
-- c-fkm22 is true
-- m10 not in network
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 eq m10 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep420(m10) .
close

-- fkm22
-- c-fkm22 is true
-- m10 in network
-- case1 of c-fkm22
--  eq rand(cipher1(m10)) = r12 .
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- case1
 eq r11 \in randsi(s) = true .
 eq r12 \in randsi(s) = true .
 --
 eq m10 \in network(s) = true .
 eq rand(cipher1(m10)) = r12 .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep420(m10) .
close

-- fkm22
-- c-fkm22 is true
-- m10 in network
-- case1 of c-fkm22
-- (eq rand(cipher1(m10)) = r12 = false) .
-- (eq rand(cipher1(m10)) = r11) .
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- case1
 eq r11 \in randsi(s) = true .
 eq r12 \in randsi(s) = true .
 --
 eq m10 \in network(s) = true .
 eq (rand(cipher1(m10)) = r12) = false .
 eq rand(cipher1(m10)) = r11 .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep420(m10) .
close

-- fkm22
-- c-fkm22 is true
-- m10 in network
-- case1 of c-fkm22
-- (eq rand(cipher1(m10)) = r12 = false) .
-- (eq rand(cipher1(m10)) = r11) = false.
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- case1
 eq r11 \in randsi(s) = true .
 eq r12 \in randsi(s) = true .
 --
 eq m10 \in network(s) = true .
 eq (rand(cipher1(m10)) = r12) = false .
 eq (rand(cipher1(m10)) = r11) = false .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep420(m10) .
close

-- fkm22
-- c-fkm22 is true
-- m10 in network
-- case2 of c-fkm22
-- eq rand(cipher1(m10)) = r12
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- case2
 eq r11 \in randsi(s) = false .
 eq r11 \in rands(s) = false .
 eq r12 \in randsi(s) = true .
 --
 eq m10 \in network(s) = true .
 eq rand(cipher1(m10)) = r12 .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep420(m10) .
close

-- fkm22
-- c-fkm22 is true
-- m10 in network
-- case2 of c-fkm22
-- eq rand(cipher1(m10)) = r12 = false
-- eq rand(cipher1(m10)) = r11 .
-- + Lemma 4
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- case2
 eq r11 \in randsi(s) = false .
 eq r11 \in rands(s) = false .
 eq r12 \in randsi(s) = true .
 --
 eq m10 \in network(s) = true .
 eq (rand(cipher1(m10)) = r12) = false .
 eq rand(cipher1(m10)) = r11 .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red inv300(s,m10) implies istep420(m10) .
close


-- fkm22
-- c-fkm22 is true
-- m10 in network
-- case2 of c-fkm22
-- eq rand(cipher1(m10)) = r12 = false
-- eq rand(cipher1(m10)) = r11 = false .
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- case2
 eq r11 \in randsi(s) = false .
 eq r11 \in rands(s) = false .
 eq r12 \in randsi(s) = true .
 --
 eq m10 \in network(s) = true .
 eq (rand(cipher1(m10)) = r12) = false .
 eq (rand(cipher1(m10)) = r11) = false .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep420(m10) .
close


-- fkm31
-- c-fkm31 = false 
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op c300 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c300) = false .
 --
 eq s' = fkm31(s,p10,q10,c300) .
 red istep420(m10) .
close

-- fkm31
-- c-fkm31 = true
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op c300 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c300) = true .
 --
 eq s' = fkm31(s,p10,q10,c300) .
 red istep420(m10) .
close


-- fkm32
-- c-fkm31 = false
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep420(m10) .
close

-- fkm32
-- c-fkm31 = true
-- case1
-- rand(cipher1(m10)) = r10
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 -- eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 -- by case1
 eq r10 \in randsi(s) = true .
 eq e11 \in expos(s) = true .
 eq e12 \in expos(s) = true .
 --
 eq rand(cipher1(m10)) = r10 .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep420(m10) .
close


-- fkm32
-- c-fkm31 = true
-- case1
-- (rand(cipher1(m10)) = r10) = false
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 -- eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 -- by case1
 eq r10 \in randsi(s) = true .
 eq e11 \in expos(s) = true .
 eq e12 \in expos(s) = true .
 --
 eq (rand(cipher1(m10)) = r10) = false .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep420(m10) .
close


-- fkm32
-- c-fkm31 = true
-- case2
-- rand(cipher1(m10)) = r10
-- eq m10 \in network(s) = false .
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 -- eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 -- by case2
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq e11 \in expos(s) = true .
 eq e12 \in expos(s) = true .
 --
 eq rand(cipher1(m10)) = r10 .
 eq m10 \in network(s) = false .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep420(m10) .
close

-- fkm32
-- c-fkm31 = true
-- case2
-- rand(cipher1(m10)) = r10
-- eq m10 \in network(s) = true .
-- + Lemma 4
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 -- eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 -- by case2
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq e11 \in expos(s) = true .
 eq e12 \in expos(s) = true .
 --
 eq rand(cipher1(m10)) = r10 .
 eq m10 \in network(s) = true .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red inv300(s,m10) implies istep420(m10) .
close

-- fkm32
-- c-fkm31 = true
-- case2
-- rand(cipher1(m10)) = r10 = false
open ISTEP 
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 -- eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 -- by case1
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq e11 \in expos(s) = true .
 eq e12 \in expos(s) = true .
 --
 eq (rand(cipher1(m10)) = r10) = false .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red inv300(s,m10) implies istep420(m10) .
close

