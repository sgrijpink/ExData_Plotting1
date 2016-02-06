readData <- function(rawFile = "~/Projects/Coursera/ExData_Plotting1/exdata-data-household_power_consumption.zip") {
  if (!file.exists(rawFile)) {
    downloadDataFile(rawFile)
    unzip(rawFile)
  }
  read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE, colClasses = c(
    "character", # Date: Date in format dd/mm/yyyy
    "character", # Time: time in format hh:mm:ss
    "numeric",   # Global_active_power: household global minute-averaged active power (in kilowatt)
    "numeric",   # Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
    "numeric",   # Voltage: minute-averaged voltage (in volt)
    "numeric",   # Global_intensity: household global minute-averaged current intensity (in ampere)
    "numeric",   # Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy).
    "numeric",   # Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy).
    "numeric"    # Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy).
  )) %>% 
    filter(Date == "1/2/2007" | Date == "2/2/2007") %>%
    mutate(DateTime = as.POSIXct(strptime(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")))
}

downloadDataFile <- function(fileName = "~/Projects/Coursera/ExData_Plotting1/exdata-data-household_power_consumption.zip") {
  if (!file.exists(fileName)) {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl, destfile = fileName, method = "curl")      
  }
}