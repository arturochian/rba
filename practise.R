# Practise

setwd("~/GitHub/rba/data")
library(data.table)
OHLCV<-readRDS("OHLCV.rds") 
class(OHLCV)
names(OHLCV)
#OHLCV<-data.table(OHLCV)
#calc_returns("OHLCV")
#help(":=")
#calc_returns(GOOG)
#require(quantmod)
# data.table
#DT = data.table(a=LETTERS[c(1,1:3)],b=4:7,key="a")
#DT[,c:=8]        # add a numeric column, 8 for all rows
#DT[,d:=9L]       # add an integer column, 9L for all rows
#DT[,c:=NULL]     # remove column c
#DT[2,d:=10L]     # subassign by reference to column d
#DT        

##########################################
# downloading and loading with quantmod 
########################################
# http://stackoverflow.com/questions/8970823/how-to-load-csv-data-file-into-r-for-use-with-quantmod
#msft<-getSymbols("MSFT")
#write.zoo(MSFT, file="MSFT.csv", sep=",")
#saveRDS(MSFT, "MSFT.rds")

# Reading MSFT data
MSFT<-readRDS("MSFT.rds") 
MSFT<-as.data.frame(MSFT)
MSFT<-data.table(MSFT)

# Testing
calc_returns <- function(data) {
  require(quantmod)
  data[,Price:=getPrice(data)]
}
OHLCV2<-calc_returns(OHLCV)
View(OHLCV2)
?data.table
calc_returns2 <- function(data) {
  require(quantmod)
  change <- function(x) {
     x= diff.default(x)/x[-length(x)]
  print(x)}
  data[,Price:=getPrice(data)]
  data[,Returns:=change(Price)]
}
calc_returns2(MSFT)
View(MSFT)

detect_cols(MSFT)

calc_returns(MSFT)

source("~/GitHub/rba/R/trans.R") # calling pchange, change and RoR
source("~/GitHub/rba/R/metrics.R") # calling some functions :)
source("~/GitHub/rba/R/Returns.R") # calling some functions :)

example(data.table) 
MSFT[,change:=change(MSFT)]
MSFT2<-returns(MSFT)

MSFT2
View(MSFT2)
test.data.table()    
