source("preparing_data.r")


par(mfrow = c(2,2))

with(con, {
      plot(con[,c(1,2)], xaxt="n", type = "l", xlab= " "); axis.POSIXct(side=1, at=cut(con[,c(1,2)]$Time, "days"), format="%a")
      plot(con[,c(1,4)], xaxt="n", type = "l", xlab="Datetime"); axis.POSIXct(side=1, at=cut(con[,c(1,2)]$Time, "days"), format="%a")
      plot(con[,c(1,6)], type="n", xlab=" ")
      lines(con[,c(1,6)])
      lines(con[,c(1,7)], col = "red")
      lines(con[,c(1,8)], col= "blue")
      legend("topright", col = c("black", "red", "blue"), legend = c("sub_metering_1", "sub_metering_2", "sub_mettering_3"), lty = 1)
      plot(con[,c(1,3)], xaxt="n", type = "l", xlab=" "); axis.POSIXct(side=1, at=cut(con[,c(1,2)]$Time, "days"), format="%a")
})

dev.copy(png, file="plot4.png")
dev.off()
