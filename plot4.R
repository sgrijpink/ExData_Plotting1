library(dplyr)

source("shared.R")

makeAndSavePlot(mkplot4, "plot4.png")

mkplot4 <- function() {

  par(
    mfrow = c(2,2), 
    mar = c(4, 4, 2, 2), 
    oma = c(0, 0, 2, 0),
    cex.lab = 0.75,
    cex.axis = 0.75)
  
  with(hpc, {

    # plot 1
    plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

    #plot 2
    plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

    # plot 3
    plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
    lines(DateTime, Sub_metering_2, type = "l", col = "red")
    lines(DateTime, Sub_metering_3, type = "l", col = "blue")
    
    legend("topright", cex = 0.75, lty = c(1, 1, 1), bty = "n",
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           col = c("black", "red", "blue"))
    
    # plot 4
    plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
    
  })
}