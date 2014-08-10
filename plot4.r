## Load data
source("data.R")

## Open device - png
png(filename="plot4.png")

#### Make plots
par(mfrow=c(2,2))

## Left top
plot(pdata.df$date.time, pdata.df$Global_active_power,
     ylab="Global Active Power", xlab="", type="l")

## Right top
plot(pdata.df$date.time, pdata.df$Voltage,
     xlab="datetime", ylab="Voltage", type="l")

## Left bottom 
plot(pdata.df$date.time, pdata.df$Sub_metering_1, type="l",
     xlab="", ylab="Energy sub metering")
lines(pdata.df$date.time, pdata.df$Sub_metering_2, col="red")
lines(pdata.df$date.time, pdata.df$Sub_metering_3, col="blue")
legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), 
       lty="solid", bty="n")

## Right bottom
plot(pdata.df$date.time, pdata.df$Global_reactive_power,
     xlab="datetime", ylab="Global_reactive_power", type="l")

## Turn off device
dev.off()