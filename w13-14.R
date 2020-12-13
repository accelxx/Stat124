##### Question Number 1 ----
dviolence <- read.csv("dviolence.csv")
View(dviolence)

AggSusAge <- subset(dviolence,select = c(SuspectAge), Offense == "Aggravated Domestic Assault")
AggSusMean <- mean(AggSusAge$SuspectAge)

AggVicAge <- subset(dviolence,select = c(VictimAge), Offense == "Aggravated Domestic Assault")
AggVicMean <- mean(AggVicAge$VictimAge)

DASusAge <- subset(dviolence,select = c(SuspectAge), Offense == "Domestic Assault - Simple")
DASusMean <- mean(DASusAge$SuspectAge)

DAVicAge <- subset(dviolence,select = c(VictimAge), Offense == "Domestic Assault - Simple")
DAVicMean <- mean(AggVicAge$VictimAge)

VioSusAge <- subset(dviolence,select = c(SuspectAge), Offense == "Violation of Abuse Prevention Order")
VioSusMean <- mean(VioSusAge$SuspectAge)

VioVicAge <- subset(dviolence,select = c(VictimAge), Offense == "Violation of Abuse Prevention Order")
VioVicMean <- mean(VioVicAge$VictimAge)


#### Question Number 2 ----

chisqtest <- function(data, alpha){
  n <- sum(data)
  row <- rowSums(data)
  col <- colSums(data)
  dim(row) <- c(length(row),1)
  dim(col) <- c(1,length(col))
  exp_counts <- (row %*% col)/n
  test_stat <- sum((data - exp_counts)^2/exp_counts)
  df <- (ncol(data)-1) * (nrow(data)-1)
  crit_val <- qchisq(1-alpha,df)
  if (test_stat < crit_val){
    return(paste0("Since the test statistic value (",round(test_stat,2),
                 ") does not exceed the critical value (",round(crit_val,2),
                 "), we do not reject the null hypothesis of independence at ",
                 alpha*100,"% level of significance."))
  }
  else if (test_stat > crit_val){
    return(paste0("Since the test statistic value (",round(test_stat,2),
                 ") exceeds the critical value (",round(crit_val,2),
                 "), we reject the null hypothesis of independence at ",
                 alpha*100,"% level of significance."))
  }
}

chisqtest(matrix(c(14,19,12,37,42,17,32,17,10), nrow = 3), .05)
chisqtest(matrix(c(90,15,82,12,68,27,76,30), nrow = 2), .05)
chisqtest(matrix(c(25,42,33,39,40,21), nrow = 3), .1)