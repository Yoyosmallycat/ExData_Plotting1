data_3$Sub_metering_1 <- as.numeric(data_3$Sub_metering_1)
data_3$Sub_metering_2 <- as.numeric(data_3$Sub_metering_2)
str(data_3)
with(data_3, plot(datetime, Sub_metering_1, type = "l",                         
     xlab = "", ylab = "Energy sub metering", col= "black"))
with(data_3, lines(datetime, Sub_metering_2, col= "red"))
with(data_3, lines(datetime, Sub_metering_3, col= "blue"))
legend("topright", col = c("black", "red", "blue"), 
       lty =1, lwd = 2, y.intersp = 0.5, cex = 0.8,
       text.width = strwidth("10000"), xjust = 1,
       legend = c("Sub_metering_1","Sub_metering_2", 
                  "Sub_metering_3"))
dev.copy(png, "Exdata_Plotting1/plot3.png",
         width  = 480,
         height = 480)
dev.off()  


