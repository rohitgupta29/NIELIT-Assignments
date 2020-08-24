#1
dbinom(40,60,0.65)
1-pbinom(40,60,0.65)

#2
sum(dbinom(c(20,25,30),60,0.5))
pbinom(19,60,0.5)
pbinom(30,60,0.5)-pbinom(20,60,0.5)


#3
hist(rpois(100,10))
hist(rpois(100,20))
hist(rpois(100,30))
#frequency is in direct proportion with the lambda


#4
hist(rpois(2608,3.81))

#5
ppois(4,7)
1-ppois(10,7)
ppois(16,7)-ppois(3,7)