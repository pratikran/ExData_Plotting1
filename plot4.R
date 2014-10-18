#Loading source data
source("load_data.R")

#plotting plot4.png

png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mfrow=c(2,2))

plot(plotD$DateTime, plotD$Global_active_power, type="l", ylab="Global Active Power(kilowatts)", xlab="")
plot(plotD$DateTime, plotD$Voltage, type="l", xlab="datetime", ylab="Voltage", main="")
plot(plotD$DateTime, plotD$Sub_metering_1, type="l", ylab="Easy Sub metering", xlab="", main="")
lines(plotD$DateTime, plotD$Sub_metering_2, col="red")
lines(plotD$DateTime, plotD$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1),col=c("black", "red","blue"))
plot(plotD$DateTime, plotD$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", main="")

dev.off()