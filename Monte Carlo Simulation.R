
beads <- rep(c("red", "blue"), times = c(2,3))    # create an urn with 2 red, 3 blue
beads    # view beads object
sample(beads, 1)    # sample 1 bead at random

B <- 10000    # number of times to draw 1 bead
events <- replicate(B, sample(beads, 1))    # draw 1 bead, B times
events
tab <- table(events)    # make a table of outcome counts
tab    # view count table
prop.table(tab)    # view table of outcome proportions

set.seed(1, sample.kind="Rounding")    # will make R 3.6 generate a seed as in R 3.5

beads <- rep(c("red", "blue"), times = c(2,3))
beads
# "red" "red" "blue" "blue" "blue"

mean(beads == "blue")
# 0.6

#One ball will be drawn at random from a box containing: 3 cyan balls, 5 magenta balls, and 7 yellow balls.
beads2 <- rep(c("cyan", "magenta", "yellow"), times = c(3,5,7))
B <- 10000    # number of times to draw 1 bead
events2 <- replicate(B, sample(beads2, 1))    # draw 1 bead, B times
tab2 <- table(events2)    # make a table of outcome counts
mean(beads2 == "cyan")

beads3 <- rep(c("cyan", "magenta", "yellow"), times = c(2,5,7))
0.2 * (1-mean(beads2 == "cyan"))


cyan <- 3
magenta <- 5
yellow <- 7

# Assign a variable `p` as the probability of choosing a cyan ball from the box
p <- cyan/15

# Print the variable `p` to the console
p

# `p` is defined as the probability of choosing a cyan ball from a box containing: 3 cyan balls, 5 magenta balls, and 7 yellow balls.
# Using variable `p`, calculate the probability of choosing any ball that is not cyan from the box
1-p

# The variable `p_1` is the probability of choosing a cyan ball from the box on the first draw.
p_1 <- cyan / (cyan + magenta + yellow)

# Assign a variable `p_2` as the probability of not choosing a cyan ball on the second draw without replacement.
p_2 <- 1- ((cyan-1)/(cyan-1+magenta+yellow))

# Calculate the probability that the first draw is cyan and the second draw is not cyan using `p_1` and `p_2`.
p_1 * p_2

# Assign a variable 'p_2' as the probability of not choosing a cyan ball on the second draw with replacement.
p_2 <- 1 -( cyan/ (cyan + magenta + yellow))

# Calculate the probability that the first draw is cyan and the second draw is not cyan using `p_1` and `p_2`.
p_1*p_2


