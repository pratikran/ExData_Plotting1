# Reading Dataset and subsetting for plotting data
source("load_data.R")

png("plot3.png")
par(mar = c(5, 5, 3, 3))
with(plotDat,{
plot(DateTime, Sub_metering_1, type = "l", main = "", xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1),col=c("black", "red","blue"))
})
dev.off()