#### Question no. 1----
#1.)	Rewrite the following to eliminate the loops, first using apply() and then using rowSums(): 
X <- matrix(runif(100000),1000,100); z <- rep(0,1000)
for(i in 1:1000){
  for(j in 1:100){
    z[i] <- z[i] + X[i,j]
  }
}

#Using rowSums function
rsum <- rowSums(X)
identical(z, rsum)
system.time(rowSums(X))

#Using apply function
zapply <- apply(X, 1, sum)
identical(zapply, z)
system.time(apply(X, 1, sum))

#### Question no. 2----
#The code counts the number of negative values from the generated random sample
n <- 100000; z <- rnorm(n)
zneg <- 0; j <- 1 # j <- 0?
for(i in 1:n){
  if(z[i] < 0){
    zneg[j] <- z[i]
    j <- j+1
  }
}
vectorop <- sum(z<0)+1

#Checking equality and speed
identical(vectorop, j)
system.time(sum(z<0)+1)
system.time(for(i in 1:n){
  if(z[i] < 0){
    zneg[j] <- z[i]
    j <- j+1
  }
})