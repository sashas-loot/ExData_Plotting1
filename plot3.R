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

png("plot3.png")

plot(ymd_hms(my_data$Date), my_data$Sub_metering_1,type = "l",
     xlab = "", ylab = "Energy sub metering")
lines(ymd_hms(my_data$Date), my_data$Sub_metering_2,col="red")
lines(ymd_hms(my_data$Date), my_data$Sub_metering_3,col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, 
       col = c("black","red","blue"))

dev.off()