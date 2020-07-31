



#1. Identify download a dataset from internet (any format). Write a program to load it into an R
#variable and print the first six lines of the data. Submit the link from which data is taken.
#( Do not include the dataset in submission. First 6 lines printed should be included in submission)


x<-read.csv(file.choose())  # https://data.gov.in/resources-from-web-service/4206681

head(x)

#DAta




#2. Declare a vector variable having 4 numbers (7,3,4,6) to indicate the count of movies released
#this year in Comedy, Action, Romance, Science Fiction categories. Prepare a Pie chart to
#visualize the data.
#a. Show the pie slices in 4 attractive colors
#b. Give Heading for the graph
#c. Give the movie types as label against the slices


x <- c(7,3,4,6)
x
pie(x)

movies <- c("Comedy", "Action","Romance","Science Fiction")
movies

pie(x,movies)

colors = c("red","green","blue","yellow")
colors

pie(x,movies,main = "Movies this year",col = rainbow(length(x)))

dev.off()


#3. Draw a bar chart for the above data. Provide Main Heading, labels for X Axis and Y Axis.

barplot(x,names.arg = movies, xlab = "Movies",ylab = "Movies in the segment", col = "blue", main = "Movies this year",border = "red")



#4-ABC corporation manufactures and sales 3 products A, B & C. Draw a stacked bar chart to show
#the annual product sales of the company. The sales for the 4 quarters are to be displayed in
#the X axis. Use proper legends to show the sales of the 3 products




p <-  c("A","B","C")
c <- c("red","blue","green")
q <- c("Q1","Q2","Q3","Q4")

Values <- matrix(c(21,22,21,22,23,24,25,54,43,31,33,39),nrow = 3,ncol=4)
Values

barplot(Values,,names.arg = q,main = "Annual Product Sales",xlab= "Quarters",ylab = "Sales",col = c)

legend ("topleft", p,cex = 0.6,fill = c)


#5.

#5. Draw a histogram showing the Miles/gallon value distributions among the various car models
#in the mtcars data (Motor Trend Car Road Tests) results.



#data for the graph
x <- mtcars$mpg
x

hist(x,xlab = "mpg",ylab='no. of Cars',col = "yellow",border = "red", main = "Miles per Gallon distribution")

dev.off()




#6. Create a graph using the basic steps
#a. plot.new()
#b. Draw x axis and y axis
#c. Mark 5 random points (declare them as X and Y vectors)
#d. Draw a horizontal line touching the topmost point (hint :Use Max() function )


plot.new()
plot.window(xlim = c(0,10), ylim = c(0,10))
axis(1)
axis(2)

x <- sample(5)
x

y <- sample(5)
y

plot(x,y)

abline(h = max(x), col = "green")





#7. Let the following be the response of the usage of 2 drugs A & B against dosage. Draw Line chart
#showing the responses, with both data in the same graph
#drugA <- c(16, 20, 27, 40, 60)
#drugB <- c(15, 18, 25, 31, 40)
#hint: use plot function to plot the response of drugA and lines function to plot drug B in the
#same graph



A <- c(16,20,27,40,60)
B <- c(15,18,25,31,40)

plot(A,type = "s",col = "red",xlab ="Dosage", ylab = "response",main = "drug chart")

lines(B, type = "o", col = "blue")


