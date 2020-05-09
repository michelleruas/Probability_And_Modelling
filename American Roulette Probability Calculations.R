# The variables `green`, `black`, and `red` contain the number of pockets for each color
green <- 2
black <- 18
red <- 18

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green/(green+black+red)

# Print the variable `p_green` to the console
p_green

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# The variables 'green', 'black', and 'red' contain the number of pockets for each color
green <- 2
black <- 18
red <- 18
total <- (green+black+red)

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green / total

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1-p_green


# Create a model to predict the random variable `X`, your winnings from betting on green. Sample one time.

X <- sample(c(-1,-1, 16), 1, replace = TRUE, prob = c(2/38, 18/19, 18/19))  


# Print the value of `X` to the console
X


# The variables 'green', 'black', and 'red' contain the number of pockets for each color
green <- 2
black <- 18
red <- 18

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green / (green+black+red)

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1-p_green

# Calculate the expected outcome if you win $17 if the ball lands on green and you lose $1 if the ball doesn't land on green
(p_green/(p_green+p_not_green))*17+(p_not_green/(p_green+p_not_green))*-1

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green / (green+black+red)

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1-p_green

# Compute the standard error of the random variable.names
abs((17 - -1))*sqrt(p_green*p_not_green)

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green / (green+black+red)
total<- (green+black+red)
total 
# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1-p_green

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# Define the number of bets using the variable 'n'
n <- 1000

# Create a vector called 'X' that contains the outcomes of 1000 samples
X <- sample(c(17,-1,-1), n, replace = TRUE, prob = c(2/38, 18/38, 18/38))  

# Assign the sum of all 1000 outcomes to the variable 'S'
S <- sum(X)

# Print the value of 'S' to the console
S

# Define the number of bets using the variable 'n'
n <- 1000

# Calculate the expected outcome of 1,000 spins if you win $17 when the ball lands on green and you lose $1 when the ball doesn't land on green
(-1*p_not_green+17*p_green)*1000


# Compute the standard error of the sum of 1,000 outcomes
abs((17 - -1))*sqrt(p_green*p_not_green)*sqrt(1000)

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- 2 / 38

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1-p_green

# Define the number of bets using the variable 'n'
n <- 100

# Calculate 'avg', the expected outcome of 100 spins if you win $17 when the ball lands on green and you lose $1 when the ball doesn't land on green
avg <- n * (17*p_green + -1*p_not_green)

# Compute 'se', the standard error of the sum of 100 outcomes
se <- sqrt(n) * (17 - -1)*sqrt(p_green*p_not_green)

# Using the expected value 'avg' and standard error 'se', compute the probability that you win money betting on green 100 times.
1-pnorm(0, avg, se)


# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- 2 / 38

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1-p_green

# Define the number of bets using the variable 'n'
n <- 100

# The variable `B` specifies the number of times we want the simulation to run. Let's run the Monte Carlo simulation 10,000 times.
B <- 10000

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# Create an object called `S` that replicates the sample code for `B` iterations and sums the outcomes.
S <- replicate(B, {
  R <- sample(c(17,-1), n, replace = TRUE, prob = c(2/38, 36/38))
  sum(R)
}) 

# Compute the average value for 'S'
mean(S)

# Calculate the standard deviation of 'S'
sd(S)


# Calculate the proportion of outcomes in the vector `S` that exceed $0
mean(S>0)


# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# Define the number of bets using the variable 'n'
n <- 10000

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- 2 / 38

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1 - p_green

# Create a vector called `X` that contains the outcomes of `n` bets
X <- sample(c(17, -1), n, replace = TRUE, prob = c(2/38, 36/38))

# Define a variable `Y` that contains the mean outcome per bet. Print this mean to the console.
Y <- mean(X)
Y

# Calculate the expected outcome of `Y`, the mean outcome per bet in 10,000 bets
(-1*p_not_green + 17*p_green)

# Compute the standard error of 'Y', the mean outcome per bet from 10,000 bets.
(abs(17 - - 1) * sqrt(p_green*p_not_green))/ sqrt(10000)

# Compute the standard error of 'Y', the mean outcome per bet from 10,000 bets.
(abs(17 - - 1) * sqrt(p_green*p_not_green))/ sqrt(10000)

# We defined the average using the following code
avg <- 17*p_green + -1*p_not_green

# We defined standard error using this equation
se <- 1/sqrt(n) * (17 - -1)*sqrt(p_green*p_not_green)

# Given this average and standard error, determine the probability of winning more than $0. Print the result to the console.
1-pnorm(0,avg,se)

## Make sure you fully follow instructions, including printing values to the console and correctly running the `replicate` loop. If not, you may encounter "Session Expired" errors.

# The variable `n` specifies the number of independent bets on green
n <- 10000

# The variable `B` specifies the number of times we want the simulation to run
B <- 10000

# Use the `set.seed` function to make sure your answer matches the expected result after random number generation
set.seed(1)

# Generate a vector `S` that contains the the average outcomes of 10,000 bets modeled 10,000 times
S <- replicate(B, {
  R <- sample(c(17,-1), n, replace = TRUE, prob = c(2/38, 36/38))
  mean(R)
})

# Compute the average of `S`
mean(S)

# Compute the standard deviation of `S`
sd(S)

# Compute the proportion of outcomes in the vector 'S' where you won more than $0
mean(S>0)










