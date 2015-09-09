plot3<-function(data_table)
{
##Reading the Data
	pwr_table<-read.table(data_table,header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
	pwr_table<-pwr_table[-c(1:66636,69517:2075259),]
##Launching the Graphic Device (png)
	png(file="plot3.png")   
##Plotting
	plot(strptime(paste0(pwr_table$Date,"/",pwr_table$Time),format="%d/%m/%Y/%H:%M:%S"),pwr_table$Sub_metering_1,ylab="Energy sub metering",main="",type="l",xlab="")
	lines(strptime(paste0(pwr_table$Date,"/",pwr_table$Time),format="%d/%m/%Y/%H:%M:%S"),pwr_table$Sub_metering_2,ylab="",main="",type="l",xlab="",col="red")
	lines(strptime(paste0(pwr_table$Date,"/",pwr_table$Time),format="%d/%m/%Y/%H:%M:%S"),pwr_table$Sub_metering_3,ylab="",main="",type="l",xlab="",col="blue")
	legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))
##Closing the Graphic Device
	dev.off()
}