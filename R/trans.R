RoR <- pchange <- function(x, na.pad=T) {
  RoR = diff.default(x)/x[-length(x)]
  if(na.pad)
    c(NA, RoR)
  else
    RoR
}
change <- function(x, na.pad=T) {
  if(na.pad)
    c(NA, diff.default(x))
  else
    diff.default(x)
}

print(prod(1:4))

== print(gamma(8))
