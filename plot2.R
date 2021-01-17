
data_3 <- data_2 %>% mutate(datetime = paste(data_2$Date, 
                                             data_2$Time)) 
data_3$datetime<- strptime(data_3$datetime, "%Y-%m-%d %H:%M:%S")

data_3$Global_active_power <- as.numeric(data_3$Global_active_power)


with(data_3, plot(datetime,Global_active_power,type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = ""))

dev.copy(png, "Exdata_Plotting1/plot2.png",
         width  = 480,
         height = 480)
dev.off()  

