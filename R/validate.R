# they're just examples of RoR!
x<-c(0.3,-0.14,0.3,0.2,0.8) #fine
x1<-c(0.3,-0.14,1.3,0.2,0.8) #130%? Something strange
x2<-c(0.3,-0.14,0.3,0.2,-0.9) #-90%? Something strange
x3<-c(0.3,-0.04,0.3,0.6,0.3) #30%? Something strange

validate <- function(x, max=80, min=-80,freq=12) {
x<-x*100  
if(any(x < min)) {
  #stop("posible error")
  message ("Something strange, some RoR are too negative!")}
else if(any(x > max)){ 
    #stop("posible error")}
  message ("Something strange, some RoR are too high!")}
else
message ("Works fine!")
}

validate(x) #see
validate(x1)
validate(x2)

validate(x3,max=50) # now 

