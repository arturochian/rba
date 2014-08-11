#devtools::install_github('wch/R6',build_vignettes = FALSE)
setwd("~/GitHub/rba/data")
OHLCV<-readRDS("OHLCV.rds") 
setwd("~/GitHub/rba/R")
sourceDir <- function(path, trace = TRUE, ...) {
  for (nm in list.files(path, pattern = "[.][RrSsQq]$")) {
    if(trace) cat(nm,":")
    source(file.path(path, nm), ...)
    if(trace) cat("\n")
  }
}
library(R6)
library(data.table)
source("TimeSeries.R")
sourceDir(getwd())

TimeSeries$data<-OHLCV
class(TimeSeries$data)
Returns$calcAlpha$OHLCV
return()
TimeSeries$new()
Prices$new(data=OHLCV)
Returns$new
$data<-OHLCV

sessionInfo()
OHLCV<-Returns$new
OHLCV

a <- Returns$new(data=OHLCV)
a
a <- OHLC$new(data=OHLCV)
names(OHLCV)
a$monthly()



r = Returns$new(data=OHLCV,
                id.col=.id,
                time.col=.time,
                val.col="Return")
r
r$.value
ls(Returns)
135.2*2.85
