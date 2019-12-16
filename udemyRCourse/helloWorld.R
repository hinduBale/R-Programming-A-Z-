myData <- read.csv(file.choose())

install.packages("ggplot2")

ggplot(data = myData[myData$carat<2.5,], aes(x=carat, y=price, colour = clarity)) + geom_point(alpha=0.1) + geom_smooth()


x <- 2L
typeof(x)

c1 <- 2 + 3i
typeof(c1)

c2 <- 5 + 14i
typeof(c2)

divRes <- c1/c2

Fname <- "Rahul"
Lname <- "Saxena"
Name = paste(Fname, Lname)

Name


for(i in 0:10)
{
  print(i)
  print("Hello")
}

counter <- 1

while(counter < 12)
{
  print(counter)
  counter <- counter + 1
}

rnorm(1)


result <- 0
input <- 100000
while(input > 0)
{
  check <- rnorm(1)
  if(check <= 1 & check >= -1)
  {
    result <- result + 1
  }
  input <- input - 1
}

answer <- (result/100000)*100

answer

?ggplot()
install.packages("ggplot2")
?ggplot()
library(ggplot2)
?plyr()
?ggplot()
?diamonds()
