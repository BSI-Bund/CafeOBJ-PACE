OTS-Proof
=========

This repository contains a CafeOBJ proof that is described in the paper
[Key Secrecy of PACE with OTS/CafeOBJ](https://d-klein.github.io).


How to run:

1. Download CafeOBJ from 
   http://www.ldl.jaist.ac.jp/cafeobj/download.html

   You need: CafeOBJ system Version 1.4.8(PigNose0.99,p33)

2. Extract CafeOBJ, for example to ~/cafeobj-1.4

3. To run the proof, start CafeOBJ, e.g. by executing
   ~/cafeobj-1.4/bin/cafeobj

   and call the scripts of the proof score in 
   increasing order, like this:

```
input pace.mod
input invariants.mod

input proof100.mod
input proof110.mod
...
input proof740.mod
```

   The proofs afterwards are split for perfomance reasons:

```
input proof800.mod
input proof800_fkm21.mod
input proof800_fkm22.mod
input proof800_fkm31.mod
input proof800_fkm32.mod
input proof900_sdm1.mod
input proof900_sdm3.mod
input proof900_fkm11.mod
input proof900_fkm12.mod
input proof900_fkm21.mod
input proof900_fkm22.mod
input proof900_fkm31.mod
input proof900_fkm32_part1.mod
input proof900_fkm32_part2.mod
```
