library(lubridate)

unzip("exdata_data_household_power_consumption.zip")
con <- read.table("household_power_consumption.txt", sep = ";", skip=66637, nrows= 2881)
names <- c("Date", "Time", "Global active power", "Global reactive power", "Voltage", "Global intensity",
               "Sub_mettering1", "Sub_mettering2", "Sub_mettering3")
names(con) <- names
Time <- apply( con[,c(1,2)], 1, paste, collapse = " ")

con <- data.frame(Time, con[,-c(1,2)])
names(con) <- names[-1]

con$Time <- strptime(con$Time, format = "%d/%m/%Y %H: %M: %S")

