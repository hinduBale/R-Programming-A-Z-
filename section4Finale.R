myPlottingFunction <- function(data, rows){
  Data <- data[rows, , drop = FALSE]
  matplot(t(Data), type = "b", pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = 0.01, legend = Players[rows], pch = 15:18, col = c(1:4,6))
}

myPlottingFunction(Salary)
