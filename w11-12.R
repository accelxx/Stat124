#### Question Number 1 ----

trianglr <- function(h){
  
  star <- 0
  
  repeat{       #Increasing Part
    star <- star+1
    if (star <= 6){}
    for (j in 1:star){
      cat("* ")
    }
    cat ("\n")
    if(star==h) break
  }
  repeat{      #Decreasing Part
    star <- star-1
    for (j in 1:star){
      cat("* ")
    }
    cat ("\n")
    if(star==1) break
  }
}

trianglr (10)

#### Question Number 2 ----

trianglr <- function(h){
  
  star <- 0
  
  if (is.numeric(h) == FALSE || h != floor(h)){
    stop("Input is invalid. It should be an integer less than or equal to 10 
               but greater than or equal to 2.")
  } else if (h>10 || h<2){
    stop("Input is invalid. It should be an integer less than or equal to 10 
               but greater than or equal to 2.")
  }
    repeat{       #Increasing Part
      star <- star+1
      if (star <= 6){}
      for (j in 1:star){
        cat("* ")
      }
      cat ("\n")
      if(star==h) break
    }
    repeat{      #Decreasing Part
      star <- star-1
      for (j in 1:star){
        cat("* ")
      }
      cat ("\n")
      if(star==1) break
    }
}

trianglr (11)
trianglr (0)
trianglr (2.5)
trianglr(4)

#### Question Number 3 ---- 

trianglr <- function(h){
  
  star <- 0
  
  if (is.numeric(h) == FALSE || h != floor(h)){
    stop("Input is invalid. It should be an integer less than or equal to 10 
               but greater than or equal to 2.")
  } else if (h>10 || h<2){
    stop("Input is invalid. It should be an integer less than or equal to 10 
               but greater than or equal to 2.")
  }
  repeat{       #Increasing Part
    star <- star+1
    if (star <= 6){}
    for (j in 1:star){
      cat("* ")
    }
    cat ("\n")
    if(star==h) break
  }
  repeat{      #Decreasing Part
    star <- star-1
    for (j in 1:star){
      cat("* ")
    }
    cat ("\n")
    if(star==1) break
  }
}

trianglr (5)


