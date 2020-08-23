library(lubridate)

# url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
# download.file(url, destfile = "data.zip", method = "curl")
# unzip("data.zip")
# 
# data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
# 
# data$Date <- dmy(data$Date)
# 
# my_data <- subset(data, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))
# 
# my_data$Date <- ymd(my_data$Date) + hms(my_data$Time)

png("plot2.png")

plot(ymd_hms(my_data$Date), my_data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

dev.off()