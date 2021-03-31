--
-- fkm31
--
--

-- fkm31
-- c-fkm31 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 eq sender(m100) = creator(m221) .
 eq creator(m100) = creator(m221) .
 eq receiver(m100) = sender(m222) .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 -- 4 secs
 red istep800(m100,m221,m222,m300) .
close


-- fkm31
-- c-fkm31 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 eq sender(m100) = creator(m221) .
 eq creator(m100) = creator(m221) .
 eq (receiver(m100) = sender(m222)) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 -- 8 secs
 red istep800(m100,m221,m222,m300) .
close

-- fkm31
-- c-fkm31 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 eq sender(m100) = creator(m221) .
 eq (creator(m100) = creator(m221)) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 -- 17 secs
 red istep800(m100,m221,m222,m300) .
close


-- fkm31
-- c-fkm31 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 eq (sender(m100) = creator(m221)) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 -- 27 secs
 red istep800(m100,m221,m222,m300) .
close


-- fkm31
-- c-fkm31 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close


-- fkm31
-- c-fkm31 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close


-- fkm31
-- c-fkm31 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = false .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close


--
-- c-fkm31 = true
--

-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close


-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm31(s,p10,q10,c30) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close

-- fkm31
-- c-fkm31 true
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm31(s,p10,q10,m30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = true .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 -- 142 secs
 red istep800(m100,m221,m222,m300) .
close


-- fkm31
-- c-fkm31 true
-- tttf
-- m300 not gen. here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm31(s,p10,q10,c30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 eq (me3(intruder,p10,q10,c30) = m300) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close


-- fkm31
-- c-fkm31 true
-- tttf
-- m300 gen. here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm31(s,p10,q10,m30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (me3(intruder,p10,q10,c30) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq creator(m221) = intruder .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close



-- fkm31
-- c-fkm31 true
-- tttf
-- m300 gen. here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm31(s,p10,q10,m30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (me3(intruder,p10,q10,c30) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq (creator(m221) = intruder) = false .
 eq (rand(hash(c30)) = rand(expo(m221))) = false .

 eq (hash(c30) = hash(rand(expo(m221)),expo(m222))) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close



-- fkm31
-- c-fkm31 true
-- tttf
-- m300 gen. here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm31(s,p10,q10,m30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (me3(intruder,p10,q10,c30) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq (creator(m221) = intruder) = false .
 eq (rand(hash(c30)) = rand(expo(m221))) = false .

 eq (hash(c30) = hash(rand(expo(m221)),expo(m222))) = true .
 eq (rand(expo(hash(c30))) = rand(expo(m221))) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red inv220(s,hash(c30),rand(expo(m221)),expo(m222)) implies istep800(m100,m221,m222,m300) .
close



-- fkm31
-- c-fkm31 true
-- tttf
-- m300 gen. here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm31(s,p10,q10,m30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (me3(intruder,p10,q10,c30) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq (creator(m221) = intruder) = false .
 eq (rand(hash(c30)) = rand(expo(m221))) = false .

 eq (hash(c30) = hash(rand(expo(m221)),expo(m222))) = true .
 eq rand(expo(hash(c30))) = rand(expo(m221)) .
 eq (point(expo(hash(c30))) = point(expo(m222))) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red inv220(s,hash(c30),rand(expo(m221)),expo(m222)) implies istep800(m100,m221,m222,m300) .
close



-- fkm31
-- c-fkm31 true
-- tttf
-- m300 gen. here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm31(s,p10,q10,m30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (me3(intruder,p10,q10,c30) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq (creator(m221) = intruder) = false .
 eq (rand(hash(c30)) = rand(expo(m221))) = false .

 eq (hash(c30) = hash(rand(expo(m221)),expo(m222))) = true .
 eq rand(expo(hash(c30))) = rand(expo(m221)) .
 eq point(expo(hash(c30))) = point(expo(m222)) .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red inv350(s,c30) and inv600(s,m221,expo(hash(c30))) implies istep800(m100,m221,m222,m300) .
close



-- fkm31
-- c-fkm31 true
-- tttf
-- m300 gen. here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm31(s,p10,q10,m30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (me3(intruder,p10,q10,c30) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq (creator(m221) = intruder) = false .
 eq rand(hash(c30)) = rand(expo(m221)) .
 eq expo(hash(c30)) = expo(m221) .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close



-- fkm31
-- c-fkm31 true
-- tttf
-- m300 gen. here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm31(s,p10,q10,m30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (me3(intruder,p10,q10,c30) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq (creator(m221) = intruder) = false .
 eq rand(hash(c30)) = rand(expo(m221)) .
 eq (expo(hash(c30)) = expo(m221)) = false .

 eq (expo(m221) = expo(c30)) = false .
 --
 eq s' = fkm31(s,p10,q10,c30) .
 red istep800(m100,m221,m222,m300) .
close




-- fkm31
-- c-fkm31 true
-- tttf
-- m300 gen. here
-- + 39c
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op c30 : -> Cipher3 .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 -- eq c-fkm31(s,p10,q10,m30) = true .
 eq c30 \in cipher3s(s) = true .
 --
 -- eq (me3(intruder,p10,q10,c30) = m300) = true .
 eq creator(m300) = intruder .
 eq sender(m300) = p10 .
 eq receiver(m300) = q10 .
 eq cipher3(m300) = c30 .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq (creator(m221) = intruder) = false .
 eq rand(hash(c30)) = rand(expo(m221)) .
 eq (expo(hash(c30)) = expo(m221)) = false .

 eq (expo(m221) = expo(c30)) = true .

 --
 eq s' = fkm31(s,p10,q10,c30) .
 -- 3 secs
 red inv610(s,m221,c30) implies istep800(m100,m221,m222,m300) .
close
