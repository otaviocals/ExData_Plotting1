plot2<-function(data_table)
{
##Reading the Data
	pwr_table<-read.table(data_table,header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
	pwr_table<-pwr_table[-c(1:66636,69517:2075259),]
##Launching the Graphic Device (png)
	png(file="plot2.png")   
##Plotting
	plot(strptime(paste0(pwr_table$Date,"/",pwr_table$Time),format="%d/%m/%Y/%H:%M:%S"),pwr_table$Global_active_power,ylab="Global Active Power (kilowatts)",main="",type="l",xlab="")
##Closing the Graphic Device
	dev.off()
}