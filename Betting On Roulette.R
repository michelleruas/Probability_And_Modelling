#A casino offers a House Special bet on roulette, which is a bet on five pockets (00, 0, 1, 2, 3) out of 38 total pockets. The bet pays out 6 to 1. In other words, a losing bet yields -$1 and a successful bet yields $6. A gambler wants to know the chance of losing money if he places 500 bets on the roulette House Special.
p <- 5/38
np <- 1- 5/38

#Expected payout
(-1)*np + 6*p

#Standard error
1/sqrt(1) * (7)*sqrt(p*np)

#Expected payout 500
500*((-1)*np + 6*p)

#Standard error 500
(1/sqrt(500) * (7)*sqrt(p*np))*500

pnorm(0, -39.5, 52.9)