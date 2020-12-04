####Question no. 1----
trianglr <- function(h){
  dec <- h-1
  for(i in 1:h){
    for(j in 1:i){
      cat("*")
    }
    cat("\n")
  }
  for(k in 1:dec){
    for(m in dec:k){
      cat("*")
    }
    cat("\n")
  }
}

####Question no. 2----
trianglr <- function(h){
  if(h<2|h>10) stop("Invalid input: it should be a positive integer from 2 to 10")
  dec <- h-1
  for(i in 1:h){
    for(j in 1:i){
      cat("*")
    }
    cat("\n")
  }
  for(k in 1:dec){
    for(m in dec:k){
      cat("*")
    }
    cat("\n")
  }
}

####Question no. 3----
trianglr <- function(h=5){
  if(h<2|h>10) stop("Invalid input: it should be a positive integer from 2 to 10")
  dec <- h-1
  for(i in 1:h){
    for(j in 1:i){
      cat("*")
    }
    cat("\n")
  }
  for(k in 1:dec){
    for(m in dec:k){
      cat("*")
    }
    cat("\n")
  }
}