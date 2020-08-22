source("preparing_data.r")

kil <- con[,2]


hist(kil, col = "red", xlab = "Global Active Power (kilowats)", main = "Global Active Power")
dev.copy(png, file="plot1.png")
dev.off()
