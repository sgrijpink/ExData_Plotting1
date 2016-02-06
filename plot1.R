library(dplyr)

source("shared.R")

plot1 <- function() {
  makeAndSavePlot(mkplot1, "plot1.png")
}

mkplot1 <- function() {
  hist(hpc$Global_active_power, col = "red", 
       main = "Global Active Power", 
       xlab = "Global Active Power (kilowatts)")
}

