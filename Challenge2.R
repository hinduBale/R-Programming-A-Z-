?read.csv()


myFile <- read.csv(file.choose())

myFile

getwd()
setwd("C:\\Users\\Rahul\\Desktop\\csrs")


myFile <- read.csv("P2-Demographic-Data.csv")

#-------------------Exploring Data--------------------#

nrow(myFile)  #number of rows
ncol(myFile)  #number of columns
head(myFile)  #Sample data(5) from the top
tail(myFile)  #Sample data(5) from the bottom

head(myFile, 10) #Specifying the number of entries from the top

str(myFile) #This is pretty cool.

            #The income group was assigned a variable by R. Eg. High Income -> 1, Lower middle income -> 2, Upper middle income -> 3, Low income -> 4
            
            #Also, Country names were assigned as factors and the total came out to be, 195 this ensures that there were no repititions in the data.

summary(myFile)

levels(myFile$Income.Group)

head(myFile, 15)

myFile$InternetUserPerBirthRate <- myFile$Internet.users / myFile$Birth.rate 

head(myFile, 15)

myFile$InternetUserPerBirthRate <- NULL

#---------------------------------Getting started with filters-----------------------------------
filter <- myFile$Birth.rate > 30.00
myFile[,3, drop = FALSE]
myFile[filter, ]


myFile[myFile$Birth.rate > 30.00 & myFile$Internet.users < 5, ]

myFile[myFile$Country.Name == "Angola", ]


#----------------------------Intro to qplot()---------------------
library(ggplot2)
?qplot()

qplot(data = myFile, x = Internet.users)

qplot(data = myFile, x = Income.Group, y = Birth.rate)

qplot(data = myFile, x = Income.Group, y = Birth.rate, size = I(3))

qplot(data = myFile, x = Income.Group, y = Birth.rate, size = I(3), colour = I("blue"))


qplot(data = myFile, x = Income.Group, y = Birth.rate, colour = I("blue"), geom = "boxplot")


#------------------------Challenge--------------------------------
qplot(data = myFile, x = Internet.users, y = Birth.rate)
qplot(data = myFile, x = Internet.users, y = Birth.rate, size = I(3))
qplot(data = myFile, x = Internet.users, y = Birth.rate, size = I(3), colour = I("Red"))
qplot(data = myFile, x = Internet.users, y = Birth.rate, size = I(3), colour = Income.Group)























































