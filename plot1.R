#data
daten<- read.table("./household_power_consumption.txt",header = TRUE, sep=";")
household_power_consumption<-daten[daten$Date %in% c("1/2/2007","2/2/2007"),]

#plot construction
png("plot1.png",height = 480,width = 480)
hist(household_power_consumption$Global_active_power,xlab = "Global Active Power (kilowatts)",col="red",main = "Global Active Power")

dev.off()
