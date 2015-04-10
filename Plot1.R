
df <- read.table(file="household_power_consumption.txt",sep=";",header=TRUE, skip = grep("1/2/2007", readLines("household_power_consumption.txt")) - 1, nrows = 2879) 
colnames(df)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
hist(df$Global_active_power,col="red",breaks=11,main="Global Active Power",xlab="Global Active Power (killowatts)")
dev.copy(png,file="Plot1.png",width=480, height=480)
dev.off()