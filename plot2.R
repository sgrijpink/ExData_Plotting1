library(dplyr)

source("shared.R")

makeAndSavePlot(mkplot2, "plot2.png")

mkplot2 <- function() {
  with(hpc, {
    plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  })
}