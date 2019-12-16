getwd()

movies <- read.csv(file.choose())

head(movies, 10)


colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")

colnames(movies)

head(movies, 15)

str(movies)
summary(movies)


movies$Year <- factor(movies$Year)

#-----------------------Aesthetics

library(ggplot2)

ggplot(data = movies, aes(x = CriticRating, y = AudienceRating))

ggplot(data = movies, aes(x = CriticRating, y = AudienceRating)) + geom_point()

ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, colour = Genre, size = BudgetMillions)) + 
  geom_point()


p <- ggplot(data = movies, aes(x = BudgetMillions))
#------------------Histogram-----------------------
p + geom_histogram(binwidth = 10, aes(fill = Genre), color = "Black")



#--------------------------Box-plot-----------------------------------------

q <- ggplot(data = movies, aes(x = Genre, y = AudienceRating, colour = Genre))
q + geom_boxplot(size = 1.3) + geom_jitter()


q + geom_jitter() + geom_boxplot(size = 1.3, aes(alpha = 0.5)) 


q + geom_jitter() + geom_boxplot(size = 1.3, aes(y = CriticRating, alpha = 0.5)) 



ggplot(data = movies, aes(x = BudgetMillions, y = AudienceRating, color = Genre) ) + geom_point(size = 3)


dense <- ggplot(data = movies, aes(x = BudgetMillions))
dense + geom_density()
dense + geom_density(aes(fill = Genre))
dense + geom_density(aes(fill = Genre), position = "Stack")



t <- ggplot(data = movies, aes(x = CriticRating))
t + geom_histogram(binwidth = 10, colour = "Black", fill = "White")



u <- ggplot(data = movies, aes(x = AudienceRating))
u + geom_histogram(binwidth = 10, colour = "Black", fill = "White")


v <- ggplot(data = movies, aes(x = BudgetMillions))
v + geom_histogram(binwidth = 10)
v + geom_histogram(binwidth = 10, aes(fill = Genre))
v + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black")
v + geom_histogram(binwidth = 10, colour = "Black", aes(fill = Genre)) + facet_grid(Year ~ .)
v + geom_histogram(binwidth = 10, colour = "Black", aes(fill = Genre)) + facet_grid(Genre ~ ., scales = "free")



w <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, size = BudgetMillions, colour = Genre))
w + geom_point()
w + geom_point() + facet_grid(Year ~ Genre)
w + geom_point() + facet_grid(Year ~ Genre) + geom_smooth()
w + geom_point() + geom_smooth() + facet_grid(Year ~ Genre) + coord_cartesian(ylim = c(0, 100))


m <- ggplot(data = movies, aes(x = BudgetMillions))
n <- m + geom_histogram(binwidth = 10, aes(fill = Genre), color = "Black")
n


#-----------------------------Proceeding to the Theme Layer-----------------------------------
n + xlab("Money Axis") + 
  ylab("Number of Movies")+
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x = element_text(colour = "Dark Green", size = 30),
        axis.title.y = element_text(colour = "Red", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        
        legend.title = element_text(size = 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        
        plot.title = element_text(colour = "DarkBlue", size = 40, family = "Courier")
        )
