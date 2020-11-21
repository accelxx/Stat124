# Members:
# Abadilla, Alexandra Janine
# Gempis, Gillian Larah
# Rondael, Pristine Jennland

#### Question number 1 -----

# Given code
X <- matrix(runif(100000),1000,100); z <- rep(0,1000)
for(i in 1:1000){
  for(j in 1:100){
    z[i] <- z[i] + X[i,j]
  }
}

# Using apply function
zapply <- apply(X, 1, sum)       # Getting the sum of each rows of X
identical(zapply, z)             # Checking if zapply and z are exactly equal

# Using rowSums function
rsum <- rowSums(X)               # Getting the sum of each rows of X
identical(z, rsum)               # Checking if rsum and z are exactly equal

# Checking their run times
system.time(for(i in 1:1000){
  for(j in 1:100){            
    z[i] <- z[i] + X[i,j]
  }
})
system.time(apply(X, 1, sum))
system.time(rowSums(X))

#### Question number 2 -----

# The given code gives us the negative values from the generated random sample.
n <- 100000; z <- rnorm(n)
zneg <- 0; j <- 1
for(i in 1:n){
  if(z[i] < 0){
    zneg[j] <- z[i]
    j <- j+1
  }
}

# Vectorized
yneg <- z[(z<0)]

# Checking if zneg and yneg are exactly equal
identical(zneg,yneg)

# Checking their run times
system.time(for(i in 1:n){
              if(z[i] < 0){
                zneg[j] <- z[i]
                j <- j+1
              }
            })
system.time(yneg <- z[(z<0)])
