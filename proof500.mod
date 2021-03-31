-- I) Base case
open INV
  op m30 : -> Message3 .
  red inv500(init,m30) .
close

-- sdm1
-- c-sdm1 is false
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep500(m30) .
close


-- sdm1
-- c-sdm1 is true
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq c-sdm1(s,p10,q10,r10,d10) = true .
 --
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep500(m30) .
close



-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep500(m30) .
close

-- sdm2
-- c-sdm2 is true
open ISTEP 
  ops m30 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op m10 : -> Message1 .
 op r10 : -> Random .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep500(m30) .
close


-- c-sdm3
-- c-sdm3 is false
open ISTEP 
  ops m20 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops m221 m222 : -> Message2 .
 op m100 : -> Message1 .
 eq c-sdm3(s,p10,q10,m100,m221,m222) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m221,m222) .
 red istep500(m20) .
close




-- c-sdm3
-- c-sdm3 is true
open ISTEP 
  ops m20 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops m221 m222 : -> Message2 .
 op m100 : -> Message1 .
 eq c-sdm3(s,p10,q10,m100,m221,m222) = true .
 --
 eq (m20 = me3(p10,p10,q10,mac(hash(rand(expo(m222)),expo(m221)),expo(m221),dpar(cipher1(m100))))) = false .
 --
 eq s' = sdm3(s,p10,q10,m100,m221,m222) .
 red istep500(m20) .
close



-- c-sdm3
-- c-sdm3 is true
open ISTEP 
  ops m20 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 ops m221 m222 : -> Message2 .
 op m100 : -> Message1 .
 eq c-sdm3(s,p10,q10,m100,m221,m222) = true .
 --
 eq m221 \in network(s) = true .
 --
 -- eq (m20 = me3(p10,p10,q10,mac(hash(rand(expo(m222)),expo(m221)),expo(m221),dpar(cipher1(m100))))) = true .
 eq creator(m20) = p10 .
 eq sender(m20) = p10 .
 eq receiver(m20) = q10 .
 eq rand(hash(cipher3(m20))) = rand(expo(m222)) .
 eq expo(hash(cipher3(m20))) = expo(m221) .
 eq expo(cipher3(m20)) = expo(m221) .
 eq dpar(cipher3(m20)) = dpar(cipher1(m100)) .
 --
 --
 eq s' = sdm3(s,p10,q10,m100,m221,m222) .
 red inv160(s,m221) implies istep500(m20) .
close


-- fkm11
-- c-fkm11 false
open ISTEP 
  op m20 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
  eq s' = fkm11(s,p10,q10,c10) .
  red istep500(m20) .
close

-- fkm11
-- c-fkm11 true
open ISTEP 
  op m20 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = true .
 --
  eq s' = fkm11(s,p10,q10,c10) .
  red istep500(m20) .
close


-- fkm12
-- c-fkm12 false
open ISTEP 
  ops m20 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep500(m20) .
close

-- fkm12
-- c-fkm12 false
open ISTEP 
  ops m20 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep500(m20) .
close


-- fkm21
-- c-fkm21 false
open ISTEP 
  op m200 : -> Message3 .
 --
 op c20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,c20) = false .
 --
 --
 eq s' = fkm21(s,p10,q10,c20) .
 red istep500(m200) .
close

-- fkm21
-- c-fkm21 true
open ISTEP 
  op m200 : -> Message3 .
 --
 op c20 : -> Expo .
 ops p10 q10 : -> Principal .
 eq c-fkm21(s,p10,q10,c20) = true .
 --
 --
 eq s' = fkm21(s,p10,q10,c20) .
 red istep500(m200) .
close


-- fkm22
-- c-fkm21 false
open ISTEP 
  op m200 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep500(m200) .
close

-- fkm22
-- c-fkm21 true
open ISTEP 
  op m200 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep500(m200) .
close



-- fkm31
-- c-fkm31 false
open ISTEP 
  op m200 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep500(m200) .
close



-- fkm31
-- c-fkm31 true
open ISTEP 
  op m200 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq (m200 = me3(intruder,p10,q10,c30)) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep500(m200) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  op m200 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (m200 = me3(intruder,p10,q10,c30)) = true .
 eq creator(m200) = intruder .
 eq sender(m200) = p10 .
 eq receiver(m200) = q10 .
 eq cipher3(m200) = c30 .
 --
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red inv340(s,c30) and inv170(s,expo(c30)) implies istep500(m200) .
close


-- fkm32
-- c-fkm32 false
open ISTEP 
  op m200 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep500(m200) .
close



-- fkm32
-- c-fkm32 true
open ISTEP 
  op m200 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq (m200 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep500(m200) .
close



-- fkm32
-- c-fkm32 true
open ISTEP 
  op m200 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq e20 \in expos(s) = true .
 --
 -- eq (m200 = me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10))) = true .
 eq creator(m200) = intruder .
 eq sender(m200) = p10 .
 eq receiver(m200) = q10 .
 eq rand(hash(cipher3(m200))) = r10 .
 eq expo(hash(cipher3(m200))) = e10 .
 eq expo(cipher3(m200)) = e20 .
 eq dpar(cipher3(m200)) = d10 .
 --
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv170(s,e20) implies istep500(m200) .
close
