# Members:
# Abadilla, Alexandra Janine
# Gempis, Gillian Larah
# Rondael, Pristine Jennland

#### Question number 1 -----

# Version 1 (original):

X <- matrix(runif(100000),1000,100); z <- rep(0,1000)
for(i in 1:1000){
  for(j in 1:100){
    z[i] <- z[i] + X[i,j]
  }
}

# Version 2:

ver2 <- apply(X, 1, sum)

# Version 3:

ver3 <- rowSums(X)

# The following identical() functions return TRUE.This means that versions 1, 2,
# and 3 give the same answers.

identical(z,ver2)
identical(ver2,ver3)

# Checking their run times:

# Version 1 (original):
system.time(for(i in 1:1000){
              for(j in 1:100){
                z[i] <- z[i] + X[i,j]
              }
            })

# Version 2:
system.time(apply(X, 1, sum))

# Version 3:
system.time(rowSums(X))

# As shown above, versions 2 and 3 run faster than the original.

#### Question number 2 -----

# Version 1 (original):

n <- 100000; z <- rnorm(n)
zneg <- 0; j <- 1
for(i in 1:n){
  if(z[i] < 0){
    zneg[j] <- z[i]
    j <- j+1
  }
}

# Version 2:

yneg <- ifelse(c(z) < 0, c(z), 0)

# The identical () function below returns TRUE. This means that versions 1 and 2
# give the same answers.

identical(zneg,yneg)

# Checking their run times:

# Version 1 (original):
system.time(for(i in 1:n){
              if(z[i] < 0){
                zneg[j] <- z[i]
                j <- j+1
              }
            })

# Version 2:
system.time(yneg <- ifelse(c(z) < 0, c(z), 0))

# As shown above, version 2 runs faster than the original.