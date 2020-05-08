#Use the information below to answer the following five questions.
#A restaurant manager wants to advertise that his lunch special offers enough choices to eat different meals every day of the year. He doesn't think his current special actually allows that number of choices, but wants to change his special if needed to allow at least 365 choices.
#A meal at the restaurant includes 1 entree, 2 sides, and 1 drink. He currently offers a choice of 1 entree from a list of 6 options, a choice of 2 different sides from a list of 6 options, and a choice of 1 drink from a list of 2 options.

nrow(combinations(6,1))*nrow(combinations(6,3))*nrow(combinations(2,1))

#Choose out of 3 drinks
nrow(combinations(6,1))*nrow(combinations(6,2))*nrow(combinations(3,1))

#Choose 3 sides
nrow(combinations(6,1))*nrow(combinations(6,3))*nrow(combinations(3,1))

#- Write a function that takes a number of entree choices and returns the number of meal combinations possible given that number of entree options, 3 drink choices, and a selection of 2 sides from 6 options.
choices <- function(n){
  nrow(combinations(n,1))*nrow(combinations(6,2))*nrow(combinations(3,1))
}

options <- c(1:12)
sapply(options, choices)


#- Write a function that takes a number of side choices and returns the number of meal combinations possible given 6 entree choices, 3 drink choices, and a selection of 2 sides from the specified number of side choices.
sides <- function(x){
  nrow(combinations(6,1))*nrow(combinations(x,2))*nrow(combinations(3,1))
}

sideOptions <- c(2:12)
sapply(sideOptions, sides)




