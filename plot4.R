#data
household_power_consumption<- read.table("./household_power_consumption.txt",header = TRUE, sep=";")
datetime<-strptime(paste(household_power_consumption$Date,household_power_consumption$Time,sp=" "), "%d/%m/%Y %H:%M:%S")
png("plot4.png",height = 480,width = 480)


#plot construction

par(mfrow=c(2,2))
plot(datetime,household_power_consumption$Global_active_power,type="l",xlab="",ylab="Global Active Power")
plot(datetime,household_power_consumption$Voltage,xlab="datetime",ylab="Voltage",type="l")

plot(datetime,household_power_consumption$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(datetime,household_power_consumption$Sub_metering_2,col="red")
lines(datetime,household_power_consumption$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd = 1.4,col=c("black","red","blue"))
plot(datetime,household_power_consumption$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")

dev.off()
