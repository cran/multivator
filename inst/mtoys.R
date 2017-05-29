require(multivator, quietly=TRUE)

                                        # sets various toy datasets and functions.

".toy_levels" <- c("temp","rain","humidity")
".toy_names" <- letters[1:4]
".toy_B_nondiag" <- array(c(
                   c(+8.56, +0.60, -1.17, +1.32,
                     +0.60, +5.89, +0.68, -0.81,
                     -1.17, +0.68, +1.16, +0.90,
                     +1.32, -0.81, +0.90, +6.63
                     ),
                   
                   c(+4.79, -1.32, +4.38, +2.85,
                     -1.32, +4.74, +0.94, -0.12,
                     +4.38, +0.94, +9.06, +2.58,
                     +2.85, -0.12, +2.58, +9.83
                     ),
                   
                   c(+4.79, -1.32, +4.38, +2.85,
                     -1.32, +4.74, +0.94, -0.12,
                     +4.38, +0.94, +9.56, +2.58,
                     +2.85, -0.12, +2.58, +9.43
                     )
                 ),
                 dim=c(4,4,3)
 )


dimnames(.toy_B_nondiag) <- list(.toy_names, .toy_names, .toy_levels)

".toy_B" <- (function(jj){"[<-"(jj,apply(expand.grid(sapply(dim(jj),seq_len)),1,function(x){x[1] != x[2]}),0)})(.toy_B_nondiag)

".toy_M" <- matrix(c(
                       +1.0, -0.7, +0.5,
                       -0.7, +2.0, +1.4,
                       +0.5, +1.4, +3.0
                    ), 3,3 )

rownames(.toy_M) <- .toy_levels
colnames(.toy_M) <- .toy_levels
"toy_mhp" <- mhp(M = .toy_M, B = .toy_B)

"toy_LoF" <-  # LoF == "List of Functions"
  list(    
  temp = function(x){
    c(c_temp = 1,
      a1     = x[1],
      b1     = x[2],
      c1     = x[3],
      d1     = x[4]
      )
  },
  
  rain = function(x){
    c(
      c_rain = 1,
      b2_sq  = x[1]^2
      )
  },
  
  humidity = function(x){
    c(
      a3=x[1]*x[2],
      b3=x[2]
      )
  }
)


".toy_mm_both" <- toy_mm_maker(18,36,34)

".wanted" <- c(1:3, 4:12, 22:39, 58:75)

"toy_mm"  <- .toy_mm_both[ .wanted,]
"toy_mm2" <- .toy_mm_both[-.wanted,]

"toy_mm3" <- toy_mm[1:3,]
xold(toy_mm3) <- 0.2

"toy_mm4" <- toy_mm[1:4,]
xold(toy_mm4) <- (1:16)/10

"toy_beta" <- 1 + (0:8)
toy_beta <- toy_beta

".toy_d_both" <- obs_maker(.toy_mm_both, toy_mhp, toy_LoF, toy_beta)

toy_d  <- .toy_d_both[ .wanted]
toy_d2 <- .toy_d_both[-.wanted]


"toy_expt" <- experiment(toy_mm,toy_d)

"toy_point" <- toy_mm[1:3,]
xold(toy_point) <- matrix(c(0.3, 0.4, 0.5, 0.6),3,4,byrow=TRUE)

# tidyup:
rm(.toy_levels, .toy_names, .toy_B_nondiag, .toy_B, .toy_M, .toy_mm_both, .toy_d_both, .wanted)
