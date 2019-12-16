movieChallenge <- read.csv(file.choose())


head(movieChallenge, 30)

colnames(movieChallenge)

colnames(movieChallenge) <- c("Day", "Director", "Genre", "Title", "Date", "Studio", "AdjustedGross", "Budget", "Gross",
                              "IMDB", "MovieLens", "Overseas", "OverseasPercentage", "Profit", "ProfitPercentage", "Runtime", "US", "GrossUS")

rm(filteredStudio)

filteredGenre <- movieChallenge$Studio == "Buena Vista Studios" | movieChallenge$Studio == "Fox" | movieChallenge$Studio == "Sony" |
  movieChallenge$Studio == "Paramount Pictures" | movieChallenge$Studio == "WB" | movieChallenge$Studio == "Universal" 

movieChallenge <- movieChallenge[filteredGenre, ]

head(movieChallenge, 20)

rm(filteredGenre)

filteredStudio <- movieChallenge$Genre == "action" | movieChallenge$Genre == "adventure" | movieChallenge$Genre == "animation" |
  movieChallenge$Genre == "comedy" | movieChallenge$Genre == "drama"  

movieChallenge <- movieChallenge[filteredStudio, ]

head(movieChallenge, 25)

colnames(movieChallenge)

library(ggplot2)
rm(t)
t <- ggplot(data = movieChallenge, aes(x = Genre, y = GrossUS))
t + geom_point()


rm(u)

u <- t + geom_jitter(aes(color = Studio, size = Budget)) + geom_boxplot(alpha = 0.6, outlier.color = NA)
u

u <- u + xlab("Genre") + 
  ylab("Gross % US")+
  ggtitle("Domestic Gross % by Genre") +
  theme(axis.title.x = element_text(colour = "DarkBlue", size = 30),
        axis.title.y = element_text(colour = "DarkBlue", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        plot.title = element_text(colour = "DarkBlue", size = 40, family = "Courier")
  )

u$labels$size <- "Budget $M"

u
