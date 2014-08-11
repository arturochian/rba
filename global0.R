#devtools::install_github('wch/R6',build_vignettes = FALSE)
setwd("~/GitHub/rba/data")
OHLCV<-readRDS("OHLCV.rds") 
setwd("~/GitHub/rba/R")
source("Prices.R")
source("TimeSeries.R")
source("metrics.R")
source("utils.R")
source("trans.R")
source("Returns.R")
ohlc(OHLCV)$monthly()$returns()$cor()
ohlc(OHLCV)$returns()$plot()


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
View(OHLCV)
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
returns$compress("monthly")$summary()
View()


ohlc(OHLCV)$monthly()$returns()$correlation()
ohlc(OHLCV)$monthly()$returns()$plot()
