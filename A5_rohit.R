#1 . Five children aged 2 , 3 , 5 , 7 and 8 yea rs old weigh 14 , 20 , 32 , 42 and 44
#kilogram s respectively . What i s the approximate weigh t o f a six yea r old
#child?

x <- c(2,3,5,7,8)
x

y <- c(14,20,32,42,44)
y

cor(x,y)

#a

# Strong Positive correlation ( 0.75 < r < 1)

#b 

r <- lm(y~x)

plot(x,y , col = "blue")

abline(r)

#c

n <- data.frame(x = 6)
z <- predict(r,n)
z # for x = 6, y = 35.55


#Q2
#2 . The succes s o f a shopping cen ter can be rep resen ted as a function o f the
#di stan ce (in miles) from the cen ter o f the population and the number o f
#clien ts (in hund reds o f people) who will vi si t . The da ta i s given in the tabl e
#below:

#  a) If the mall is located 2 miles from the center of the population, how many
#customers should the shopping center expect?
#  b) To receive 5 customers, at what distance from the center of the
#population should the Shopping Centre be located?

x <- c(8,7,6,4,2,1)

y <- c(15,19,25,23,34,40)

cor(x,y)

#a. Strong Negative correlation.

#b. 

r <- lm(y~x)
r
plot(x,y, col = "red")
abline(r)

#c. (A)

x1 = 2 -40.8 / -3.17
x1 # if y = 2 miles, x1 = 14.87

#c. (B)

n <- data.frame( x = 5)
z <- predict(r,n)
z   # for x = 5, y = 24.94


  
#Q3
#3. The grades of five students in mathematics and chemistry classes are:
#Calculate the expected grade in chemistry for a student who has a 7.5 in
#mathematics.

m <- c(6,4,8,5,3.5)

c <- c(6.5,4.5,7,5,4)

cor(m,c)



#a.

#Strong positive correlation

#b. 
r <- lm(c~m)
plot(m,c, col = 'green')

abline(r)

#c.

n <- data.frame(m = 7.5)
z <- predict(r,n)
z   # for m = 7.5, c = 6.92


#Q4
#4. The heights (in centimeters) and weight (in kilograms) of 10 basketball
#players in a team are:

#Calculate the estimated weight of a player who measures 208 cm.

H <- c(186,189,190,192,193,193,198,201,203,205)

W <- c(85,85,86,90,87,91,93,103,100,101)

cor(H,W)


r <- lm(W~H)
plot(H, W, col = "red")
abline(r)


n <- data.frame(H = 208)
z <- predict(r,n)
z    # for H = 208, W = 105.38


#Q5
#5. A group of individuals has been surveyed on the number of hours devoted each
#day to sleeping and watching TV. The responses are summarized in the following
#table:


# If a person sleeps eight hours, how many hours of TV are they expected to
#watch?

s <- c(6,7,8,9,10)

t <- c(4,3,3,2,1)

cor(s,t)

# strong negative correlation

r <- lm(t~s)

plot(s,t, col = 'blue')
abline(r)


n <- data.frame(s = 8)
z <- predict(r,n)
z # for s = 8, t = 2.6


################################ PROBABILITY #############################################################


#6
#a
sample(1:6,3000,replace = TRUE)
#b
sample(30:70,27)
#c
sample(1:2,1000,replace = TRUE)


#7
#7) Let x be the normally distributed random variable with mean=0 and standard deviation =30,
#with n=100
#a) Plot the probability distribution of x assuming that the points are normally distributed with
#mean=0 and standard deviation=30
#b) Plot the cumulative distribution points.
#c) Input the probability 0.2 and obtain the number whose cumulative value matches this
#value (hint: qnorm(0.2, mean=0, sd=30)
#d) Compute the 50% quantile value using qnorm function 



x <- rnorm(100,0,30)
round(x,2)

hist( x, main = "Normal Distribution")

m = 0
m
s = 30
s


# a) Probability distribution

y <- dnorm(x, m, s)
y
round(y,2)

plot(x, y)

#b) cumulative distribution

z <- pnorm(x, mean = m, sd = d)

#Plotting the graph

plot(x,z)

dev.off()

#Quantile value

k <- qnorm(0.2, mean = mean(x), sd = sd(x))
k


# 50 % quantile

f <- qnorm(0.5, mean = mean(x), sd = sd(x))
f


#8
#8) In the above example observe and briefly explain what happens to the normal distribution
#curve when you change the mean, the variance, or both simultaneously.
#a. change SD to 15
#b. change SD to 45
#c. Change the mean to 50
#d. Change the mean to -50 


n = 100

a <- rnorm(100, 0, 15)
a

hist(a, main = 'SD = 15')

#b

b <- rnorm(100, 0, 45)
b

hist(b, main = 'SD = 45')


#c

c <- rnorm(100, 50, 30)
c

hist(c, main = 'Mean = 50')

#d

d <- rnorm(100, -50, 30)
d

hist(d, main = 'Mean = -50')


#9
#9) Draw a histogram of 5000 random variables normally distributed with given SD= 5 and
#mean=20 (hint : use rnorm)


h <- rnorm(5000, 20, 5)
h

hist(h, main = 'Histogram with 5000 random variables, SD = 5, mean = 20')

#10
#10)Calculate the probability that a normally distributed random variable with mean 22 and
#variance 25
#a. is greater than 29
#b. is less than 17
#c. is less than 15 or greater than 25

#a. 

m = 22
V = 25
sd = 5

a <- pnorm(29, m, sd)
a

a1 = 1 - a 
a1      # probability of variable greater than 29

#b

b <- pnorm(17, m , sd)
b

#c

c <- pnorm (15, m , sd) + (1 - pnorm(25,m , sd))
c

#11
#11)If the mean length of a sample of rock cod (a fish variety) is 30 inches and the variance is 4
#inches, calculate the approximate probability that a certain rock cod fish is 31 in. long.
#Calculate the probability using the equation
#a)
#Hint: 1/(sqrt(2*pi)*sigma)*exp(-((31 - mu)^2/(2*sigma^2)))
#b) Verify the same using dnorm() function
#Hint: dnorm(31,mu,sigma)


p <- (1/ (sqrt(2 *3.14)*4 )) * exp(-((31 - 30)^2)/(2 * 4^2))
p

#b

p1 <- dnorm(31,30, 4)
p1

#12
#12)For the mpg column in mtcars dataset obtain the statistical parameters
#Mean
#Median
#Standard Deviation
#Variance &
#Range

x <-  mtcars$mpg
x

m1 <- mean(x)
m1  # = 20

m2 <- median(x)
m2  # = 19.2

sd <- sd(x)
sd  # = 6.026

v <- sd * sd
v   # = 36.32

v <- var(x)
v   # = 36.32

Range <- max(x) - min(x)
Range # = 23.5



################################### THANK YOU ##########################################################

