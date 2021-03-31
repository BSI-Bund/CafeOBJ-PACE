-- base case

open INV 
 op m220 : -> Message2 .
 op r10 : -> Random .
 red inv430(init,m220,r10) .
close

-- sdm1
-- c-sdm1 is true (i.e. r10 \in rands(s) is false)

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 eq r10 \in rands(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep430(m220,r20) .
close

-- sdm1
-- c-sdm1 is false

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep430(m220,r20) .
close

-- sdm2
-- c-sdm2 is false

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep430(m220,r20) .
close

-- sdm2
-- c-sdm2 is true
-- m220 is _not_ the generated message

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- c-sdm2 is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq (me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m220) = false .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep430(m220,r20) .
close

-- sdm2
-- c-sdm2 is true
-- m220 is in the network

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- c-sdm2 is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m220 \in network(s) = true .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep430(m220,r20) .
close

-- sdm2
-- c-sdm2 is true
-- m220 is _not_ in the network
-- m220 is generated in this step
--  eq (rand(cipher1(m10)) = r20) = false .

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- c-sdm2 is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m220 \in network(s) = false .
 -- eq me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m220 .
 eq creator(m220) = p10 .
 eq sender(m220) = p10 .
 eq receiver(m220) = p10 .
 eq rand(expo(m220)) = r10 .
 eq rand(point(expo(m220))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m220))) = dpar(cipher1(m10)) .
 eq (rand(cipher1(m10)) = r20) = false .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep430(m220,r20) .
close


-- sdm2
-- c-sdm2 is true
-- m220 is _not_ in the network
-- m220 is generated in this step
-- eq (rand(cipher1(m10)) = r20 .
-- + Lemma 6

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- c-sdm2 is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq knowspi(p10) = true .
 eq creator(m10) = p10 .
 eq sender(m10) = p10 .
 eq m10 \in network(s) = true .
 --
 eq m220 \in network(s) = false .
 -- eq me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m220 .
 eq creator(m220) = p10 .
 eq sender(m220) = p10 .
 eq receiver(m220) = p10 .
 eq rand(expo(m220)) = r10 .
 eq rand(point(expo(m220))) = rand(cipher1(m10)) .
 eq dpar(point(expo(m220))) = dpar(cipher1(m10)) .
 eq r20 = rand(cipher1(m10)) .
 -- for the next, lemma 6 is used
 -- lemma 6 requires the assumptions of c-sdm2
 -- eq rand(cipher1(m10)) \in randsi(s) = false .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv420(s,m10) implies istep430(m220,r20) .
close

-- sdm2
-- c-sdm2 is true
-- m220 is _not_ in the network
-- m220 is _not_ generated in this step

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- c-sdm2 is true
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m220 \in network(s) = false .
 eq (me2(p10,p10,q10,expo(r10,maptopoint(rand(cipher1(m10)),dpar(cipher1(m10))))) = m220) = false .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep430(m220,r20) .
close


-- sdm3
-- c-sdm3 = false
 
open ISTEP 
 op m200 : -> Message2 .
 op m220 : -> Message2 .
 op m221 : -> Message2 .
 op m300 : -> Message3 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 eq c-sdm3(s,p10,q10,m10,m221,m220) = false .
 eq s' = sdm3(s,p10,q10,m10,m221,m220) .
 red istep430(m200,r20) .
close

-- sdm3
-- c-sdm3 = true

open ISTEP 
 op m200 : -> Message2 .
 op m220 : -> Message2 .
 op m221 : -> Message2 .
 op m300 : -> Message3 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 op nw10 : -> Network .
 eq c-sdm3(s,p10,q10,m10,m221,m220) = true .
 eq s' = sdm3(s,p10,q10,m10,m221,m220) .
 red istep430(m200,r20) .
close

-- fkm11
-- c-fkm11 = true

open ISTEP 
 op m200 : -> Message2 .
 op m300 : -> Message3 .
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r20 : -> Random .
 eq c10 \in cipher1s(s) = true .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep430(m200,r20) .
close

-- fkm11
-- c-fkm11 = false

open ISTEP 
 op m200 : -> Message2 .
 op m300 : -> Message3 .
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r20 : -> Random .
 eq c10 \in cipher1s(s) = false .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep430(m200,r20) .
close


-- fkm12
-- c-fkm12 is false

open ISTEP 
 op m200 : -> Message2 .
 op m300 : -> Message3 .
 op m10 : -> Message1 .
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep430(m200,r20) .
close

-- fkm12
-- c-fkm12 is true
-- by case 1
-- r20 = r10
-- rand(point(expo(m200))) = r10
-- + Lemma 5

open ISTEP 
 op m200 : -> Message2 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- by case 1
 eq r10 \in rands(s) = false .
 --
 eq r20 = r10 .
 eq rand(point(expo(m200))) = r10 .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red inv310(s,m200) implies istep430(m200,r20) .
close

-- fkm12
-- c-fkm12 is true
-- by case 1
-- r20 = r10
-- (rand(point(expo(m200))) = r10) = false

open ISTEP 
 op m200 : -> Message2 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- by case 1
 eq r10 \in rands(s) = false .
 --
 eq r20 = r10 .
 eq (rand(point(expo(m200))) = r10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep430(m200,r20) .
close

-- fkm12
-- c-fkm12 is true
-- by case 1
-- (r20 = r10) = false

open ISTEP 
 op m200 : -> Message2 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- by case 1
 eq r10 \in rands(s) = false .
 --
 eq (r20 = r10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep430(m200,r20) .
close


-- fkm12
-- c-fkm12 is true
-- by case 2
-- r20 = r10

open ISTEP 
 op m200 : -> Message2 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = true .
 eq r10 \in randsi(s) = true .
 --
 eq r20 = r10 .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep430(m200,r20) .
close

-- fkm12
-- c-fkm12 is true
-- by case 2
-- (r20 = r10) = false

open ISTEP 
 op m200 : -> Message2 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- by case 2
 eq r10 \in rands(s) = true .
 eq r10 \in randsi(s) = true .
 --
 eq (r20 = r10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep430(m200,r20) .
close

-- fkm21
-- c-fkm21 is false 

open ISTEP 
 op m200 : -> Message2 .
 op e201 : -> Expo .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e201) = false .
 eq s' = fkm21(s,p10,q10,e201) .
 red istep430(m200,r20) .
close

-- fkm21
-- c-fkm21 is true 

open ISTEP 
 op m200 : -> Message2 .
 op e201 : -> Expo .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e201) = true .
 eq s' = fkm21(s,p10,q10,e201) .
 red istep430(m200,r20) .
close

-- fkm22
-- c-fkm22 is false 

open ISTEP 
 op m200 : -> Message2 .
 op d10 : -> Dompar .
 ops r10 r11 : -> Random .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep430(m200,r20) .
close

-- fkm22
-- c-fkm22 is true 
-- by case 1

open ISTEP 
 op m200 : -> Message2 .
 op d10 : -> Dompar .
 ops r10 r11 : -> Random .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- by case 1: 
 eq r10 \in randsi(s) = true .
 eq r20 \in randsi(s) = true .
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep430(m200,r20) .
close

-- fkm22
-- c-fkm22 is true 
-- by case 2

open ISTEP 
 op m200 : -> Message2 .
 op d10 : -> Dompar .
 ops r10 r11 : -> Random .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 -- by case 2: 
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq r20 \in randsi(s) = true .
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep430(m200,r20) .
close

-- fkm31
-- c-fkm31 is false

open ISTEP 
 op m200 : -> Message2 .
 op c30 : -> Cipher3 .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep430(m200,r20) .
close


-- fkm31
-- c-fkm31 is true

open ISTEP 
 op m200 : -> Message2 .
 op c30 : -> Cipher3 .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep430(m200,r20) .
close


-- fkm32
-- c-fkm32 is false

open ISTEP 
 op m200 : -> Message2 .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep430(m200,r20) .
close


-- fkm32
-- c-fkm32 is true
-- (r20 = r10) = false

open ISTEP 
 op m200 : -> Message2 .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq (r20 = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep430(m200,r20) .
close


-- fkm32
-- c-fkm32 is true
-- r20 = r10
-- c-fkm32 by case 1

open ISTEP 
 op m200 : -> Message2 .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq r10 \in randsi(s) = true .
 eq r20 = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep430(m200,r20) .
close


-- fkm32
-- c-fkm32 is true
-- r20 = r10
-- c-fkm32 by case 2
-- m200 is in network
-- rand(point(expo(m200))) = r10
-- + Lemma 5

open ISTEP 
 op m200 : -> Message2 .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq r20 = r10 .
 eq m200 \in network(s) = true .
 eq rand(point(expo(m200))) = r10 .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv310(s,m200) implies istep430(m200,r20) .
close


-- fkm32
-- c-fkm32 is true
-- r20 = r10
-- c-fkm32 by case 2
-- m200 is in network
-- (rand(point(expo(m200))) = r10) = false 

open ISTEP 
 op m200 : -> Message2 .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq r20 = r10 .
 eq m200 \in network(s) = true .
 eq (rand(point(expo(m200))) = r10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep430(m200,r20) .
close


-- fkm32
-- c-fkm32 is true
-- r20 = r10
-- c-fkm32 by case 2
-- m200 is not in network

open ISTEP 
 op m200 : -> Message2 .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 op r20 : -> Random .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq r20 = r10 .
 eq m200 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep430(m200,r20) .
close
