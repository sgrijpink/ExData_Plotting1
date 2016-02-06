





downloadDataFile <- function(dataDir = "~/Projects/Coursera/ExData_Plotting1") {
  fileName = "exdata-data-household_power_consumption.zip"
  if (!file.exists(fileName)) {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl, destfile = file.path(dataDir, fileName), method = "curl")      
  }
}