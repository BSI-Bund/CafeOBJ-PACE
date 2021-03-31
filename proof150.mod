-- I) Base case
open INV
  op m10 : -> Cipher1 .
  red inv150(init,m10) .
close

-- sdm1
-- c-sdm false

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m10 : -> Cipher1 .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep150(m10) .
close

-- sdm1
-- c-sdm true

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 op m10 : -> Cipher1 .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep150(m10) .
close


-- sdm2
-- c-sdm2 is false 

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 ops m11 : -> Message1 .
 op m10 : -> Cipher1 . 
 eq c-sdm2(s,p10,q10,r10,m11) = false .
 eq s' = sdm2(s,p10,q10,r10,m11) .
 red istep150(m10) .
close

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 ops m11 : -> Message1 .
 op m10 : -> Cipher1 .
 eq c-sdm2(s,p10,q10,r10,m11) = true .
 eq s' = sdm2(s,p10,q10,r10,m11) .
 red istep150(m10) .
close

-- sdm3
-- c-sdm3 = true

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 ops m11 : -> Message1 .
 op m10 : -> Cipher1 .
 ops m221 m222 : -> Message2 .
 eq c-sdm3(s,p10,q10,m11,m221,m222) = true .
 eq s' = sdm3(s,p10,q10,m11,m221,m222) .
 red istep150(m10) .
close

-- sdm3
-- c-sdm3 = false 

open ISTEP 
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 ops m11 : -> Message1 .
 op m10 : -> Cipher1 .
 ops m221 m222 : -> Message2 .
 eq c-sdm3(s,p10,q10,m11,m221,m222) = false .
 eq s' = sdm3(s,p10,q10,m11,m221,m222) .
 red istep150(m10) .
close


-- fkm11

open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 op c11 : -> Cipher1 .
 eq c11 \in cipher1s(s) = true .
 --
 eq s' = fkm11(s,p10,q10,c11) .
 red istep150(m10) .
close


open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 op c11 : -> Cipher1 .
 eq c11 \in cipher1s(s) = false .
 eq s' = fkm11(s,p10,q10,c11) .
 red istep150(m10) .
close


-- fkm12
-- c-fkm12 is false

open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep150(m10) .
close

-- fkm12
-- c-fkm12 is true

open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep150(m10) .
close


-- fkm21
-- c-fkm21 is true

open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 ops e200 : -> Expo .
 eq c-fkm21(s,p10,q10,e200) = true .
 eq s' = fkm21(s,p10,q10,e200) .
 red istep150(m10) .
close

-- fkm21
-- c-fkm21 is false

open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 ops e200 : -> Expo .
 eq c-fkm21(s,p10,q10,e200) = false .
 eq s' = fkm21(s,p10,q10,e200) .
 red istep150(m10) .
close


-- fkm22
-- m10 \in network(s) = true

open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq m10 \in cipher1s(s) = true .
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep150(m10) .
close


-- fkm22
-- m10 \in network(s) = false

open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 eq m10 \in cipher1s(s) = false .
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep150(m10) .
close


-- fkm31
-- c-fkm31 is false

open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = false .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep150(m10) .
close


-- fkm31
-- c-fkm31 is false

open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 op c30 : -> Cipher3 .
 eq c-fkm31(s,p10,q10,c30) = true .
 eq s' = fkm31(s,p10,q10,c30) .
 red istep150(m10) .
close


-- fkm32
-- c-fkm32 is true

open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep150(m10) .
close


open ISTEP 
 ops p10 q10 : -> Principal .
 ops m10 : -> Cipher1 .
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep150(m10) .
close
