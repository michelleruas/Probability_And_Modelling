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
cases <- esoph %>% select(tobgp, ncases) %>% filter(ncases > 0)
ten_or_more <- cases %>% filter(tobgp != "0-9g/day")
nrow(ten_or_more) / nrow(cases)
sum(ten_or_more$ncases) / sum(cases$ncases)

#Given that a person is a control, what is the probability that they smoke 10g or more a day?
 