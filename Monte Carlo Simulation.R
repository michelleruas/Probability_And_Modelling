
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

s