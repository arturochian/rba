Person <- setRefClass("Person")
Person$new()
Person <- setRefClass("Person", methods = list(
  say_hello = function() message("Hi!")
))

# You can build it up piece-by-piece
Person <- setRefClass("Person")
Person$methods(say_hello = function() message("Hi!"))
Person
is.object(sum)
