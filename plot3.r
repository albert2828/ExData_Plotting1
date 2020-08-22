source("preparing_data.r")

sub_mettering <- con[, -c(2:5)]

      
with(sub_mettering, plot(Time, Sub_mettering1 , ylab = "Energy submettering", type = "n", xlab = " "))
lines(sub_mettering$Time, sub_mettering$Sub_mettering1)
lines(sub_mettering$Time, sub_mettering$Sub_mettering2, col = "red")
lines(sub_mettering$Time, sub_mettering$Sub_mettering3, col= "blue")
legend("topright", col = c("black", "red", "blue"), legend = c("sub_metering_1", "sub_metering_2", "sub_mettering_3"), lty = 1)
dev.copy(png, file="plot3.png")
dev.off()
