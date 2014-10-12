# Reading Dataset and subsetting for plotting data
source("load_data.R")

png("plot4.png")
par(mar = c(5, 5, 3, 3), mfrow = c(2,2))
hist(plotDat$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
with(plotDat, {
plot(DateTime, Voltage, type = "l", main = "")
})
with(plotDat,{
plot(DateTime, Sub_metering_1, type = "l", main = "", xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", bty = "n", cex = 0.8, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1),col=c("black", "red","blue"))
})
with(plotDat, {
plot(DateTime, Global_reactive_power, type = "l", main = "")
})
dev.off()