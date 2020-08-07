#1 Generate random numbers whose distribution is normal



x <- rnorm(100,50,1) # no. of values, 25 mean, 1 SD
x
#plot the histogram for this sample

hist(x, main = "Normal Distribution")
m = mean(x)
s = sd(x)

# Probability distribution

y <- dnorm(x, m , s)
y
round(y, 2)
plot(x,y)



#3 Comulative distribution

z <- pnorm(x, mean = m, sd = s)

#plot the graph
plot(x,z)
dev.off()



#4 Quantile distribution 

k <- qnorm(0.9,mean = mean(x), sd = sd(x)) #0.9 = number at 90 % position.
k



s <- qnorm(0.7,mean = mean(x), sd = sd(x)) #0.9 = number at 90 % position.
s