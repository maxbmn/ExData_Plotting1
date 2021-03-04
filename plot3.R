#data
daten<- read.table("./household_power_consumption.txt",header = TRUE, sep=";")
household_power_consumption<-daten[daten$Date %in% c("1/2/2007","2/2/2007"),]

#plot construction
datetime<-strptime(paste(household_power_consumption$Date,household_power_consumption$Time,sp=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png",height = 480,width = 480)
#German names for "Thursday", "Friday","Saturday" --> "Do","Fr","Sa"
plot(datetime,household_power_consumption$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(datetime,household_power_consumption$Sub_metering_2,col="red")
lines(datetime,household_power_consumption$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd = 1.4,col=c("black","red","blue"))
dev.off()
