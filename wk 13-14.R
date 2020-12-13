dviolence <- read.csv("dviolence.csv")

#### Question number 1 -----

mean_sa <- mean(dviolence$SuspectAge)
mean_sa
mean_va <- mean(dviolence$VictimAge)
mean_va

#### Question number 2 -----

data <- matrix(c(90, 15, 82, 12, 68, 27, 76, 30), nrow = 2)
alpha <- 0.05

chiqstest <- function(data, alpha) {

b <- (nrow(data)-1)*(ncol(data)-1)
c <- nrow(data)*ncol(data)
crit_value <- round(qchisq(1-alpha, b), 2)

  exp_counts <- matrix(rep(NA, c), nrow = nrow(data))
for (i in 1:nrow(data)) {
  for (j in 1:ncol(data)) {
      exp_counts[i, j] <- (sum(data[i, ]) * sum(data[, j])) / sum(data)
  }
}

ts_stat <- round(sum((data - exp_counts)^2/exp_counts), 2)


if (ts_stat > crit_value) {
  cat(paste0("Since the test statistic value (", ts_stat, ") exceeds the critical value (", crit_value,
  ") we reject the null hypothesis of independence at ", alpha*100, "% level of significance."))}
else if (test_stat > crit_val){
  cat(paste0("Since the test statistic value (", ts_stat, ") does not exceed the critical value (", crit_value,
  "), we do not reject the null hypothesis of independence at ", alpha*100,"% level of significance."))}
}

chiqstest(data, alpha)
