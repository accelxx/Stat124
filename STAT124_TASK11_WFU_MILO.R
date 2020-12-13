# Members:
# Abadilla, Alexandra Janine
# Gempis, Gillian Larah
# Rondael, Pristine Jennland 


#### Question number 1 ----

dviolence <- read.csv("dviolence.csv")
View(dviolence)

AggSusAge <- subset(dviolence,select = c(SuspectAge), Offense == "Aggravated Domestic Assault")
AggSusMean <- mean(AggSusAge$SuspectAge)
AggSusMean

AggVicAge <- subset(dviolence,select = c(VictimAge), Offense == "Aggravated Domestic Assault")
AggVicMean <- mean(AggVicAge$VictimAge)
AggVicMean

DASusAge <- subset(dviolence,select = c(SuspectAge), Offense == "Domestic Assault - Simple")
DASusMean <- mean(DASusAge$SuspectAge)
DASusMean

DAVicAge <- subset(dviolence,select = c(VictimAge), Offense == "Domestic Assault - Simple")
DAVicMean <- mean(DAVicAge$VictimAge)
DAVicMean

VioSusAge <- subset(dviolence,select = c(SuspectAge), Offense == "Violation of Abuse Prevention Order")
VioSusMean <- mean(VioSusAge$SuspectAge)
VioSusMean

VioVicAge <- subset(dviolence,select = c(VictimAge), Offense == "Violation of Abuse Prevention Order")
VioVicMean <- mean(VioVicAge$VictimAge)
VioVicMean

# Out of all types of offenses, Aggravated Domestic Assault has the youngest average age (36.71) of victims
# while Domestic Assault - Simple has the youngest average age (32.6) of suspects. 
# On the other hand, Violation of Abuse Prevention Order has the oldest average ages of victims (38.88) and suspects (43.96).

#### Question number 2 -----

chisqtest <- function(data, alpha){
  n <- sum(data)
  row <- rowSums(data)
  col <- colSums(data)
  dim(row) <- c(length(row),1)
  dim(col) <- c(1,length(col))
  exp_counts <- (row %*% col)/n                         #Expected counts
  test_stat <- sum((data - exp_counts)^2/exp_counts)    #Test statistic
  df <- (ncol(data)-1) * (nrow(data)-1)                 #Degrees of freedom
  crit_val <- qchisq(1-alpha,df)                        #Critical value

  #Decision: Reject null hypothesis or not
  if (test_stat <= crit_val){
    cat(paste0("Since the test statistic value (",round(test_stat,2),
                  ") does not exceed the critical value (",round(crit_val,2),
                  "), we do not reject the null hypothesis of independence at ",
                  alpha*100,"% level of significance."))
  }
  else if (test_stat > crit_val){
    cat(paste0("Since the test statistic value (",round(test_stat,2),
                  ") exceeds the critical value (",round(crit_val,2),
                  "), we reject the null hypothesis of independence at ",
                  alpha*100,"% level of significance."))
  }
}

#Test data
chisqtest(matrix(c(90,15,82,12,68,27,76,30), nrow = 2), .05)
chisqtest(matrix(c(25,42,33,39,40,21), nrow = 3), .1)

