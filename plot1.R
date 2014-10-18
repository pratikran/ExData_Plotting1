#Loading source data
source("load_data.R")

#plotting plot1.png
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
hinfo<-hist(plotD$Global_active_power, col="red", xlab="Global Active Power(Kilowatts)", main="Global Active Power", ylim=c(0,1200), breaks=12)
dev.off()