#### Question no. 1----
####a
dviolence <- read.csv("C:\\Users\\alexandra\\Documents\\dviolence.csv")
SexInter <- rep(NA, 73)
SexInter[dviolence$SuspectSex=="Male" && dviolence$VictimSex=="Male"] <-  "Male on Male"
SexInter[dviolence$SuspectSex=="Female" && dviolence$VictimSex=="Female"] <-  "Female on Female"
SexInter[dviolence$SuspectSex=="Male" && dviolence$VictimSex=="Female"] <-  "Male on Female"
SexInter[dviolence$SuspectSex=="Female" && dviolence$VictimSex=="Male"] <-  "Female on Male"
dviolence <- data.frame(dviolence, SexInter)

####b
Relationship2 <- rep(NA, 73)
Relationship2[substr(dviolence$Relationship, 12, 12)=="E"|substr(dviolence$Relationship, 12, 12)=="B"|substr(dviolence$Relationship, 12, 12)=="S"] <- "Ex-lover"
Relationship2[substr(dviolence$Relationship, 12, 12)=="P"|substr(dviolence$Relationship, 12, 12)=="C"|substr(dviolence$Relationship, 18, 18)=="F"] <- "Family Member"
Relationship2[substr(dviolence$Relationship, 13, 13)=="f"] <- "Offender"
Relationship2[substr(dviolence$Relationship, 12, 12)=="F"|substr(dviolence$Relationship, 12, 12)=="A"|substr(dviolence$Relationship, 17, 17)=="w"] <- "Others"
Relationship2[substr(dviolence$Relationship, 1, 1)=="R"] <- "Unknown"
dviolence <- data.frame(dviolence, Relationship2)

####c
dviolence <- subset(dviolence, select = -Relationship)


#### Question no. 2----
####a
subset1 <- subset(dviolence, Relationship2=="Others", select = c(SuspectAge, VictimAge))

####b
subset2 <- subset(dviolence, VictimAge < 18, select = c(Offense, SuspectAge, VictimAge, SexInter))
