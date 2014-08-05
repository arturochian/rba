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
source("TimeSeries.R")
sourceDir(getwd())
