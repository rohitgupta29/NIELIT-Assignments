
##########################ASSIGNMENT 1########                                          #DATE: JULY 25, 2020

##1) Use the function paste to create the following character vectors of length 30.
#"label 1", "label 2", ....., "label 30"

r1<-paste("label",1:30,sep =" ")
r1        #Answer


#VECTOR#######################################

#2) Assume that you are interested in cone-shaped structures, and have measured the height and
#radius of 6 cones. Make vectors with these values as follows:
# R <- c(2.27, 1.98, 1.69, 1.88, 1.64, 2.14)
# H <- c(8.28, 8.04, 9.06, 8.70, 7.58, 8.34)
#a) Make a vector with the volumes of the 6 cones. (Volume=1/3 pi R2 H)
#b) Round the values to 2 decimal points and store into a vector
#c) Find out the the minimum and maximum volumes
#(hint: use the functions min and max)



R <- c(2.27, 1.98, 1.69, 1.88, 1.64, 2.14)
R    #Radius
H <- c(8.28, 8.04, 9.06, 8.70, 7.58, 8.34)
H    #Height

#2(a)
Volume<-1/3*(3.14*R*R*H)
Volume #Volume of 6 cones


#2(b)
Vol<-round(Volume,digits = 2)
Vol

#2(c)

min_vol<-min(Volume)
min_vol   #minimum volume

max_vol<-max(Volume)
max_vol   #maximum volume



#3) Create 3 Vectors A,B & C with the following contents.
#A should contain a Random sample of 250 numbers between 0 and 999.
#(hint: use the command sample(0:999,250))
#B should contain all numbers from A which are greater than 900
#(hint:use which command & subsetting with index vector)
#C should contain all the elements from B in sorted order.
#(hint:use the function sort())


#3(a)

A<-sample(0:999,250)
A         #A 

#3(b)

B<-A[which(A>900)]
B

#3(c)

C<-sort(B)
C       #C as sorted B

###############################################

#4) Assume that we have registered the height and weight for four people: Heights in cm are 180,
#165, 160, 193; weights in kg are 87, 58, 65, 100. Make two vectors, height and weight, with
#the data. The body mass index (BMI) is defined as (weight in kg/ (height in m) 2).
#a) Make a vector with the BMI values for the four people.
#b) Also make a vector with the weights for those people who have a BMI > 25.
#c) Find the average BMI Value.



H<-c(180,165,160,193)
H        #Height

W<-c(87,58,65,100)
W        #Weight

#4(a)

BMI<-W/((H/100)**2)
BMI      #BMI index of 4 people

#4(b)

new<-BMI[which(BMI>25)]
new     #BMI >25

#4(c)

avg<-mean(BMI)
avg     #Average BMI value


#5) Create a vector, marks (out of 50) of 10 students. Compute the following.
#(a) Mean of these marks and store into a variable p1
#(b) Median of these marks and store into a variable p2
#Hint: Use the functions mean and median on the vector.



marks<-sample(0:50,10)     #marks of 10 students in range of 0 to 50 marks.
marks    #marks as Vector

#5(a)
p1<-mean(marks)
p        #Mean of Marks

#5(b)
p2<-median(marks)
p2       #Median of Marks


#FACTOR#######################################

#6) Prepare a factor variable named category, which stores products categories. Use the function
#summary to see the count of each item in the variable


category<-c("winner","learner","beginner","winner","beginner","learner","Food","solid","liquid","gas")

summary(category) #summery of factor variable category



#List#########################################

#7) Create a List named student with the following data. Give the names Name, RollNo, Gender & Marks for the items
#a) Name
#b) Roll No
#c) Gender
#d) Marks for 5 subjects.
#From the above list
#a) Compute the average of marks
#b) Store the Roll No and Marks to another list.
#c) Modify the mark for the 5th subject as 100

student<-list("Rishabh",21,"male",c(85,90,92,83,87))   #list student with name,roll no. and marks of 5 subjects
student     #List

#7(a)
a<-student[4]      #[4] is the index for marks
a       #marks
avg<-lapply(a,mean)
avg     #Average of marks

avg2<-sapply(a,mean)
avg2    #Another way to check the average of marks

#7(b) 

new_list<-list(student[2],student[4])
new_list     #contains roll no and marks

7(c)

student[[4]][5]<-100     #Modify the mark for the 5th subject as 100
student


#Matrix#######################################

#8) Create the matrix from the assignment question

#Check that A3 = 0 where 0 is a 3 × 3 matrix with every entry equal to 0.



A<-matrix(c(1,1,3,5,2,6,-2,-1,-3),nrow=3,ncol=3,byrow=TRUE)   #creating the matrix
A        #Matrix

A3<-A%*%A%*%A   
A3   #A3 = 0

#9) Create the given matrix B with 15 rows:
#Calculate the 3 × 3 matrix BTB


B<-matrix(c(10,-10,10),nrow=15,ncol=3,byrow=TRUE)
B    #Matrix

t(B) #Transpose of B

BTB<-t(B)%*%B
BTB     #BTB matrix



#Data Frames##################################

#Create the dataframe given in assignment.


Al<-data.frame(Age=c(25,31,23),Height=c(177,163,190),Weight=c(57,69,83),Sex=c("F","F","M"))
Al   

rownames(Al)[1] ="Alex"
rownames(Al)[2] ="Lilly"
rownames(Al)[3] = "Mark"

Al     #dataframe asked for (Answer)


#11) Create another data frame with the following data
#Add this data frame as new column to the previous one.
#a) What class of data is in each column?
#b) Calculate the mean of heights of the people
#c) Obtain the BMI of all and add it as a new column to the data frame.


df<-data.frame(Working=c("Yes","No","No"))
df    

#Merging the dataframes by column
ndf<-cbind(Al,df)
ndf

#11(a)

#class of the data
class(ndf)

class_Age<-class(ndf$Age)  
class_Age      #numeric

class_height<-class(ndf$Height)
class_height    #numeric

class_weight<-class(ndf$Weight)
class_weight    #numeric

class_sex<-class(ndf$Sex)
class_sex       #factor

class_working<-class(ndf$Working)
class_working   #factor


#11(b)

#Mean height
avg<-mean(ndf[[2]])
avg

#11(c) BMI

W<-ndf[[3]]
W    #weight

H<-ndf[[2]]/100
H    #Height in metres

H2<-H*H 
H2    #Height squared

BMI<-W/H2
BMI

nndf<-cbind(ndf,BMI)
nndf  #new Dataframe with BMI added 


#ARRAY########################################

#12) Create an array having 2X3X3 dimension, populate the numbers from 1 to 20 in the array.

arr<-array(1:20,c(2,3,3))
arr   # array



###BUILD IN DATAFRAMES#########################

#13) From the mtcars data frame, extract the mpg, cyl and hp to prepare a new data frame.
#b. Combine the first 5 rows and last 5 rows of mtcars to a new data frame



mtcars    #mtcars data frame

mpg<-mtcars$mpg  #mpg

cyl<-mtcars$cyl  #cyl

hp<-mtcars$hp    #hp

ndf<-data.frame(mpg,cyl,hp)
ndf              #new data frame with mpg, cyl and hp

#13(b)

head(mtcars)    #first five rows

tail(mtcars)    #last five rows

ndf<-rbind(head(mtcars),tail(mtcars))   
ndf             #new dataframe with first five and last five rows



##############THANK YOU#########################
