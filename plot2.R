library(dplyr)

source("shared.R")

plot2 <- function() {
  makeAndSavePlot(mkplot2, "plot2.png")
}

mkplot2 <- function() {
  with(hpc, {
    plot(DateTime, Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
    lines(DateTime, Global_active_power, type = "l")
  })
}