data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?")
datasub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
datasub$Date <- as.Date(datasub$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(datasub$Date), datasub$Time)
datasub$Datetime <- as.POSIXct(datetime)

with(datasub, {plot(Global_active_power~Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")})
dev.copy(png, file="plot2.png", height=480, width=480)
