#Loading source data
source("load_data.R")

#plotting plot3.png

png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(plotD$DateTime, plotD$Sub_metering_1, type="l", ylab="Easy Sub metering", xlab="", main="")
lines(plotD$DateTime, plotD$Sub_metering_2, col="red")
lines(plotD$DateTime, plotD$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1),col=c("black", "red","blue"))
dev.off()