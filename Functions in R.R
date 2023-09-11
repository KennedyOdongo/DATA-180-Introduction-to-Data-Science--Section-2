# Functions in R 

#A function in R is an object containing multiple interrelated statements that are 
#run together in a predefined order every time the function is called

# Functions are usually useful when you want to do the same thing over and over again

# The syntax for writing functions in R are as follows

function_name <- function(parameters){
  #Do something here
}

function_name

# A function that returns the circumference of a circle given its radius
circumference <- function(r){
  2*pi*r
}

print(circumference(2))
print(circumference(6))

 # A function that always prints your name
my_name <- function(){
  'Kennedy Odongo'
}
print(my_name())


# A function that sums two numbers
sum_two_nums <- function(x, y) {x + y}
print(sum_two_nums(3,4))
print(sum_two_nums(1256,879))

# a function that returns the mean and median of a vector of numbers

mean_median <- function(vector){
  mean <- mean(vector)
  median <- median(vector)
  return(c(mean, median))
}

mean_median