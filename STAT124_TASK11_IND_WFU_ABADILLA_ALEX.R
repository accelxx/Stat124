#### Question no. 1----
read.csv("dviolence.csv")
lovers <- subset(dviolence, Relationship2=="Lover/Ex-lover", select = c(SuspectAge, VictimAge))
mean(lovers$SuspectAge)
mean(lovers$VictimAge)

others <- subset(dviolence, Relationship2=="Others", select = c(SuspectAge, VictimAge))
mean(others$SuspectAge)
mean(others$VictimAge)

fam <- subset(dviolence, Relationship2=="Family Member", select = c(SuspectAge, VictimAge))
mean(fam$SuspectAge)
mean(fam$VictimAge)

offender <- subset(dviolence, Relationship2=="Offender", select = c(SuspectAge, VictimAge))
mean(offender$SuspectAge)
mean(offender$VictimAge)

unknown <- subset(dviolence, Relationship2=="Unknown", select = c(SuspectAge, VictimAge))
mean(unknown$SuspectAge)
mean(unknown$VictimAge)


#### Question no. 2----
testdata <- matrix(c(14, 19, 12, 37, 42, 17, 32, 17, 10), nrow = 3)
chisqtest <- function(mydata, alpha){
  
  numel <- length(mydata)
  numcols <- ncol(mydata)
  numrows <- nrow(mydata)
  
  exp_counts <- matrix(rep(NA, numel), nrow = numrows)
  for(i in 1:numrows){
    for(j in 1:numcols){
      exp_counts[i, j] <- (sum(mydata[i,])*sum(mydata[,j])) / sum(mydata)
    }
  }
  
  teststat <- round(sum((mydata - exp_counts)^2 / exp_counts), 2)
  
  df <- (numrows-1)*(numcols-1)
  critval <- round(qchisq(1-alpha, df), 2)
  
  ifelse(teststat<=critval, 
         paste0("Since the test statistic value (", teststat, ") does not exceed the critical value (", critval, "), we do not reject the null hypothesis of independence at ", alpha*100, "% level of significance."), 
         paste0("Since the test statistic value (", teststat, ") exceeds the critical value (", critval, "), we reject the null hypothesis of independence at ", alpha*100, "% level of significance."))
}

