## The MLS Junk GeneratR
## mlsjunkgen.R
## by Steve Myles
## 2015-02-01
##
## These functions generate a vector (mlsjunkgenV) or a data frame (mlsjunkgenD)
## containing a stream of pseudo-random numbers generated using the MLS Junkg
## Generator.
##
## For both functions, the user specifies the number of RNs to generate (n), 
## seed values (w, x, y, z), and the number of decimal places to which to round
## the resulting RN stream (default is 5).
##
## See http://steve.mylesandmyles.info/projects/mls-junk-generator for details.

## mlsjunkgenV returns a vector of pseudo-random numbers
mlsjunkgenV <- function(n, w, x, y, z, round = 5) {
     if (is.numeric(n))
          {
          if (is.numeric(w) & is.numeric(x) & is.numeric(y) & is.numeric(z)) {
               mls <- numeric()
               for (i in 1:n) {
                    r <- 5.980217 * (w ^ 2) + 9.446377 * (x ^ 0.25) + 
                         4.81379 * (y ^ 0.33) + 8.91197 * (z ^ 0.5)
                    ri <- r - trunc(r)
                    mls <- c(mls, round(ri, round))
                    w <- x
                    x <- y
                    y <- z
                    z <- ri
               }
          mls
          }
          else { 
               stop("Invalid input.  Please ensure all seeds are numeric.")
          }          
     } else { 
          stop("Invalid input.  Please ensure n is numeric.")
     }
}

## mlsjunkgenD returns a data frame of pseudo-random numbers.
mlsjunkgenD <- function(n, w, x, y, z, round = 5) {
     if (is.numeric(n))
     {
          if (is.numeric(w) & is.numeric(x) & is.numeric(y) & is.numeric(z)) {
               mls <- data.frame()
               for (i in 1:n) {
                    r <- 5.980217 * (w ^ 2) + 9.446377 * (x ^ 0.25) + 
                         4.81379 * (y ^ 0.33) + 8.91197 * (z ^ 0.5)
                    ri <- r - trunc(r)
                    mls <- rbind(mls, round(ri, round))
                    w <- x
                    x <- y
                    y <- z
                    z <- ri
               }
               names(mls) <- "RN"
               mls
          }
          else { 
               stop("Invalid input.  Please ensure all seeds are numeric.")
          }          
     } else { 
          stop("Invalid input.  Please ensure n is numeric.")
     }
}
