#install.packages("R6")
library(R6)

Person <- R6Class("Person",
                  public = list(
                    name = NA,
                    hair = NA,
                    initialize = function(name, hair) {
                      if (!missing(name)) self$name <- name
                      if (!missing(hair)) self$hair <- hair
                      greet()
                    },
                    set_hair = function(val) {
                      hair <<- val
                    },
                    greet = function() {
                      cat(paste0("Hello, my name is ", name, ".\n"))
                    }
                  )
)

ann <- Person$new("Ann", "black")
#> Hello, my name is Ann.
ann
#> <Person>

str(ann)

ann$hair
ann$greet()
ann$set_hair("blue")
ann$hair









?R6Class
Queue <- R6Class("Queue",
                 public = list(
                   initialize = function(...) {
                     for (item in list(...)) {
                       add(item)
                     }
                   },
                   add = function(x) {
                     queue <<- c(queue, list(x))
                     invisible(self)
                   },
                   remove = function() {
                     if (length() == 0) return(NULL)
                     # Can use private$queue for explicit access
                     head <- private$queue[[1]]
                     private$queue <- private$queue[-1]
                     head
                   }
                 ),
                 private = list(
                   queue = list(),
                   length = function() base::length(queue)
                 )
)

q <- Queue$new(5, 6, "foo")
q
q$add("something")
q$add("another thing")
q$add(17)
q$remove()
q$remove()



q$queue
#> NULL
q$length()
#> Error: attempt to apply non-function

# Actually, there is a way:
q$private$queue[2]

q$add(10)$add(11)$add(12)

q$private$queue

q$remove()
q$remove()
q$remove()
q$remove()


########################
#3th example
##############
Numbers <- R6Class("Numbers",
                   public = list(
                     x = 100
                   ),
                   active = list(
                     x2 = function(value) {
                       if (missing(value)) return(x * 2)
                       else self$x <- value/2
                     },
                     rand = function() rnorm(1)
                   )
)

n <- Numbers$new()
n$x


n$x2
n$x2 <- 1000
n$x # see this!
n$rand
n$rand
n$rand <- 3 # ERROR

