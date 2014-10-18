#Loading data into memory
hpc<-read.table(file="./household_power_consumption.txt", sep=";", na.strings="?", colClasses=c("character", "character", rep("numeric", times=7)), header=TRUE)

#Verifying its dimensions 2,075,259 rows and 9 columns
dim(hpc)

#Formatting and converting date and time columns into Date and strptime
hpc$DateTime<-strptime(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")
hpc$Date<-as.Date(hpc$Date, format="%d/%m/%Y")

#Subsetting relevant data
plotD<-hpc[hpc$Date==as.Date("2007-02-01", format="%Y-%m-%d")|hpc$Date==as.Date("2007-02-02", format="%Y-%m-%d"),]

#Freeing memory from original data
hpc<-NULL