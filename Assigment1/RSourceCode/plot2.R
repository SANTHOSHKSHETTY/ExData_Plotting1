## copy the data source to the working folder  and load the data
d<-read.csv("household_power_consumption.txt", header=TRUE,sep=";", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")
## subsetting as per feb 1 and 2
## plot as PNG file graphic device
## plot hist as per requirement
## close grapic device

f<-d[d$Date=='1/2/2007'|d$Date=='2/2/2007',]

png(file="plot2.png")

 plot(strptime(paste(f$Date,f$Time),"%d/%m/%Y %H:%M:%S"),f[,3],type="l",ylab="Global Active Power (killwatts)", xlab="")


dev.off()