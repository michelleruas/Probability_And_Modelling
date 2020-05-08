library(gtools)
library(tidyverse)

suits <- c("Gold", "Silver", "Bronze")
numbers <- c("Bolt", "Blake", "Weir", "Four", "Five", "Six", "Seven", "Eight")
deck <- expand.grid(number = numbers, suit = suits)
deck <- paste(deck$number, deck$suit)

coms <- combinations(8,3)
perms <- permutations(3,3)
coms
str(coms)
mean(coms)

1/8^3*6

runners <- c("Jamaica", "Jamaica", "Jamaica", "USA", "Ecuador", "Netherlands", "France", "South Africa")
medals <- c("Gold","Silver","Bronze")

perms <- permutations(8,3)
coms <- combinations(8,3)
coms
str(coms)
str(perms)
1/56

B <- 10

results <- replicate(B, {
  winners <- sample(runners, 3)
})
results


