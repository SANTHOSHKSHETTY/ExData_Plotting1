## copy the data source to the working folder  and load the data
d<-read.csv("household_power_consumption.txt", header=TRUE,sep=";", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")
## subsetting as per feb 1 and 2
## plot as PNG file graphic device
## plot hist as per requirement
## close grapic device


f<-d[d$Date=='1/2/2007'|d$Date=='2/2/2007',]
png(file="plot4.png")
par(mfrow=c(2,2))
with(f, {


plot(strptime(paste(f$Date,f$Time),"%d/%m/%Y %H:%M:%S"),f[,3],type="l",ylab="Global Active Power (killwatts)", xlab="")
 
plot(strptime(paste(f$Date,f$Time),"%d/%m/%Y %H:%M:%S"),f$Voltage,type="l",ylab="Voltage",xlab="datetime")


plot(strptime(paste(f$Date,f$Time),"%d/%m/%Y %H:%M:%S"),f[,7],type="l",ylab="Energy Sub Metering", xlab="")

points(strptime(paste(f$Date,f$Time),"%d/%m/%Y %H:%M:%S"),f[,8],type="l",ylab="Energy Sub Metering", xlab="", col="brown")

points(strptime(paste(f$Date,f$Time),"%d/%m/%Y %H:%M:%S"),f[,9],type="l",ylab="Energy Sub Metering", xlab="", col="blue")

legend("topright",pch=1, col=c("black","brown","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3") )

plot(strptime(paste(f$Date,f$Time),"%d/%m/%Y %H:%M:%S"),f[,4],type="l",ylab="Global_reactive_power", xlab="")

}
)

dev.off()