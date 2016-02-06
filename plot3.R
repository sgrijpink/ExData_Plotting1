library(dplyr)

source("shared.R")

makeAndSavePlot(mkplot3, "plot3.png")

mkplot3 <- function() {
  with(hpc, {
    plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
    lines(DateTime, Sub_metering_2, type = "l", col = "red")
    lines(DateTime, Sub_metering_3, type = "l", col = "blue")
    
    legend("topright", cex = 0.75, lty = c(1, 1, 1), 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           col = c("black", "red", "blue"))
  })
}