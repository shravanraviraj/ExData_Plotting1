data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?")
datasub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
datasub$Date <- as.Date(datasub$Date, format="%d/%m/%Y")
hist(datasub$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
