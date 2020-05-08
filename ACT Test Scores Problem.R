set.seed(16)

act_scores <- rnorm(10000, 20.9, 5.7)
mean(act_scores)
sd(act_scores)

hist(act_scores)

mean(act_scores <= 10)

x <- c(1:36)

f_x <- dnorm(x, 20.9, 5.7)
plot(x, f_x)

act_scoresZ <- (act_scores-mean(act_scores))/sd(act_scores)
mean(act_scoresZ > 2)

qnorm(1-mean(act_scoresZ > 2), 20.9, 5.7)

qnorm(0.975, 20.9, 5.7)

qnorm(0.95, 20.9, 5.7)

p <- seq(0.01, 0.99, 0.01)

sample_quantiles <- quantile(act_scores, p)
sample_quantiles

plot(qnorm(p, 20.9, 5.7), sample_quantiles)

