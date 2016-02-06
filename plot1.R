library(dplyr)

source("shared.R")

makeAndSavePlot(mkplot1, "plot1.png")

mkplot1 <- function() {
  hist(hpc$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
}

