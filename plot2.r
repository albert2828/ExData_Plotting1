source("preparing_data.r")

GAP <- con[,c(1,2)]

plot(GAP, xaxt="n", type = "l")
axis.POSIXct(side=1, at=cut(GAP$Time, "days"), format="%a") 
dev.copy(png, file="plot2.png")
dev.off()
