--
-- fkm22
-- c-fkm22 false
-- f
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq m100 \in network(s) = false .
 -- eq m221 \in network(s) = true .
 -- eq m222 \in network(s) = false .
 -- eq m30 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 false
-- tf
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 -- eq m222 \in network(s) = false .
 -- eq m30 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close

--
-- fkm22
-- c-fkm22 false
-- ttf
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 -- eq m30 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 false
-- tttf
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close

--
-- fkm22
-- c-fkm22 false
-- tttt
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 -- 149 secs
 red istep800(m100,m221,m222,m30) .
close



--
-- fkm22
-- c-fkm22 true
-- f
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 true
-- tf
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 true
-- tttt
--
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 -- 148 secs
 red istep800(m100,m221,m222,m30) .
close



--
-- fkm22
-- c-fkm22 true
-- by case1
--
-- m221 not generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case1
 eq r10 \in randsi(s) = true .
 eq r20 \in randsi(s) = true .
 --
 eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m221) = false .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 true
-- by case2
-- 
-- m221 not generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case2
 eq r10 \in rands(s) = false .
 eq r20 \in randsi(s) = true .
 --
 eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m221) = false .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 true
-- by case1
-- 
-- m221 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case1
 eq r10 \in randsi(s) = true .
 eq r20 \in randsi(s) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m221) = true .
 eq creator(m221) = intruder .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq expo(m221) = expo(r10,maptopoint(r20,d10)) .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 true
-- by case2
-- 
-- m221 generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 -- case2
 eq r10 \in rands(s) = false .
 eq r20 \in randsi(s) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m221) = true .
 eq creator(m221) = intruder .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq expo(m221) = expo(r10,maptopoint(r20,d10)) .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close



-- TTFT komplett

--
-- fkm22
-- c-fkm22 true
-- ttft
-- m222 generated
-- hash not equal
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m222) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(r10,maptopoint(r20,d10)))) = false .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 true
-- 
-- m222 gnerated
-- hash equal by case 1
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m222) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(r10,maptopoint(r20,d10)))) = true .
 -- case 1
 eq rand(hash(cipher3(m30))) = rand(expo(m221)) .
 eq expo(hash(cipher3(m30))) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (creator(m221) = intruder) = false .
 eq (creator(m221) = creator(m30)) = false .
 eq expo(m221) = expo(cipher3(m30)) .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 -- 3 secs
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red inv210(s,m30) and 
    inv740(s,m221,m30) and 
    inv130(s,m30) 
    implies istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 true
-- 
-- m222 generated
-- hash not equal by case 1
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m222) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(r10,maptopoint(r20,d10)))) = true .
 -- case 1
 eq rand(hash(cipher3(m30))) = rand(expo(m221)) .
 eq expo(hash(cipher3(m30))) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (creator(m221) = intruder) = false .
 eq (creator(m221) = creator(m30)) = false .
 eq (expo(m221) = expo(cipher3(m30))) = false .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close



--
-- fkm22
-- c-fkm22 true
-- 
-- m222 generated
-- hash not equal by case 1
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m222) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(r10,maptopoint(r20,d10)))) = true .
 -- case 1
 eq rand(hash(cipher3(m30))) = rand(expo(m221)) .
 eq expo(hash(cipher3(m30))) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (creator(m221) = intruder) = false .
 eq creator(m221) = creator(m30) .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 true
-- 
-- m222 generated
-- hash not equal by case 1
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m222) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(r10,maptopoint(r20,d10)))) = true .
 -- case 1
 eq rand(hash(cipher3(m30))) = rand(expo(m221)) .
 eq expo(hash(cipher3(m30))) = expo(r10,maptopoint(r20,d10)) .
 --
 eq creator(m221) = intruder .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close

--
--
--
--


--
-- fkm22
-- c-fkm22 true
-- 
-- m222 generated
-- hash not equal by case 2
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m222) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(r10,maptopoint(r20,d10)))) = true .
 -- case 2
 eq rand(hash(cipher3(m30))) = r10 .
 eq rand(expo(hash(cipher3(m30)))) = rand(expo(m221)) .
 eq rand(point(expo(hash(cipher3(m30))))) = r20 .
 eq dpar(point(expo(hash(cipher3(m30))))) = d10 .
 --
 eq (creator(m221) = intruder) = false .
 eq (creator(m221) = creator(m30)) = false .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 -- 5 secs
 red inv700(s,m221,m30) and inv430(s,m221,r20) implies istep800(m100,m221,m222,m30) .
close



--
-- fkm22
-- c-fkm22 true
-- 
-- m222 generated
-- hash not equal by case 2
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m222) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(r10,maptopoint(r20,d10)))) = true .
 -- case 2
 eq rand(hash(cipher3(m30))) = r10 .
 eq rand(expo(hash(cipher3(m30)))) = rand(expo(m221)) .
 eq rand(point(expo(hash(cipher3(m30))))) = r20 .
 eq dpar(point(expo(hash(cipher3(m30))))) = d10 .
 --
 eq (creator(m221) = intruder) = false .
 eq creator(m221) = creator(m30) .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 true
-- 
-- m222 generated
-- hash not equal by case 2
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m222) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(r10,maptopoint(r20,d10)))) = true .
 -- case 2
 eq rand(hash(cipher3(m30))) = r10 .
 eq rand(expo(hash(cipher3(m30)))) = rand(expo(m221)) .
 eq rand(point(expo(hash(cipher3(m30))))) = r20 .
 eq dpar(point(expo(hash(cipher3(m30))))) = d10 .
 --
 eq creator(m221) = intruder .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


--
-- fkm22
-- c-fkm22 true
-- 
-- m222 generated
-- hash not equal by case 2
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m222) = true .
 eq creator(m222) = intruder .
 eq sender(m222) = p10 .
 eq receiver(m222) = q10 .
 eq expo(m222) = expo(r10,maptopoint(r20,d10)) .
 --
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(r10,maptopoint(r20,d10)))) = false .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close




-- TTTF ende


-- fkm22
-- c-fkm22 true
-- by case2
-- 
-- m221 ng here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m221) = false .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm22
-- c-fkm22 true
-- by case2
-- 
-- m221 g here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 ops r10 r20 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm22(s,p10,q10,r10,r20,d10) = true .
 --
 -- eq (me2(intruder,p10,q10,expo(r10,maptopoint(r20,d10))) = m221) = true .
 eq creator(m221) = intruder .
 eq sender(m221) = p10 .
 eq receiver(m221) = q10 .
 eq expo(m221) = expo(r10,maptopoint(r20,d10)) .
 --
 eq m100 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm22(s,p10,q10,r10,r20,d10) .
 red istep800(m100,m221,m222,m30) .
close


