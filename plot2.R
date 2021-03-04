#data
daten<- read.table("./household_power_consumption.txt",header = TRUE, sep=";")
household_power_consumption<-daten[daten$Date %in% c("1/2/2007","2/2/2007"),]

#plot construction
datetime<-strptime(paste(household_power_consumption$Date,household_power_consumption$Time,sp=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png",height = 480,width = 480)
#German names for "Thursday", "Friday","Saturday" --> "Do","Fr","Sa"
plot(datetime,household_power_consumption$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
