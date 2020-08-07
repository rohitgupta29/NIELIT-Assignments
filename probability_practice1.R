#Calculate the probability that a normally distributed random variable 
# with mean 20 and sd 5 is less than 10

pnorm(10,20,5)



# is greater than 21


1 - pnorm(21,20,5)




# is less than 11 or greater than 25

pnorm(11,20,5) + ( 1 -pnorm(25,20,5))