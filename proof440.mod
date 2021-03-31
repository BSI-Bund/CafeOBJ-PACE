-- I) Base case
open INV
  op e10 : -> Expo .
  op r200 : -> Random .
  red inv440(init,e10,r200) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep440(e10,r200) .
close


-- sdm1
-- c-sdm1 is true
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep440(e10,r200) .
close

-- sdm2
-- c-sdm is false
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep440(e10,r200) .
close


-- sdm2
-- c-sdm is true
-- eq (rand(e200) = r10) = false .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq (rand(e200) = r10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep440(e200,r200) .
close


-- sdm2
-- c-sdm is true
-- eq rand(e200) = r10 .
-- eq rand(point(e200)) = rand(cipher1(m10)) .
-- eq dpar(point(e200)) = dpar(cipher1(m10)) .
-- eq r10 \in randsi(s) = true .
-- eq rand(cipher1(m10)) = r200 .
-- eq r200 \in randsi(s) = false .
-- + Lemma3
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq rand(e200) = r10 .
 eq rand(point(e200)) = rand(cipher1(m10)) .
 eq dpar(point(e200)) = dpar(cipher1(m10)) .
 eq r10 \in randsi(s) = true .
 eq rand(cipher1(m10)) = r200 .
 eq r200 \in randsi(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red inv140(s,r10) implies istep440(e200,r200) .
close

-- sdm2
-- c-sdm is true
-- eq rand(e200) = r10 .
-- eq rand(point(e200)) = rand(cipher1(m10)) .
-- eq dpar(point(e200)) = dpar(cipher1(m10)) .
-- eq r10 \in randsi(s) = true .
-- eq rand(cipher1(m10)) = r200 .
-- eq r200 \in randsi(s) = true .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq rand(e200) = r10 .
 eq rand(point(e200)) = rand(cipher1(m10)) .
 eq dpar(point(e200)) = dpar(cipher1(m10)) .
 eq r10 \in randsi(s) = true .
 eq rand(cipher1(m10)) = r200 .
 eq r200 \in randsi(s) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep440(e200,r200) .
close

-- sdm2
-- c-sdm is true
-- eq rand(e200) = r10 .
-- eq rand(point(e200)) = rand(cipher1(m10)) .
-- eq dpar(point(e200)) = dpar(cipher1(m10)) .
-- eq r10 \in randsi(s) = true .
-- eq rand(cipher1(m10)) = r200 = false .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq rand(e200) = r10 .
 eq rand(point(e200)) = rand(cipher1(m10)) .
 eq dpar(point(e200)) = dpar(cipher1(m10)) .
 eq r10 \in randsi(s) = true .
 eq (rand(cipher1(m10)) = r200) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep440(e200,r200) .
close


-- sdm2
-- c-sdm is true
-- eq rand(e200) = r10 .
-- eq rand(point(e200)) = rand(cipher1(m10)) .
-- eq dpar(point(e200)) = dpar(cipher1(m10)) .
-- eq r10 \in randsi(s) = false .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq rand(e200) = r10 .
 eq rand(point(e200)) = rand(cipher1(m10)) .
 eq dpar(point(e200)) = dpar(cipher1(m10)) .
 eq r10 \in randsi(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep440(e200,r200) .
close


-- sdm2
-- c-sdm is true
-- eq rand(e200) = r10 .
-- eq rand(point(e200)) = rand(cipher1(m10)) .
-- eq (dpar(point(e200)) = dpar(cipher1(m10))) = false .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq rand(e200) = r10 .
 eq rand(point(e200)) = rand(cipher1(m10)) .
 eq (dpar(point(e200)) = dpar(cipher1(m10))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep440(e200,r200) .
close

-- sdm2
-- c-sdm is true
-- eq rand(e200) = r10 .
-- eq (rand(point(e200)) = rand(cipher1(m10))) = false .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 eq r10 \in rands(s) = false .
 --
 eq rand(e200) = r10 .
 eq (rand(point(e200)) = rand(cipher1(m10))) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep440(e200,r200) .
close

-- sdm3
-- c-sdm is false
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op m10 : -> Message1 .
 ops m220 m221 : -> Message2 .
 ops p10 q10 : -> Principal .
 --
 eq c-sdm3(s,p10,q10,m10,m220,m221) = false .
 eq s' = sdm3(s,p10,q10,m10,m220,m221) .
 red istep440(e200,r200) .
close

-- sdm3
-- c-sdm is true
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op m10 : -> Message1 .
 ops m220 m221 : -> Message2 .
 ops p10 q10 : -> Principal .
 --
 eq c-sdm3(s,p10,q10,m10,m220,m221) = true .
 eq s' = sdm3(s,p10,q10,m10,m220,m221) .
 red istep440(e200,r200) .
close


-- fkm11
-- c-fkm11 is false
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep440(e200,r200) .
close

-- fkm11
-- c-fkm11 is true
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = true .
 eq s' = fkm11(s,p10,q10,c10) .
 red istep440(e200,r200) .
close

-- fkm12
-- c-fkm12 is false
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep440(e200,r200) .
close

-- fkm12
-- c-fkm12 is true
-- case1
-- expo rand(e200) = r10
-- eq r10 \in randsi(s) = false
-- + Lemma9
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- case1
 eq r10 \in rands(s) = false .
 --
 eq rand(e200) = r10 .
 eq r10 \in randsi(s) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red inv170(s,e200) implies istep440(e200,r200) .
close

-- fkm12
-- c-fkm12 is true
-- case1
-- expo rand(e200) = r10
-- eq r10 \in randsi(s) = true
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- case1
 eq r10 \in rands(s) = false .
 --
 eq rand(e200) = r10 .
 eq r10 \in randsi(s) = true .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep440(e200,r200) .
close

-- fkm12
-- c-fkm12 is true
-- case1
--  eq (rand(e200) = r10) = false 
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- case1
 eq r10 \in rands(s) = false .
 --
 eq (rand(e200) = r10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep440(e200,r200) .
close

-- fkm12
-- c-fkm12 is true
-- case2
-- eq (rand(e200) = r10) .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- case2
 eq r10 \in rands(s) = true .
 eq r10 \in randsi(s) = true .
 eq rand(e200) = r10 .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep440(e200,r200) .
close


-- fkm12
-- c-fkm12 is true
-- case2
-- eq (rand(e200) = r10) = false.
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 -- eq c-fkm12(s,p10,q10,r10,d10) = true .
 -- case2
 eq r10 \in rands(s) = true .
 eq r10 \in randsi(s) = true .
 eq (rand(e200) = r10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep440(e200,r200) .
close


-- fkm21
-- c-fkm21 = false
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops e10 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,e10) = false .
 --
 eq s' = fkm21(s,p10,q10,e10) .
 red istep440(e200,r200) .
close


-- fkm21
-- c-fkm21 = true
--  eq e200 = expo(m10) .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops e10 : -> Expo .
 ops p10 q10 : -> Principal .
 -- eq c-fkm21(s,p10,q10,e10) = true .
 eq e10 \in expos(s) = true .
 --
 eq e200 = e10 .
 eq s' = fkm21(s,p10,q10,e10) .
 red istep440(e200,r200) .
close



-- fkm21
-- c-fkm21 = true
--  eq e200 = expo(m10) = false .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops e10 : -> Expo .
 ops p10 q10 : -> Principal .
 -- eq c-fkm21(s,p10,q10,e10) = true .
 eq e10 \in expos(s) = true .
 --
 eq (e200 = e10) = false .
 eq s' = fkm21(s,p10,q10,e10) .
 red istep440(e200,r200) .
close


-- fkm22
-- c-fkm22 is false
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r11,r12,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep440(e200,r200) .
close

-- fkm22
-- c-fkm22 is true
-- by case1
-- eq rand(e200) = r12 .
-- eq r12 = r11 .
-- eq rand(point(e200)) = r11 .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- by case1
 eq r11 \in randsi(s) = true .
 eq r12 \in randsi(s) = true .
 --
 eq rand(e200) = r12 .
 eq r12 = r11 .
 eq rand(point(e200)) = r11 .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep440(e200,r200) .
close

-- fkm22
-- c-fkm22 is true
-- by case1
-- eq rand(e200) = r12 .
-- eq r12 = r11 .
-- eq (rand(point(e200)) = r11) = false .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- by case1
 eq r11 \in randsi(s) = true .
 eq r12 \in randsi(s) = true .
 --
 eq rand(e200) = r12 .
 eq r12 = r11 .
 eq (rand(point(e200)) = r11) = false .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep440(e200,r200) .
close


-- fkm22
-- c-fkm22 is true
-- by case1
-- eq rand(e200) = r12 .
-- eq r12 = r11 = false .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- by case1
 eq r11 \in randsi(s) = true .
 eq r12 \in randsi(s) = true .
 --
 eq rand(e200) = r12 .
 eq (r12 = r11) = false .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep440(e200,r200) .
close


-- fkm22
-- c-fkm22 is true
-- by case1
-- eq (rand(e200) = r12) = false .
-- eq rand(e200) = r11 .
-- eq rand(point(e200)) = r12 .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- by case1
 eq r11 \in randsi(s) = true .
 eq r12 \in randsi(s) = true .
 --
 eq (rand(e200) = r12) = false .
 eq rand(e200) = r11 .
 eq rand(point(e200)) = r12 .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep440(e200,r200) .
close


-- fkm22
-- c-fkm22 is true
-- by case1
-- eq (rand(e200) = r12) = false .
-- eq rand(e200) = r11 .
-- eq (rand(point(e200)) = r12) = false .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- by case1
 eq r11 \in randsi(s) = true .
 eq r12 \in randsi(s) = true .
 --
 eq (rand(e200) = r12) = false .
 eq rand(e200) = r11 .
 eq (rand(point(e200)) = r12) = false .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep440(e200,r200) .
close


-- fkm22
-- c-fkm22 is true
-- by case1
-- eq (rand(e200) = r12) = false .
-- eq rand(e200) = r11 = false .
open ISTEP 
 op e200 : -> Expo .
 op r200 : -> Random .
 --
 ops r11 r12 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm22(s,p10,q10,r11,r12,d10) = true .
 -- by case1
 eq r11 \in randsi(s) = true .
 eq r12 \in randsi(s) = true .
 --
 eq (rand(e200) = r12) = false .
 eq (rand(e200) = r11) = false .
 --
 eq s' = fkm22(s,p10,q10,r11,r12,d10) .
 red istep440(e200,r200) .
close


-- fkm31 
-- c-fkm31 = false 
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c300 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c300) = false .
 eq s' = fkm31(s,p10,q10,c300) .
 red istep440(e10,r200) .
close

-- fkm31 
-- c-fkm31 = true 
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c300 : -> Cipher3 .
 -- eq c-fkm31(s,p10,q10,c300) = true .
 eq c300 \in cipher3s(s) = true .
 --
 eq expo(hash(c300)) = e10 .
 eq rand(point(e10)) = r200 .
 eq r200 \in randsi(s) = false .
 eq rand(e10) \in randsi(s) = true .
 eq s' = fkm31(s,p10,q10,c300) .
 red istep440(e10,r200) .
close

-- fkm31 
-- c-fkm31 = true 
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c300 : -> Cipher3 .
 -- eq c-fkm31(s,p10,q10,m300) = true .
 eq c300 \in cipher3s(s) = true .
 --
 eq expo(hash(c300)) = e10 .
 eq rand(point(e10)) = r200 .
 eq r200 \in randsi(s) = false .
 eq rand(e10) \in randsi(s) = false .
 eq s' = fkm31(s,p10,q10,c300) .
 red istep440(e10,r200) .
close


-- fkm31 
-- c-fkm31 = true 
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c300 : -> Cipher3 .
 -- eq c-fkm31(s,p10,q10,m300) = true .
 eq c300 \in cipher3s(s) = true .
 --
 eq expo(hash(c300)) = e10 .
 eq rand(point(e10)) = r200 .
 eq r200 \in randsi(s) = true .
 eq s' = fkm31(s,p10,q10,c300) .
 red istep440(e10,r200) .
close



-- fkm31 
-- c-fkm31 = true 
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c300 : -> Cipher3 .
 -- eq c-fkm31(s,p10,q10,c300) = true .
 eq c300 \in cipher3s(s) = true .
 --
 eq expo(hash(c300)) = e10 .
 eq (rand(point(e10)) = r200) = false .
 eq s' = fkm31(s,p10,q10,c300) .
 red istep440(e10,r200) .
close



-- fkm31 
-- c-fkm31 = true 
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op c300 : -> Cipher3 .
 -- eq c-fkm31(s,p10,q10,c300) = true .
 eq c300 \in cipher3s(s) = true .
 --
 eq (e10 = expo(hash(c300))) = false .
 eq s' = fkm31(s,p10,q10,c300) .
 red istep440(e10,r200) .
close



-- fkm32
-- c-fkm32 = false
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = false .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep440(e10,r200) .
close



-- fkm32
-- c-fkm32 = true
-- case1
-- rand(e10) = r10 
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 -- eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 eq e11 \in expos(s) = true .
 eq e12 \in expos(s) = true .
 --
 eq rand(e10) = r10 .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep440(e10,r200) .
close


-- fkm32
-- c-fkm32 = true
-- case1
-- rand(e10) = r10 = false 
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 -- eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 -- case 1
 eq r10 \in randsi(s) = true .
 eq e11 \in expos(s) = true .
 eq e12 \in expos(s) = true .
 --
 eq (rand(e10) = r10) = false .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep440(e10,r200) .
close


-- fkm32
-- c-fkm32 = true
-- case2
-- rand e10 = r10 = false
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 -- eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 -- case 2
 eq r10 \in rands(s) = false .
 eq e11 \in expos(s) = true .
 eq e12 \in expos(s) = true .
 --
 eq (rand(e10) = r10) = false .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep440(e10,r200) .
close


-- fkm32
-- c-fkm32 = true
-- case2
-- rand e10 = r10
-- e10 \in expos(s) = false
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 -- eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 -- case 2
 eq r10 \in rands(s) = false .
 eq e11 \in expos(s) = true .
 eq e12 \in expos(s) = true .
 --
 eq rand(e10) = r10 .
 eq e10 \in expos(s) = false .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red istep440(e10,r200) .
close


-- fkm32
-- c-fkm32 = true
-- case2
-- rand e10 = r10
-- e10 \in expos(s) = true
-- + Lemma 9
open ISTEP 
 op e10 : -> Expo .
 op r200 : -> Random .
 --
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 ops e11 e12 : -> Expo .
 op d10 : -> Dompar .
 -- eq c-fkm32(s,p10,q10,r10,e11,e12,d10) = true .
 -- case 2
 eq r10 \in rands(s) = false .
 eq e11 \in expos(s) = true .
 eq e12 \in expos(s) = true .
 --
 eq rand(e10) = r10 .
 eq e10 \in expos(s) = true .
 eq s' = fkm32(s,p10,q10,r10,e11,e12,d10) .
 red inv170(s,e10) implies istep440(e10,r200) .
close
