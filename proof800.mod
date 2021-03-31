-- I) Base case
open INV
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
  red inv800(init,m100,m221,m222,m3) .
close

-- sdm1
-- c-sdm1 is false
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 -- the following reduction is slow (> 78 sec)
 -- outcomment for full proof
 red istep800(m100,m221,m222,m300) .
close


-- sdm1
-- c-sdm1 is false
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm1
-- c-sdm1 is false
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is false
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = false .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is false
-- f
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 eq m300 \in network(s) = false .
 eq c-sdm1(s,p10,q10,r10,d10) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close



-- sdm1
-- c-sdm1 is true
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 -- the following reduction is slow (> 8 sec)
 -- outcomment for full proof
 red istep800(m100,m221,m222,m300) .
close


-- sdm1
-- c-sdm1 is true
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is true
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is true
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq m300 \in network(s) = true .
 eq m100 \in network(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

-- sdm1
-- c-sdm1 is true
-- f
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op nw10 : -> Network .
 ops p10 q10 : -> Principal .
 op d10 : -> Dompar .
 op r10 : -> Random .
 -- eq c-sdm1(s,p10,q10,r10,d10) = true .
 eq r10 \in rands(s) = true .
 eq m300 \in network(s) = false .
 eq s' = sdm1(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m300) .
close

--
-- sdm2
-- 
--

-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- the following reduction is correct, but needs
 -- approx 147 secs on a core i7 @ 2.9 Ghz
 -- uncomment for full proof
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- the following reduction is correct, but needs
 -- approx 147 secs on a core i7 @ 2.9 Ghz
 -- uncomment for full proof
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- the following reduction is correct, but needs
 -- approx 147 secs on a core i7 @ 2.9 Ghz
 -- uncomment for full proof
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- the following reduction is correct, but needs
 -- approx 147 secs on a core i7 @ 2.9 Ghz
 -- uncomment for full proof
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- the following reduction is correct, but needs
 -- approx 75 secs on a core i7 @ 2.9 Ghz
 -- uncomment for full proof
 red istep800(m100,m221,m222,m300) .
close



-- sdm2
-- c-sdm2 is true
--  eq m221 \in network(s) = true .
-- eq m222 \in network(s) = true .
-- eq m30 \in network(s) = true .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = true .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- 150 sec  
 red istep800(m100,m221,m222,m300) .
close

-- sdm2
-- c-sdm2 is true
--  eq m221 \in network(s) = true .
-- eq m222 \in network(s) = true .
-- eq m30 \in network(s) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops p10 q10 : -> Principal .
 op r10 : -> Random .
 op d10 : -> Dompar .
 eq c-sdm2(s,p10,q10,r10,m10) = true .
 --
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m300 \in network(s) = false .
 --
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m300) .
close


-- sdm2
-- c-sdm2 is true
--  eq m221 \in network(s) = true .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
-- eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) 
-- eq rand(expo(m222)) = r10 .
-- + Lemma 38 
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m300 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m300 \in network(s) = true .
 --
  eq hash(cipher3(m300)) = hash(rand(expo(m221)),expo(m222)) .
  eq rand(expo(m222)) = r10 .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  -- ~ 38 secs
  red inv510(s,m300) implies istep800(m100,m221,m222,m300) .
close

-- sdm2
-- c-sdm2 is true
--  eq m221 \in network(s) = true .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
-- eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) 
-- eq (rand(expo(m222)) = r10) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
  eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
  eq (rand(expo(m222)) = r10) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close

-- sdm2
-- c-sdm2 is true
--  eq m221 \in network(s) = true .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
-- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = false 
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 --
  eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close

-- sdm2
-- c-sdm2 is true
--  eq m221 \in network(s) = true .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close


-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = true .
-- eq m30 \in network(s) = true .
-- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
  eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close


-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = true .
-- eq m30 \in network(s) = true .
-- eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
--  eq (rand(expo(m221)) = r10) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
  eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
  eq (rand(expo(m221)) = r10) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close


-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = true .
-- eq m30 \in network(s) = true .
-- eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
-- eq rand(expo(m221)) = r10 .
-- + Lemma 37
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
  eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
  eq rand(expo(m221)) = r10 .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  -- approx 25 secs
  red inv470(s,m30) implies istep800(m100,m221,m222,m30) .
close

-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = true .
-- eq m30 \in network(s) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close


-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close


-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
--  eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
-- eq rand(expo(m221)) = r10 .
-- + Lemma 37
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 -- eq (hash(cipher3(m30)) = hash(rand(expo(cipher3(m30))),expo(m222))) = true .
 eq rand(expo(m221)) = r10 .
 -- added simply for performance reasons: 
 eq m100 \in network(s) = true .
 eq sender(m221) = creator(m221) .
 eq (creator(m221) = creator(m30)) = false .
 eq expo(m221) = expo(cipher3(m30)) .
 eq dpar(cipher1(m100)) = dpar(point(expo(m221))) .
 --
 eq rand(expo(cipher3(m30))) = r10 .
 -- 
 eq s' = sdm2(s,p10,q10,r10,m10) .
 -- red inv500(s,m30) .
 -- 805 secs
 red inv500(s,m30) implies istep800(m100,m221,m222,m30) .
close


-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
--  eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
-- eq rand(expo(m221)) = r10 .
-- + Lemma 37
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 -- eq (hash(cipher3(m30)) = hash(rand(expo(cipher3(m30))),expo(m222))) = true .
 eq rand(expo(m221)) = r10 .
 -- added
 eq m100 \in network(s) = true .
 eq sender(m221) = creator(m221) .
 eq (creator(m221) = creator(m30)) = false .
 eq expo(m221) = expo(cipher3(m30)) .
 eq dpar(cipher1(m100)) = dpar(point(expo(m221))) .
 --
 eq (rand(expo(cipher3(m30))) = r10) = false .
 -- 
 eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
--  eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
-- eq rand(expo(m221)) = r10 .
-- + Lemma 37
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 eq rand(expo(m221)) = r10 .
 -- added
 eq m100 \in network(s) = true .
 eq sender(m221) = creator(m221) .
 eq (creator(m221) = creator(m30)) = false .
 eq expo(m221) = expo(cipher3(m30)) .
 -- nf for expo m221
 eq (dpar(cipher1(m100)) = dpar(point(expo(cipher3(m30))))) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
 red istep800(m100,m221,m222,m30) .
close



-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
--  eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
-- eq rand(expo(m221)) = r10 .
-- + Lemma 37
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 eq rand(expo(m221)) = r10 .
 -- added
 eq m100 \in network(s) = true .
 eq sender(m221) = creator(m221) .
 eq (creator(m221) = creator(m30)) = false .
 eq (expo(m221) = expo(cipher3(m30))) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close


-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
--  eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
-- eq rand(expo(m221)) = r10 .
-- + Lemma 37
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 eq rand(expo(m221)) = r10 .
 -- added
 eq m100 \in network(s) = true .
 eq sender(m221) = creator(m221) .
 eq creator(m221) = creator(m30) .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close



-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
--  eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
-- eq rand(expo(m221)) = r10 .
-- + Lemma 37
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 eq rand(expo(m221)) = r10 .
 -- added
 eq m100 \in network(s) = true .
 eq (sender(m221) = creator(m221)) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close


-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
--  eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
-- eq rand(expo(m221)) = r10 .
-- + Lemma 37
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 eq rand(expo(m221)) = r10 .
 -- added
 eq m100 \in network(s) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close






-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
-- eq hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222)) .
-- eq (rand(expo(m221)) = r10) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = true .
 eq (rand(expo(m221)) = r10) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close


-- sdm2
-- c-sdm2 is true
-- eq m221 \in network(s) = false .
-- eq m222 \in network(s) = false .
-- eq m30 \in network(s) = true .
-- eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
  op m10 : -> Message1 .
  ops p10 q10 : -> Principal .
  op r10 : -> Random .
  op d10 : -> Dompar .
  eq c-sdm2(s,p10,q10,r10,m10) = true .
  eq r10 \in rands(s) = false .
  eq m10 \in network(s) = true .
 --
 eq m221 \in network(s) = false .
 eq m222 \in network(s) = false .
 eq m30 \in network(s) = true .
 eq (hash(cipher3(m30)) = hash(rand(expo(m221)),expo(m222))) = false .
 --
  eq s' = sdm2(s,p10,q10,r10,m10) .
  red istep800(m100,m221,m222,m30) .
close


--
-- sdm3
-- 
--

-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 -- 78 secs
 red istep800(m100,m221,m222,m30) .
close

-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close

-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close

-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .

 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close



-- sdm3
-- c-sdm3 is false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq m100 \in network(s) = false .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = false .
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close



-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = true .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 -- 158 secs
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = true .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 -- 156 secs
 red istep800(m100,m221,m222,m30) .
close

-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = true .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = true .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 --
 eq m30 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close

-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = false .
-- eq m221 \in network(s) = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = false .
-- eq m221 \in network(s) = true .
-- eq m222 \in network(s) = false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close




-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = false .
-- eq m221 \in network(s) = true .
-- eq m222 \in network(s) = true
-- m30 is not generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),expo(m2001),dpar(cipher1(m10)))) = m30) = false .

 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- c-sdm3 is true
-- eq m30 \in network(s) = false .
-- eq m221 \in network(s) = true .
-- eq m222 \in network(s) = true
-- m30 is generated here
-- tfff
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq (m221 = m2001) = false . 
 eq (rand(point(expo(m222))) = rand(point(expo(m221)))) = false .
 eq (dpar(point(expo(m2001))) = dpar(point(expo(m222)))) = false .
 -- eq rand(point(expo(m221))) = rand(point(expo(m2001))) .

 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close

--
-- tfftt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq (m221 = m2001) = false . 
 eq (rand(point(expo(m222))) = rand(point(expo(m221)))) = false .
 eq dpar(point(expo(m2001))) = dpar(point(expo(m222))) .
 eq rand(point(expo(m221))) = rand(point(expo(m2001))) .

 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- m3 generated here
-- tfftf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq (m221 = m2001) = false . 
 eq (rand(point(expo(m222))) = rand(point(expo(m221)))) = false .
 eq dpar(point(expo(m2001))) = dpar(point(expo(m222))) .
 eq (rand(point(expo(m221))) = rand(point(expo(m2001)))) = false .

 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- m3 generated here
-- tftt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq (m221 = m2001) = false . 
 eq rand(point(expo(m222))) = rand(point(expo(m221))) .
 eq dpar(point(expo(m2001))) = dpar(point(expo(m222))) .
 -- eq (rand(point(expo(m221))) = rand(point(expo(m2001)))) = false .

 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- m3 generated here
-- tftf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq (m221 = m2001) = false . 
 eq rand(point(expo(m222))) = rand(point(expo(m221))) .
 eq (dpar(point(expo(m2001))) = dpar(point(expo(m222)))) = false .
 -- eq (rand(point(expo(m221))) = rand(point(expo(m2001)))) = false .

 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- m3 generated here
-- tt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = true .
 eq m221 = m2001 . 
 -- ) = false . 
 -- eq rand(point(expo(m222))) = rand(point(expo(m221))) .
 -- eq (dpar(point(expo(m2001))) = dpar(point(expo(m222)))) = false .
 -- eq (rand(point(expo(m221))) = rand(point(expo(m2001)))) = false .

 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close


-- sdm3
-- m3 generated here
-- f
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Message1 .
 ops m2001 m2002 : -> Message2 .
 ops p10 q10 : -> Principal .
 eq c-sdm3(s,p10,q10,m10,m2001,m2002) = true .
 eq m10 \in network(s) = true .
 eq m2001 \in network(s) = true .
 eq m2002 \in network(s) = true .
 eq rand(cipher1(m10)) = rand(point(expo(m2002))) .
 --
 eq m30 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 --
 -- eq (me3(p10,p10,q10,mac(hash(rand(expo(m2002)),expo(m2001)),
 --                               expo(m2001),dpar(cipher1(m10)))) = m30) = true .
 eq creator(m30) = p10 .
 eq sender(m30) = p10 .
 eq receiver(m30) = q10 .
 eq hash(cipher3(m30)) = hash(rand(expo(m2002)),expo(m2001)) .
 eq expo(cipher3(m30)) = expo(m2001) .
 eq dpar(cipher3(m30)) = dpar(cipher1(m10)) .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = sdm3(s,p10,q10,m10,m2001,m2002) .
 red istep800(m100,m221,m222,m30) .
close

--
-- fkm11
--

-- fkm11
-- c-fkm11 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op c10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,c10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 -- 
 eq s' = fkm11(s,p10,q10,c10) .
 -- 145 secs
 -- red istep800(m100,m221,m222,m30) .
close

-- fkm11
-- c-fkm11 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 -- 
 eq s' = fkm11(s,p10,q10,m10) .
 -- 77 secs
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 -- 
 eq s' = fkm11(s,p10,q10,m10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm11
-- c-fkm11 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,m10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 -- 
 eq s' = fkm11(s,p10,q10,m10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm11
-- c-fkm11 false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 eq c-fkm11(s,p10,q10,m10) = false .
 --
 eq m100 \in network(s) = false .
 -- 
 eq s' = fkm11(s,p10,q10,m10) .
 red istep800(m100,m221,m222,m30) .
close



-- fkm11
-- c-fkm11 true
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq m10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = true . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq s' = fkm11(s,p10,q10,m10) .
 -- 
 -- about 76 secs
 -- red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq m10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = true . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 eq s' = fkm11(s,p10,q10,m10) .
 -- 
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq m10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = true . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 eq s' = fkm11(s,p10,q10,m10) .
 -- 
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq m10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = true . 
 eq m221 \in network(s) = false .
 eq s' = fkm11(s,p10,q10,m10) .
 -- 
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- fttt
-- m100 is not gen. here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq m10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 eq (me1(intruder,p10,q10,m10) = m100) = false .
 --
 eq s' = fkm11(s,p10,q10,m10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm11
-- c-fkm11 true
-- fttt
-- m100 is gen. here
--  eq creator(m221) = intruder .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq m10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 -- eq (me1(intruder,p10,q10,cipher1(m10)) = m100) = true
 eq creator(m100) = intruder .
 eq sender(m100) = p10 .
 eq receiver(m100) = q10 .
 eq rand(cipher1(m100)) = rand(m10) .
 eq dpar(m10) = dpar(cipher1(m100)) .
 --
 eq creator(m221) = intruder .
 --
 eq s' = fkm11(s,p10,q10,m10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- fttt
-- m100 is gen. here
--  eq creator(m221) = intruder = false .
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq m10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 -- eq (me1(intruder,p10,q10,cipher1(m10)) = m100) = true
 eq creator(m100) = intruder .
 eq sender(m100) = p10 .
 eq receiver(m100) = q10 .
 eq rand(cipher1(m100)) = rand(m10) .
 eq dpar(m10) = dpar(cipher1(m100)) .
 --
 eq (creator(m221) = intruder) = false .
 --
 eq s' = fkm11(s,p10,q10,m10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- fttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq m10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm11(s,p10,q10,m10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm11
-- c-fkm11 true
-- ftf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq m10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm11(s,p10,q10,m10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm11
-- c-fkm11 true
-- ff
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op m10 : -> Cipher1 .
 ops p10 q10 : -> Principal .
 -- eq c-fkm11(s,p10,q10,m10) = true .
 eq m10 \in cipher1s(s) = true .
 --
 eq m100 \in network(s) = false . 
 eq m221 \in network(s) = false .
 --
 eq s' = fkm11(s,p10,q10,m10) .
 red istep800(m100,m221,m222,m30) .
close

--
--  fkm12
--
--


-- fkm12
-- c-fkm12 false
-- f
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m100 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm12
-- c-fkm12 false
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm12
-- c-fkm12 false
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close

-- fkm12
-- c-fkm12 false
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 false
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = false .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 -- 77 seconds
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- ff
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- ftf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- fttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- fttt
-- m100 not generated here
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 eq (me1(intruder,p10,q10,enc(r10,d10)) = m100) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- fttt
-- m100 generated here
-- creator m221 = intruder
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 -- eq (me1(intruder,p10,q10,enc(r10,d10)) = m100) = true .
 eq creator(m100) = intruder .
 eq sender(m100) = p10 .
 eq receiver(m100) = q10 .
 eq rand(cipher1(m100)) = r10 .
 eq dpar(cipher1(m100)) = d10 . 
 --
 eq creator(m221) = intruder .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- fttt
-- m100 generated here
-- creator m221 = intruder = false
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = false .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 -- eq (me1(intruder,p10,q10,enc(r10,d10)) = m100) = true .
 eq creator(m100) = intruder .
 eq sender(m100) = p10 .
 eq receiver(m100) = q10 .
 eq rand(cipher1(m100)) = r10 .
 eq dpar(cipher1(m100)) = d10 . 
 --
 eq (creator(m221) = intruder) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- tf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close



-- fkm12
-- c-fkm12 true
-- ttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 -- red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- tttf
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = false .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 red istep800(m100,m221,m222,m30) .
close


-- fkm12
-- c-fkm12 true
-- tttt
open ISTEP 
  ops m221 m222 : -> Message2 .
  op m100 : -> Message1 .
  op m30 : -> Message3 .
 --
 op r10 : -> Random .
 op d10 : -> Dompar .
 ops p10 q10 : -> Principal .
 eq c-fkm12(s,p10,q10,r10,d10) = true .
 --
 eq m100 \in network(s) = true .
 eq m221 \in network(s) = true .
 eq m222 \in network(s) = true .
 eq m30 \in network(s) = true .
 --
 eq s' = fkm12(s,p10,q10,r10,d10) .
 -- 76 secs
 red istep800(m100,m221,m222,m30) .
close

