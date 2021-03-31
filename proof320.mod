-- base case

open INV 
 op m220 : -> Message2 .
 op r10 : -> Random .
 red inv320(init,m220,r10) .
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
 red istep320(m220,r20) .
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
 red istep320(m220,r20) .
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
 red istep320(m220,r20) .
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
 red istep320(m220,r20) .
close

-- sdm2
-- c-sdm2 is true
-- m220 is _not_ in the network

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op r20 : -> Random .
 -- c-sdm2 is true
 -- eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq m10 \in network(s) = true .
 eq creator(m10) = p10 .
 eq sender(m10) = p10 .
 eq knowspi(p10) = true .
 eq r10 \in rands(s) = true .
 --
 eq m220 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep320(m220,r20) .
close

-- sdm3
-- c-sdm3 is false 

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops m221 m222 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 -- c-sdm3 is false
 eq c-sdm3(s,p10,q10,m10,m221,m222) = false .
 eq s' = sdm3(s,p10,q10,m10,m221,m222) .
 red istep320(m220,r20) .
close

-- sdm3
-- c-sdm3 is true

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops m221 m222 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 eq c-sdm3(s,p10,q10,m10,m221,m222) = true .
 eq s' = sdm3(s,p10,q10,m10,m221,m222) .
 red istep320(m220,r20) .
close


-- fkm11
-- c-fkm11 is false 

open ISTEP 
 op m220 : -> Message2 .
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 eq c-fkm11(s,p10,q10,c10) = false .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep320(m220,r20) .
close

-- fkm11
-- c-fkm11 is true

open ISTEP 
 op m220 : -> Message2 .
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 eq c-fkm11(s,p10,q10,c10) = true .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep320(m220,r20) .
close

-- fkm12
-- c-fkm12 is false

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep320(m220,r20) .
close



-- fkm12
-- c-fkm12 is true
-- m220 is not in the network

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq m220 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep320(m220,r20) .
close


-- fkm12
-- c-fkm12 is true
-- m220 is in the network
-- case1 of c-fkm12
--  eq rand(expo(m220)) = r10 .
-- + Lemma 7

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq m220 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq rand(expo(m220)) = r10 .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red inv160(s,m220) implies istep320(m220,r20) .
close

-- fkm12
-- c-fkm12 is true
-- m220 is in the network
-- case1 of c-fkm12
--  (eq rand(expo(m220)) = r10) = false .
-- r20 = r10

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq m220 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq (rand(expo(m220)) = r10) = false .
 eq r20 = r10 .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep320(m220,r20) .
close

-- fkm12
-- c-fkm12 is true
-- m220 is in the network
-- case1 of c-fkm12
--  (eq rand(expo(m220)) = r10) = false .
-- (r20 = r10) = false

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq m220 \in network(s) = true .
 eq r10 \in rands(s) = false .
 eq (rand(expo(m220)) = r10) = false .
 eq (r20 = r10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep320(m220,r20) .
close


-- fkm12
-- c-fkm12 is true
-- m220 is in the network
-- case2 of c-fkm12
-- r20 = r10

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq m220 \in network(s) = true .
 -- eq r10 \in rands(s) = true .
 eq r10 \in randsi(s) = true .
 eq r20 = r10 .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep320(m220,r20) .
close

-- fkm12
-- c-fkm12 is true
-- m220 is in the network
-- case2 of c-fkm12
-- (r20 = r10) = false 

open ISTEP 
 op m220 : -> Message2 .
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq m220 \in network(s) = true .
 -- eq r10 \in rands(s) = true .
 eq r10 \in randsi(s) = true .
 eq (r20 = r10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep320(m220,r20) .
close

-- fkm21
-- c-fkm21 is false

open ISTEP 
 ops m220 : -> Message2 .
 op c10 : -> Expo .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 eq c-fkm21(s,p10,q10,c10) = false .
 eq s' = fkm21(s,p10,q10,c10) .
 red istep320(m220,r20) .
close

-- fkm21
-- c-fkm21 is true

open ISTEP 
 ops m220 : -> Message2 . 
 op c10 : -> Expo .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 eq c-fkm21(s,p10,q10,c10) = true .
 eq s' = fkm21(s,p10,q10,c10) .
 red istep320(m220,r20) .
close

-- fkm22
-- c-fkm22 is false

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm22(s,p10,q10,r10,r11,d10) = false .
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep320(m220,r20) .
close

-- fkm22
-- c-fkm22 is true
-- case1
-- r20 = r11
-- r10 = r20

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 eq r10 \in randsi(s) = true .
 eq r11 \in randsi(s) = true .
 --
 eq r20 = r11 .
 eq r10 = r20 .
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep320(m220,r20) .
close


-- fkm22
-- c-fkm22 is true
-- case1
-- r20 = r11
-- (r10 = r20) = false

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 eq r10 \in randsi(s) = true .
 eq r11 \in randsi(s) = true .
 --
 eq r20 = r11 .
 eq (r10 = r20) = false .
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep320(m220,r20) .
close

-- fkm22
-- c-fkm22 is true
-- case1
-- (r20 = r11) = false
-- (r10 = r20) = false

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 eq r10 \in randsi(s) = true .
 eq r11 \in randsi(s) = true .
 --
 eq (r20 = r11) = false .
 eq (r10 = r20) = false .
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep320(m220,r20) .
close

-- fkm22
-- c-fkm22 is true
-- case1
-- (r20 = r11) = false
-- r10 = r20

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 eq r10 \in randsi(s) = true .
 eq r11 \in randsi(s) = true .
 --
 eq (r20 = r11) = false .
 eq r20 = r10 .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep320(m220,r20) .
close

-- fkm22
-- c-fkm22 is true
-- case2
-- eq r20 = r11 .
-- eq r20 = r10 .

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq r11 \in randsi(s) = true .
 --
 eq r20 = r11 .
 eq r10 = r20 .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep320(m220,r20) .
close



-- fkm22
-- c-fkm22 is true
-- case2
-- eq r20 = r11 .
-- eq (r20 = r10) = false .

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq r11 \in randsi(s) = true .
 --
 eq r20 = r11 .
 eq (r10 = r20) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep320(m220,r20) .
close


-- fkm22
-- c-fkm22 is true
-- case2
-- eq (r20 = r11) = false .
--  eq r20 = r10 .
--  eq m220 \in network(s) = true .
--  eq rand(expo(m220)) = r10 .

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq r11 \in randsi(s) = true .
 --
 eq (r20 = r11) = false .
 eq r20 = r10 .
 eq m220 \in network(s) = true .
 eq rand(expo(m220)) = r10 .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red inv160(s,m220) implies istep320(m220,r20) .
close

-- fkm22
-- c-fkm22 is true
-- case2
-- eq (r20 = r11) = false .
--  eq r20 = r10 .
--  eq m220 \in network(s) = true .
--  (eq rand(expo(m220)) = r10) = false .

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq r11 \in randsi(s) = true .
 --
 eq (r20 = r11) = false .
 eq r20 = r10 .
 eq m220 \in network(s) = true .
 eq (rand(expo(m220)) = r10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep320(m220,r20) .
close

-- fkm22
-- c-fkm22 is true
-- case2
-- eq (r20 = r11) = false .
--  eq r20 = r10 .
--  eq m220 \in network(s) = false .

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq r11 \in randsi(s) = true .
 --
 eq (r20 = r11) = false .
 eq r20 = r10 .
 eq m220 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep320(m220,r20) .
close


-- fkm22
-- c-fkm22 is true
-- case2
-- eq (r20 = r11) = false .
--  eq r20 = r10  = false .

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 ops r10 r11 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm22(s,p10,q10,r10,r11,d10) = true .
 eq r10 \in randsi(s) = false .
 eq r10 \in rands(s) = false .
 eq r11 \in randsi(s) = true .
 --
 eq (r20 = r11) = false .
 eq (r20 = r10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r11,d10) .
 red istep320(m220,r20) .
close


-- fkm31
-- c-fkm31 is false 

open ISTEP 
 op m220 : -> Message2 .
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 eq c-fkm31(s,p10,q10,c30) = false .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep320(m220,r20) .
close

-- fkm31
-- c-fkm31 is true

open ISTEP 
 op m220 : -> Message2 .
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 eq c-fkm31(s,p10,q10,c30) = true .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep320(m220,r20) .
close

-- fkm32
-- c-fkm32 is false 

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep320(m220,r20) .
close

-- fkm32
-- c-fkm32 is true 
-- by case1
-- r20 = r10

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq r10 \in randsi(s) = true .
 eq r20 = r10 .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep320(m220,r20) .
close

-- fkm32
-- c-fkm32 is true 
-- by case1
-- r20 = r10 = false

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq r10 \in randsi(s) = true .
 eq (r20 = r10) = false .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep320(m220,r20) .
close

-- fkm32
-- c-fkm32 is true 
-- by case2
-- r20 = r10
-- rand(expo(m220) = r10
-- m220 \in network(s)
-- + Lemma 7

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq r10 \in rands(s) = false .
 eq r20 = r10 .
 eq rand(expo(m220)) = r10 .
 eq m220 \in network(s) = true .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv160(s,m220) implies istep320(m220,r20) .
close

-- fkm32
-- c-fkm32 is true 
-- by case2
-- r20 = r10
-- rand(expo(m220) = r10
-- m220 \in network(s) = false

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq r10 \in rands(s) = false .
 eq r20 = r10 .
 eq rand(expo(m220)) = r10 .
 eq m220 \in network(s) = false .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep320(m220,r20) .
close

-- fkm32
-- c-fkm32 is true 
-- by case2
-- r20 = r10
-- (rand(expo(m220) = r10) = false

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq r10 \in rands(s) = false .
 eq r20 = r10 .
 eq (rand(expo(m220)) = r10) = false .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep320(m220,r20) .
close

-- fkm32
-- c-fkm32 is true 
-- by case2
-- (r20 = r10) = false 

open ISTEP 
 op m220 : -> Message2 .
 ops p10 q10 : -> Principal .
 op r20 : -> Random .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq r10 \in rands(s) = false .
 eq (r20 = r10) = false .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep320(m220,r20) .
close
