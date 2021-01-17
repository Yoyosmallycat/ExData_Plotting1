par(mfrow= c(2, 2), mar = c(5, 4, 2, 2))

data_3$Global_reactive_power <- as.numeric(data_3$Global_reactive_power)
data_3$Voltage <- as.numeric(data_3$Voltage)
str(data_3)
with(data_3, plot(datetime, Global_active_power, type = "l", 
                  xlab="", ylab = "Global Active Power"))

with(data_3, plot(datetime, Voltage, type = "l", 
                  xlab="", ylab = "Global Active Power", 
                  sub = "datetime"))

with(data_3, plot(datetime, Sub_metering_1, type = "l",                         
                  xlab = "", ylab = "Energy sub metering", 
                  col= "black"))
with(data_3, lines(datetime, Sub_metering_2, col= "red"))
with(data_3, lines(datetime, Sub_metering_3, col= "blue"))
legend("topright", col = c("black", "red", "blue"), 
       lty =1, lwd = 2, y.intersp = 0.3, cex = 0.6,
       text.width = strwidth("100"), xjust = 1,
       legend = c("Sub_metering_1","Sub_metering_2", 
                  "Sub_metering_3"))

with(data_3, plot(datetime, Global_reactive_power, type = "l", 
                  xlab="", sub = "datetime"))

dev.copy(png, "Exdata_Plotting1/plot4.png",
         width  = 480,
         height = 480)
dev.off()  

