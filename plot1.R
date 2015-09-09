plot1<-function(data_table)
{
##Reading the Data
	pwr_table<-read.table(data_table,header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
	pwr_table<-pwr_table[-c(1:66636,69517:2075259),]
##Launching the Graphic Device (png)
	png(file="plot1.png")   
##Plotting
	hist(pwr_table$Global_active_power,xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")
##Closing the Graphic Device
	dev.off()
}