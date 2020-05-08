library(tidyverse)
head(esoph)
str(esoph)

all_cases <- sum(esoph$ncases)
all_controls <- sum(esoph$ncontrols)

#What is the probability that a subject in the highest alcohol consumption group is a cancer case?
highest_alcohol <- esoph %>% filter(alcgp == "120+")
sum(highest_alcohol$ncases) / (sum(highest_alcohol$ncontrols) + sum(highest_alcohol$ncases))

#What is the probability that a subject in the lowest alcohol consumption group is a cancer case?
lowest_alcohol <- esoph %>% filter(alcgp == "0-39g/day")
sum(lowest_alcohol$ncases) / (sum(lowest_alcohol$ncontrols) + sum(lowest_alcohol$ncases))

#Given that a person is a case, what is the probability that they smoke 10g or more a day?
cases <- esoph %>% filter(ncases > 0)
ten_or_more <- cases %>% filter(tobgp != "0-9g/day")
nrow(ten_or_more) / nrow(cases)
sum(ten_or_more$ncases) / sum(cases$ncases)

#Given that a person is a control, what is the probability that they smoke 10g or more a day?
controls <- esoph %>% filter(ncontrols > 0)
ten_or_more <- controls %>% filter(tobgp != "0-9g/day")
nrow(ten_or_more) / nrow(controls)
sum(ten_or_more$ncontrols) / sum(controls$ncontrols)

#For cases, what is the probability of being in the highest alcohol group?
cases2 <- cases %>% filter(alcgp == "120+")
sum(cases2$ncases) / sum(cases$ncases)


#For cases, what is the probability of being in the highest tobacco group?
cases3 <- cases %>% filter(tobgp == "30+")
sum(cases3$ncases) / sum(cases$ncases)


#For cases, what is the probability of being in the highest tobacco + alcohol group?
cases4 <- cases %>% filter(tobgp == "30+"& alcgp == "120+") 
sum(cases4$ncases) / sum(cases$ncases)

#For cases, what is the probability of being in the highest tobacco or alcohol group?
cases4 <- cases %>% filter(tobgp == "30+"|alcgp == "120+") 
sum(cases4$ncases) / sum(cases$ncases)

#For controls, what is the probability of being in the highest alcohol group?
controls2 <- controls %>% filter(alcgp == "120+")
sum(controls2$ncontrols) / sum(controls$ncontrols)

#How many times more likely are cases than controls to be in the highest alcohol group?
0.225/0.0687

#For controls, what is the probability of being in the highest tobacco group?
controls3 <- controls %>% filter(tobgp == "30+")
sum(controls3$ncontrols) / sum(controls$ncontrols)

#For controls, what is the probability of being in the highest tobacco + alcohol group?
controls4 <- controls %>% filter(tobgp == "30+"& alcgp == "120+") 
sum(controls4$ncontrols) / sum(controls$ncontrols)

#For controls, what is the probability of being in the highest tobacco or alcohol group?
controls4 <- controls %>% filter(tobgp == "30+"|alcgp == "120+") 
sum(controls4$ncontrols) / sum(controls$ncontrols)

#How many times more likely are cases than controls to be in the highest alcohol group or the highest tobacco group?
0.33/0.139
