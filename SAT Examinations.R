#An old version of the SAT college entrance exam had a -0.25 point penalty for every incorrect answer and awarded 1 point for a correct answer. The quantitative test consisted of 44 multiple-choice questions each with 5 answer choices. Suppose a student chooses answers by guessing for all questions on the test.

#Probability of guessing one question correctly
1/5

#Expected value of 1
0.2*1+0.8*-0.25

#Expected value of 44
(0.2*1+0.8*-0.25)*44

#Standard error
se <- 1/sqrt(44) * (1.25)*sqrt(0.2*0.8)
se*44
(abs(1 - - 0.25) * sqrt(0.2*0.8))/sqrt(44)

#Monte carlo simulation
S <- replicate(10000, {
  R <- sample(c(1,-0.25), 44, replace = TRUE, prob = c(1/5, 4/5))
  sum(R)
}) 
sd(S)
mean(S)
S
mean(S>=8)


#Central limit theorem
#Use the Central Limit Theorem to determine the probability that a guessing student scores 8 points or higher on the test.
#1--pnorm(8, mu, sigma)

#Expected value for 4 options and no penalty
0.25*1*44

p <- seq(0.25, 0.95, 0.05)

se2 <- 44*(1/sqrt(44) * (1)*sqrt(0.25*0.75))

outcome <- function(x){
  mean <- x*44
  sd <- 44*(1/sqrt(44) *sqrt(x*(1-x)))
  pnorm(x, mean, sd)
}

outcome(0.65)

35/44
  
  
  
  
  
