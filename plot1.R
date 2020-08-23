library(lubridate)

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "data.zip", method = "curl")
unzip("data.zip")

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

lapply(data$Date, dmy)

my_data <- subset(data, Date == as.Date("01/02/2007") | Date == as.Date("02/02/2007"))
 
png("plot1.png")

hist(as.numeric(my_data$Global_active_power), col = "red", 
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()