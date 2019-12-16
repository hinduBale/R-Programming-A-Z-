v <- c(14,75,23,76,12444)
is.integer(v)

is.double(v)

is.numeric(v)

is.integer(v[2])
is.double(v[2])

charVec <- c("a", "abc", 656)
is.numeric(charVec[3])
is.character(charVec[3])


c <- seq(1,20,2) #seq stands for sequence.Much similar to : operator but with some added flexibilty
c


rep(c, 10)#stands for replicate