#Programming Exercises for R

#Nastasiya F. Grinberg and Robin J. Read




#Exercise 1

#Q1.
#a) 

a<- 1:20
a

#b)
b<- 20:1
b

#c)
c<- c((1:20),(19:1))
c

#d)
tmp<- c(4,6,3)
tmp

#e)
e<- rep(tmp,10)
e

#f)
f<- rep(tmp, l= 31)
f

#g)
g<- rep(tmp, times = c(10,20,30))
g


#Q2. Create a vector of the values of excos(x) at x = 3, 3.1, 3.2, . . . , 6.

x<-seq(3,6,by= 0.1)
x

(e^x)*cos(x)


#3. Create the following vectors:

#(a)
a<-  0.1^seq(3,36,by=3) * (0.2^seq(1,34,by = 3))
a

#b)
tmp<- 1:25
b<- (2^tmp)/tmp
b


#Q4
#a)
i<- 10:100
a<- sum(i^3 + 4* i^2)
a

#b)
i<-1:25
b<-sum((2^i)/i + (3^i)/i^2)
b

#Q5

#a)
a<- paste("label",1:30, sep = " ")
a

#b)
b<- paste("fn", 1:30, sep="")
b




#Q6)

set.seed(50)
xVec <- sample(0:999, 250, replace =T)
xVec

yVec <- sample(0:999, 250, replace =T)
yVec

#a)
new_vector<- yVec[-1] - xVec[-length(xVec)]
new_vector

#b)
v2<-sin(yVec[-length(yVec)]) / cos(xVec[-1])
v2

#c)
v3<-xVec[-c(249,250)] + 2*xVec[-c(1,250)] - xVec[-c(1,2)]
v3

#alternate method
xVecLen <- length(xVec)
xVec[-c(xVecLen -1, xVecLen)] + 2*xVec[-c(1,xVecLen)] - xVec[-c(1,2)]


#d)
d<- sum(exp(-xVec[-1])/(xVec[-length(xVec)] + 10))
d


#Q7

#a)
a<- yVec[yVec > 600]
a

#b)
b<-(1:length(yVec))[yVec>600] 
b
#alternate
b<- which(yVec>600)
b

#c)
c<-xVec[yVec > 600]
c

#d)
d<- sqrt(abs(xVec - mean(xVec)))
d

#e)
e<- sum( yVec> max(yVec) - 200)
e

#f)
f<- sum(xVec%%2 == 0)
f

#g)
g<- xVec[order(yVec)]
g

#h)
h<- yVec[c(T,F,F)]
h


#Q8

a<- 1 + sum(cumprod(seq(2,38,by = 2) / seq(3,39,by = 2)))
a      #cumprod
