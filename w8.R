#### Question Number 1 ----

X <- matrix(runif(100000),1000,100)
z <- rep(0,1000)

# Using given code; with loops
for(i in 1:1000){
  for(j in 1:100){
    z[i] <- z[i] + X[i,j]
  }
}

# Using apply ()
za <- apply(X, 1, sum)

# Using rowSums ()
ze <- rowSums(X)

# Checking if results are identical
identical(z, za)
identical(z, ze)

# Checking if rewrites are faster
system.time(for(i in 1:1000){
  for(j in 1:100){
    z[i] <- z[i] + X[i,j]
  }
})

system.time(apply(X, 1, sum))

system.time(rowSums(X))


#### Question Number 2 ----

n <- 100000; z <- rnorm(n)
zneg <- 0; j <- 1

#With loops

for(i in 1:n){
  if(z[i] <0){
    zneg[j] <- z[i]
    j <- j+1
  }
}

# Vectorized
i <- 1:100000
zz <- ifelse(z[i]<0, zneg[j] <- z[i], z[i]<-z[i])

# Checking if identical
identical(z[i],zz)

# Checking if rewrite is faster

system.time(for(i in 1:n){
  if(z[i] <0){
    zneg[j] <- z[i]
    j <- j+1
  }
})

system.time(ifelse(z[i]<0, zneg[j] <- z[i], z[i]<-z[i]))






