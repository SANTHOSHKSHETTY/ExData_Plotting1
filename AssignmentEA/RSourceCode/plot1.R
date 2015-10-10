## copy the data source to the working folder  and load the data
d<-read.csv("household_power_consumption.txt", header=TRUE,sep=";", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")
## subsetting as per feb 1 and 2
## plot as PNG file graphic device
## plot hist as per requirement
## close grapic device


f<-d[d$Date=='1/2/2007'|d$Date=='2/2/2007',]

png(file="plot1.png")

hist(f$Global_active_power,col="red",main=paste("Global Active Power"),xlab="Global Active Power (kilowatts)")

dev.off()