read.csv(file.choose())

myData <- read.csv(file.choose())

head(myData)

myData.1960 <- myData[myData$Year == 1960, ]

myData.2013 <- myData[myData$Year == 2013, ]

head(myData.1960)
head(myData.2013)

colnames(myData.1960) <- c("Country.Name", "Country.Code.1960", "Region", "Year", "Fertility.Rate")
colnames(myData.2013) <- c("Country.Name", "Country.Code.2013", "Region", "Year", "Fertility.Rate")

colnames(myData.1960)

rm(myData)

nrow(myData)
nrow(myData.2013)
nrow(myData.1960)


#--------------------------------------We've imported the data from the R vectors-----------------------
#-------------------------Merging it.....-----------------------------------------------------

merged.1960 <- merge(myData.1960, homework.df.1960, by.x = "Country.Code.1960", by.y = "CodeOfCountry")
merged.2013 <- merge(myData.2013, homework.df.2013, by.x = "Country.Code.2013", by.y = "CodeOfCountry")

#---------------------------Now we have 2 separate data frames-----------------------------

head(merged.1960, 15)
head(merged.2013, 15)

#--------------------------------Plotting the required scatter plot----------------------------
 #-------------------------------------1960's-------------------------------------------------

qplot(data = merged.1960, x = Fertility.Rate, y = leab, size = I(4), color = Region, shape = I(18), alpha = I(0.6))



  #-------------------------------------2013's-------------------------------------------------

qplot(data = merged.2013, x = Fertility.Rate, y = leab, size = I(3), color = Region, shape = I(15), alpha = I(0.6))
