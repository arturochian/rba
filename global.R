?vapply
?na.pad()
?diff.default
RoR = diff.default(x)/x[-length(x)]
x <- c(1:10)
x
RoR
1/9
setwd("~/GitHub/rba/data")
library(data.table)
OHLCV<-fread("OHLCV.rds")
read.table("OHLCV.rds")
library(data.table)
?data.table
OHLCV<-read.table("OHLCV.rds", header=TRUE, sep="\t")
View(OHLCV)
OHLCV<-readRDS("OHLCV.rds") 
?readRDS
OHLCV
table(OHLCV$Instrument)

# Undestanding 
cummax(c(3:1, 2:0, 4:2))
cumsum(1:10)
cumprod(1:10)
cummin(c(3:1, 2:0, 4:2))


library(quantmod)
library(SIT)
data <- new.env()
getSymbols.extra(c('RWX','VNQ','VGSIX'), src = 'yahoo', from = '1980-01-01', env = data, auto.assign = T)


con = gzcon(url('http://www.systematicportfolio.com/sit.gz', 'rb'))
source(con)
close(con)

plota.test()

library(RCurl)
writeBin(getBinaryURL('http://www.systematicportfolio.com/SIT.tar.gz', followlocation = TRUE, ssl.verifypeer = FALSE), 'sit')
install.packages('sit', repos = NULL, type='source')


xgdgsc/SIT


setInternet2(TRUE)
con = gzcon(url('http://www.systematicportfolio.com/sit.gz', 'rb'))
source(con)
close(con)

tickers = spl('REIT=RWX, RWX+VNQ, REIT.LONG=RWX+VNQ+VGSIX')
data <- new.env()
getSymbols.extra(tickers, src = 'yahoo', from = '1980-01-01', env = data, auto.assign = T)
bt.start.dates(data)

data$symbolnames = spl('REIT.LONG,RWX,REIT')
for(i in data$symbolnames) data[[i]] = adjustOHLC(data[[i]], use.Adjusted=T)
bt.prep(data, align='keep.all')     

plota.matplot(data$prices)



# Use extrenal data
raw.data <- new.env()
raw.data$GOLD = bundes.bank.data.gold()

tickers = spl('GLD, GLD.LONG=GLD+GOLD')
data <- new.env()
getSymbols.extra(tickers, src = 'yahoo', from = '1980-01-01', env = data, raw.data = raw.data, auto.assign = T)
bt.start.dates(data)
data$symbolnames = spl('GLD.LONG,GLD')
for(i in data$symbolnames) data[[i]] = adjustOHLC(data[[i]], use.Adjusted=T)
bt.prep(data, align='keep.all')     

plota.matplot(data$prices)  
