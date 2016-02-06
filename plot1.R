library(dplyr)

source("shared.R")

plot1 <- function() {
  hpc <- readData()
  hist(hpc$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
  dev.copy(png, filename = "plot1.png")
  dev.off()
}

