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


