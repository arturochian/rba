?vapply
?na.pad()
?diff.default
RoR = diff.default(x)/x[-length(x)]
x <- c(1:10)
x
RoR
1/9
setwd("~/GitHub/rba/data")
read.table("OHLCV.rds")
library(data.table)
?data.table
OHLCV<-read.table("OHLCV.rds", header=TRUE, sep="\t")
View(OHLCV)
OHLCV<-readRDS("OHLCV.rds") 
OHLCV
table(OHLCV$Instrument)
