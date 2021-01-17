library(dplyr)
setwd("C:/Users/wenju/OneDrive/Documents/R/Exploratory_data/week1")
data_1 <-read.table("household_power_consumption.txt", header = TRUE,
                   sep = ";")
na_if(data_1, "?")
data_1$Date <- as.Date(data_1$Date, format = "%d/%m/%Y")
data_2 <-subset(data_1, data_1$Date >= "2007-02-01" & 
                  data_1$Date <= "2007-02-02")
head(data_2)

str(data_2)

GAP <- as.numeric(data_2$Global_active_power)

hist(GAP, xlab ="Global Active Power(Kilowatts)", 
     ylab = "Frequency", main ="Global Active Power",
     col = "red")

dev.copy(png, "Exdata_Plotting1/plot1.png",
         width  = 480,
         height = 480)
dev.off()  

