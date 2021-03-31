-- Secrecy of Keys


--
-- Theorem 900
-- invariant 
-- "We" are P
-- If there is a Message1 M1, a Message2 M2, and a Message3 M3 in the network, such that
-- we received M3=(H,E,D) from Q and
-- We sent M2=(E) to Q and
-- hash(rand(expo(M2),E) 1(M1))))) = H
-- where M1 was either
-- sent from us to Q or
-- seemingly sent from Q to us and the creator and we knowpi
-- (and we are not talking with ourselves and we are not the intruder)
--
-- THEN
--
-- hash(cipher3(M3)) is not in hashes(S)

mod INV {
  pr(PACE)
-- arbitrary objects
  op m1 : -> Message1
  op m21 : -> Message2
  op m22 : -> Message2
  op m3 : -> Message3
  op p : -> Principal
  op q : -> Principal
  op r : -> Random
-- declare invariants to prove
  op inv100 : System Message1 -> Bool
  op inv110 : System Message2 -> Bool
  op inv120 : System Hash -> Bool
  op inv130 : System Message3 -> Bool
  op inv140 : System Random -> Bool 
  op inv150 : System Cipher1 -> Bool
  op inv160 : System Message2 -> Bool
  op inv170 : System Expo -> Bool
  op inv180 : System Message2 -> Bool 
  op inv190 : System Message2 -> Bool
  op inv200 : System Message2 Message2 Message3 -> Bool
  op inv210 : System Message3 -> Bool
  op inv220 : System Hash Random Expo -> Bool
  op inv300 : System Message1 -> Bool
  op inv310 : System Message2 -> Bool
  op inv320 : System Message2 Random -> Bool
  op inv330 : System Cipher3 -> Bool
  op inv340 : System Cipher3 -> Bool
  op inv350 : System Cipher3 -> Bool
  op inv400 : System Message1 -> Bool
  op inv410 : System Message3 -> Bool
  op inv420 : System Message1 -> Bool
  op inv430 : System Message2 Random -> Bool
  op inv440 : System Expo Random -> Bool
  op inv450 : System Cipher3 -> Bool
  op inv460 : System Message3 -> Bool
  op inv470 : System Message3 -> Bool
  op inv480 : System Message2 Message3 -> Bool 
  op inv500 : System Message3 -> Bool
  op inv510 : System Message3 -> Bool
  op inv600 : System Message2 Expo -> Bool
  op inv610 : System Message2 Cipher3 -> Bool 
  op inv620 : System Message2 Expo -> Bool 
  op inv700 : System Message2 Message3 -> Bool
  op inv710 : System Message2 Message2 -> Bool
  op inv720 : System Message2 Message2 Message3 -> Bool 
  op inv730 : System Message2 Expo -> Bool 
  op inv740 : System Message2 Message3 -> Bool
  op inv800 : System Message1 Message2 Message2 Message3 -> Bool 
  op inv900 : System Message1 Message2 Message2 Message3 Principal Principal -> Bool
-- CafeOBJ variables
  var S : System
  var M1 : Message1
  var M21 : Message2
  var M22 : Message2
  var M3 : Message3
  var M2 : Message2
  var P : Principal
  var Q : Principal
  var C1 : Cipher1
  var C3 : Cipher3
  var H : Hash
  var R : Random
  var E : Expo
-- define invariants to prove

-- 
eq inv100(S,M1) = (M1 \in network(S) and creator(M1) = intruder) 
                   implies (not (knowspi(creator(M1)))) .


-- 
eq inv110(S,M2) = M2 \in network(S) and not (creator(M2) = intruder) 
                 implies
                 creator(M2) = sender(M2) .

--
eq inv120(S,H) = H \in hashes(S) implies 
                 (rand(H) \in randsi(S) or rand(expo(H)) \in randsi(S)) .

--
eq inv130(S,M3) = M3 \in network(S) and
                  (not (creator(M3) = intruder)) implies
                  expo(hash(cipher3(M3))) = expo(cipher3(M3)) .

-- 
eq inv140(S,R) = R \in randsi(S) implies R \in rands(S) .

--
eq inv150(S,C1) = C1 \in cipher1s(S) implies rand(C1) \in rands(S) .

--
eq inv160(S,M2) = M2 \in network(S) implies rand(expo(M2)) \in rands(S) .

-- 
eq inv170(S,E) = E \in expos(S) implies rand(E) \in rands(S) .

-- 
eq inv180(S,M2) = M2 \in network(S) implies expo(M2) \in expos(S) .

--
eq inv190(S,M2) = M2 \in network(S) implies expo(M2) \in expos(S) . 

-- 
eq inv200(S,M21,M22,M3) = (hash(cipher3(M3)) = hash(rand(expo(M21)),expo(M22))) 
                          implies rand(point(expo(M22))) = rand(point(expo(hash(cipher3(M3))))) .

--
eq inv210(S,M3) = M3 \in network(S) implies cipher3(M3) \in cipher3s(S) .

-- 
eq inv220(S,H,R,E) = 
     (H = hash(R,E)) implies
       (rand(H) = R and expo(H) = E) or
       (rand(H) = rand(E) and rand(expo(H)) = R and point(expo(H)) = point(E)) .


-- uses 150
eq inv300(S,M1) = M1 \in network(S) implies rand(cipher1(M1)) \in rands(S) .

-- uses 300
eq inv310(S,M2) = M2 \in network(S) implies rand(point(expo(M2))) \in rands(S) .

-- uses 160 
eq inv320(S,M2,R) = ((not (creator(M2) = intruder)) and creator(M2) = sender(M2) 
                            and M2 \in network(S)
                            and rand(expo(M2)) = R )
                           implies (not (R \in randsi(S))) .

-- uses 160
eq inv330(S,C3) = C3 \in cipher3s(S) implies rand(hash(C3)) \in rands(S) .

-- uses 180
eq inv340(S,C3) = C3 \in cipher3s(S) implies expo(C3) \in expos(S) .

-- uses 180
eq inv350(S,C3) = C3 \in cipher3s(S) implies expo(hash(C3)) \in expos(S) .



-- uses 140 300
eq inv400(S,M1) = 
    (M1 \in network(S) and rand(cipher1(M1)) \in randsi(S)) 
     implies 
     creator(M1) = intruder .


-- uses 350  and 180
eq inv410(S,M3) = M3 \in network(S) implies
                  expo(hash(cipher3(M3))) \in expos(S) or
                  (rand(expo(hash(cipher3(M3)))) \in randsi(S) 
                   and rand(point(expo(hash(cipher3(M3))))) \in randsi(S)) .

 -- uses 140 and 300 
eq inv420(S,M1) = M1 \in network(S) and knowspi(creator(M1)) 
                  implies not (rand(cipher1(M1)) \in randsi(S)) .

-- uses 420 310 
eq inv430(S,M2,R) = ((not (creator(M2) = intruder)) and 
                    creator(M2) = sender(M2)
                    and M2 \in network(S)
                    and rand(point(expo(M2))) = R )
                    implies (not (R \in randsi(S))) .

-- uses 140 170 
eq inv440(S,E,R) = E \in expos(S)
                   and rand(E) \in randsi(S) 
                   and rand(point(E)) = R
                   implies R \in randsi(S) .

-- uses 160 170 
eq inv450(S,C3) = C3 \in cipher3s(S) implies rand(expo(hash(C3))) \in rands(S) .


-- uses 320 470
eq inv460(S,M3) = M3 \in network(S) and (not (creator(M3) = intruder)) implies
                  (not (rand(hash(cipher3(M3))) \in randsi(S))) .

-- uses 160 and 330
eq inv470(S,M3) = M3 \in network(S) implies rand(hash(cipher3(M3))) \in rands(S) .

-- uses 460, 470
eq inv480(S,M21,M3) = 
  (expo(M21) \in expos(S) and M3 \in network(S) 
   and (not (creator(M3) = intruder))
   and rand(hash(cipher3(M3))) = rand(expo(M21))
   and (not (expo(hash(cipher3(M3))) = expo(M21))))
   implies
   (not (expo(M21) = expo(cipher3(M3)))) .

-- uses 160 340 170
eq inv500(S,M3) = M3 \in network(S) implies rand(expo(cipher3(M3))) \in rands(S) .

-- uses 160 and 170 and 450
eq inv510(S,M3) = M3 \in network(S) implies rand(expo(hash(cipher3(M3)))) \in rands(S) .


-- uses 160 170 110 320
eq inv600(S,M2,E) = 
   (M2 \in network(S) and E \in expos(S) and
                    (not (creator(M2)) = intruder) and 
                    rand(expo(M2)) = rand(E)) implies
                    expo(M2) = E .

-- uses 110, 160, 320, 330
eq inv610(S,M21,C3) = 
  (M21 \in network(S) and (not (creator(M21) = intruder)) 
   and C3 \in cipher3s(S)
   and rand(hash(C3)) = rand(expo(M21)) 
   and (not (expo(hash(C3)) = expo(M21)))) implies
   (not (expo(M21) = expo(C3))) .


-- ok, needs 110, 160, 170, 320
eq inv620(S,M21,E) = M21 \in network(S) and E \in expos(S) and
                       (not (creator(M21) = intruder)) 
                       and rand(expo(M21)) = rand(E) 
                       implies
                       expo(M21) = E .


-- uses Lemmata 180 620 350 600 510
eq inv700(S,M2,M3) = M2 \in network(S) and M3 \in network(S) and
                     (not (creator(M2) = creator(M3)) and 
                     (not (creator(M2) = intruder)) and
                     rand(expo(M2)) = rand(expo(hash(cipher3(M3))))) implies
                     expo(hash(cipher3(M3))) = expo(M2) .

-- uses 110, 160, 430, 180, 440, 400, 100
eq inv710(S,M21,M22) = 
    (M21 \in network(S) and M22 \in network(S) and
     (not (creator(M21) = intruder)) and
     creator(M22) = intruder and
     rand(point(expo(M21))) = rand(point(expo(M22))))
     implies 
     not (rand(expo(M22)) \in randsi(S)) .


-- uses 110 160 320 470 510 610 480
eq inv720(S,M21,M22,M3) = 
 (M21 \in network(S) and expo(M22) \in expos(S) and M3 \in network(S)
  and (not (creator(M21) = creator(M3)))
  and expo(M21) = expo(cipher3(M3))
  and hash(cipher3(M3)) = hash(rand(expo(M21)),expo(M22)))
   implies
   (not (rand(hash(cipher3(M3))) = rand(expo(M21)))) 
   or expo(M21) = expo(M22) .

              
-- uses 110, 160, 320, 330, 470 
eq inv740(S,M2,M3) = M2 \in network(S) and cipher3(M3) \in cipher3s(S) and
                     (not (creator(M2) = intruder)) and
                     rand(expo(M2)) = rand(hash(cipher3(M3))) implies   
                     not (creator(M3) = intruder) .


-- uses 700 710 130 160 430 320 600 210 470 350 510 610 620 220
eq inv800(S,M1,M21,M22,M3) = 
 (M1 \in network(S) and M21 \in network(S) and M22 \in network(S) and M3 \in network(S)
       and sender(M21) = creator(M21) 
       and receiver(M22) = creator(M21)
       and receiver(M21) = sender(M22) 
       and receiver(M3) = creator(M21) 
       and sender(M3) = sender(M22) 
       and knowspi(creator(M21))
       and (not (creator(M21) = sender(M22)))
       and (not (creator(M21) = creator(M3)))
       and ((sender(M1) = creator(M21) and creator(M1) = creator(M21) and receiver(M1) = sender(M22)) or
            (sender(M1) = sender(M22) and receiver(M1) = creator(M21) and knowspi(creator(M1)))) 
       and expo(M21) = expo(cipher3(M3)) 
       and dpar(cipher1(M1)) = dpar(point(expo(M21))) 
       and rand(cipher1(M1)) = rand(point(expo(M21))) 
       and dpar(cipher1(M1)) = dpar(cipher3(M3)) 
       and hash(cipher3(M3)) = hash(rand(expo(M21)),expo(M22))) 
     implies 
     rand(point(expo(M22))) = rand(point(expo(M21))) .


-- ok, needs 110, 140, 420, 170, 430, 440
eq inv730(S,M21,E) =   M21 \in network(S) and E \in expos(S) and
                       (not (creator(M21) = intruder)) 
                       and rand(E) \in randsi(S) 
                       implies
                       (not (rand(point(E)) = rand(point(expo(M21))))) .
 
-- uses ... 
eq inv900(S,M1,M21,M22,M3,P,Q) =     
    (M1 \in network(S) and M21 \in network(S) and M22 \in network(S) and M3 \in network(S)
       and sender(M3) = Q and receiver(M3) = P 
       and creator(M21) = P and sender(M21) = P and receiver(M21) = Q 
       and sender(M22) = Q and receiver(M22) = P 
       and (not (creator(M21) = creator(M3)))
       and (not (P = Q))
       and knowspi(P)
       and ((sender(M1) = P and creator(M1) = P and receiver(M1) = Q) or
            (sender(M1) = Q and receiver(M1) = P and knowspi(creator(M1)))) 
       and expo(M21) = expo(cipher3(M3)) 
       and dpar(cipher1(M1)) = dpar(point(expo(M21))) 
       and rand(cipher1(M1)) = rand(point(expo(M21))) 
       and dpar(cipher1(M1)) = dpar(cipher3(M3)) 
       and hash(cipher3(M3)) = hash(rand(expo(M21)),expo(M22))) 
       implies not (hash(cipher3(M3)) \in hashes(S)) .

}

mod ISTEP {
  pr(INV)
-- arbitrary objects
  ops s s' : -> System
-- declare predicates to prove in inductive step
  op istep100 : Message1 -> Bool 
  op istep110 : Message2 -> Bool
  op istep120 : Hash -> Bool
  op istep130 : Message3 -> Bool
  op istep140 : Random -> Bool
  op istep150 : Cipher1 -> Bool
  op istep160 : Message2 -> Bool
  op istep170 : Expo -> Bool
  op istep180 : Message2 -> Bool
  op istep190 : Message2 -> Bool

  op istep200 : Message2 Message2 Message3 -> Bool 
  op istep210 : Message3 -> Bool
  op istep220 : Hash Random Expo  -> Bool 

  op istep300 : Message1 -> Bool
  op istep310 : Message2 -> Bool
  op istep320 : Message2 Random -> Bool
  op istep330 : Cipher3 -> Bool
  op istep340 : Cipher3 -> Bool
  op istep350 : Cipher3 -> Bool

  op istep410 : Message3 -> Bool 
  op istep400 : Message1 -> Bool
  op istep420 : Message1 -> Bool
  op istep430 : Message2 Random -> Bool
  op istep440 : Expo Random -> Bool
  op istep450 : Cipher3 -> Bool
  op istep460 : Message3 -> Bool 
  op istep470 : Message3 -> Bool 
  op istep480 : Message2 Message3  -> Bool 

  op istep500 : Message3 -> Bool 
  op istep510 : Message3 -> Bool 

  op istep600 : Message2 Expo -> Bool
  op istep610 : Message2 Cipher3  -> Bool 
  op istep620 : Message2 Expo  -> Bool 

  op istep700 : Message2 Message3 -> Bool
  op istep710 : Message2 Message2 -> Bool
  op istep720 : Message2 Message2 Message3 -> Bool 
  op istep730 : Message2 Expo  -> Bool 
  op istep740 : Message2 Message3 -> Bool

  op istep800 : Message1 Message2 Message2 Message3 -> Bool

  op istep900 : Message1 Message2 Message2 Message3 Principal Principal -> Bool

-- CafeOBJ variables
  var M1 : Message1
  var M2 : Message2
  var M21 : Message2
  var M22 : Message2
  var M3 : Message3
  var C1 : Cipher1
  var C3 : Cipher3
  var P : Principal
  var Q : Principal
  var H : Hash
  var R : Random 
  var E : Expo

-- define predicates to prove in inductive step
  eq istep100(M1) = inv100(s,M1) implies inv100(s',M1) .
  eq istep110(M2) = inv110(s,M2) implies inv110(s',M2) .
  eq istep120(H) = inv120(s,H) implies inv120(s',H) .
  eq istep130(M3) = inv130(s,M3) implies inv130(s',M3) .
  eq istep140(R) = inv140(s,R) implies inv140(s',R) .
  eq istep150(C1) = inv150(s,C1) implies inv150(s',C1) .
  eq istep160(M2) = inv160(s,M2) implies inv160(s',M2) .
  eq istep170(E) = inv170(s,E) implies inv170(s',E) .
  eq istep180(M2) = inv180(s,M2) implies inv180(s',M2) .
  eq istep190(M2) = inv190(s,M2) implies inv190(s',M2) .

  eq istep200(M21,M22,M3) = inv200(s,M21,M22,M3) implies inv200(s',M21,M22,M3) .
  eq istep210(M3) = inv210(s,M3) implies inv210(s',M3) .
  eq istep220(H,R,E) = inv220(s,H,R,E) implies inv220(s',H,R,E) .

  eq istep300(M1) = inv300(s,M1) implies inv300(s',M1) .
  eq istep310(M2) = inv310(s,M2) implies inv310(s',M2) .
  eq istep320(M2,R) = inv320(s,M2,R) implies inv320(s',M2,R) .
  eq istep330(C3) = inv330(s,C3) implies inv330(s',C3) .
  eq istep340(C3) = inv340(s,C3) implies inv340(s',C3) .
  eq istep350(C3) = inv350(s,C3) implies inv350(s',C3) .

  eq istep400(M1) = inv400(s,M1) implies inv400(s',M1) .
  eq istep410(M3) = inv410(s,M3) implies inv410(s',M3) .
  eq istep420(M1) = inv420(s,M1) implies inv420(s',M1) .
  eq istep430(M2,R) = inv430(s,M2,R) implies inv430(s',M2,R) .
  eq istep440(E,R) = inv440(s,E,R) implies inv440(s',E,R) .
  eq istep450(C3) = inv450(s,C3) implies inv450(s',C3) .
  eq istep460(M3) = inv460(s,M3) implies inv460(s',M3) .
  eq istep470(M3) = inv470(s,M3) implies inv470(s',M3) .
  eq istep480(M21,M3) = inv480(s,M21,M3) implies inv480(s',M21,M3) .

  eq istep500(M3) = inv500(s,M3) implies inv500(s',M3) .
  eq istep510(M3) = inv510(s,M3) implies inv510(s',M3) .

  eq istep600(M2,E) = inv600(s,M2,E) implies inv600(s',M2,E) .
  eq istep610(M21,C3) = inv610(s,M21,C3) implies inv610(s',M21,C3) .
  eq istep620(M21,E) = inv620(s,M21,E) implies inv620(s',M21,E) .

  eq istep700(M2,M3) = inv700(s,M2,M3) implies inv700(s',M2,M3) .
  eq istep720(M21,M22,M3) = inv720(s,M21,M22,M3) implies inv720(s',M21,M22,M3) .
  eq istep710(M21,M22) = inv710(s,M21,M22) implies inv710(s',M21,M22) .
  eq istep730(M21,E) = inv730(s,M21,E) implies inv730(s',M21,E) .
  eq istep740(M2,M3) = inv740(s,M2,M3) implies inv740(s',M2,M3) .

  eq istep800(M1,M21,M22,M3) = inv800(s,M1,M21,M22,M3) implies inv800(s',M1,M21,M22,M3) .

  eq istep900(M1,M21,M22,M3,P,Q) = inv900(s,M1,M21,M22,M3,P,Q) implies inv900(s',M1,M21,M22,M3,P,Q) .
}

