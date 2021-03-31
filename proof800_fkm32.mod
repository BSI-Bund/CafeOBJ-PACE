--
-- fkm32
-- c-fkm32 false
-- tttt
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 -- 140 secs
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 false
-- tttf
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 false
-- ttf
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 false
-- tf
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 false
-- f
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = false .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep800(m100,m221,m222,m300) .
close


-- fkm32
-- c-fkm32 is true


--
-- fkm32
-- c-fkm32 true
-- f
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 true
-- tf
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 true
-- ttf
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 true
-- tttt
-- ng
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 -- 140 secs
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 true
-- tttt
-- g
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 -- eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = mac(hash(r10,e10),e20,d10) .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = true .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 -- 140 secs
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 true
-- tttf
-- ng
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 -- 140 secs
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 true
-- tttf
-- g
-- hash not equal
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 -- eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = mac(hash(r10,e10),e20,d10) .
 --
 eq (hash(r10,e10) = hash(rand(expo(m221)),expo(m222))) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 true
-- tttf
-- g
-- hash equal by case 1
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 -- eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = mac(hash(r10,e10),e20,d10) .
 --
 -- eq (hash(r10,e10) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case 1
 eq rand(expo(m221)) = r10 .
 eq expo(m222) = e10 .
 eq r10 \in rands(s) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 -- 1 sec
 red inv160(s,m221) implies istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 true
-- tttf
-- g
-- hash equal by case 1
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 -- eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = mac(hash(r10,e10),e20,d10) .
 --
 -- eq (hash(r10,e10) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case 1
 eq rand(expo(m221)) = r10 .
 eq expo(m222) = e10 .
 eq r10 \in randsi(s) = true .
 eq (creator(m221) = intruder) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 -- 1 sec
 red inv320(s,m221,r10) implies istep800(m100,m221,m222,m300) .
close


--
-- fkm32
-- c-fkm32 true
-- tttf
-- g
-- hash equal by case 1
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 --
 -- eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = mac(hash(r10,e10),e20,d10) .
 --
 -- eq (hash(r10,e10) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case 1
 eq rand(expo(m221)) = r10 .
 eq expo(m222) = e10 .
 eq r10 \in randsi(s) = true .
 eq creator(m221) = intruder .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 -- 1 sec
 red istep800(m100,m221,m222,m300) .
close

--
-- fkm32
-- c-fkm32 true
-- tttf
-- g
-- hash equal by case 2
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq e10 \in expos(s) = true .
 --
 -- eq r10 \in rands(s) = false .
 --
 -- eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = mac(hash(r10,e10),e20,d10) .
 --
 -- eq (hash(r10,e10) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case 2
 eq rand(expo(m221)) = rand(e10) .
 eq rand(expo(m222)) = r10 .
 eq rand(point(e10)) = rand(point(expo(m222))) .
 eq dpar(point(e10)) = dpar(point(expo(m222))) .
 --
 eq creator(m221) = intruder .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red istep800(m100,m221,m222,m300) .
close



--
-- fkm32
-- c-fkm32 true
-- tttf
-- g
-- hash equal by case 2
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op r10 : -> Random .
 ops e10 e20 : -> Expo .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm32(s,p10,q10,r10,e10,e20,d10) = true .
 eq e10 \in expos(s) = true .
 --
 -- eq r10 \in rands(s) = false .
 --
 -- eq (me3(intruder,p10,q10,mac(hash(r10,e10),e20,d10)) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = mac(hash(r10,e10),e20,d10) .
 --
 -- eq (hash(r10,e10) = hash(rand(expo(m221)),expo(m222))) = true .
 -- case 2
 eq rand(expo(m221)) = rand(e10) .
 eq rand(expo(m222)) = r10 .
 eq rand(point(e10)) = rand(point(expo(m222))) .
 eq dpar(point(e10)) = dpar(point(expo(m222))) .
 --
 eq (creator(m221) = intruder) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = fkm32(s,p10,q10,r10,e10,e20,d10) .
 red inv600(s,m221,e10) implies istep800(m100,m221,m222,m300) .
close
