library(stringr)

# Write a function `money_conversion()` that takes in one numeric argument (`cents`) 
# that converts any number of cents to the equivalent 
# number of quarters, dimes, nickles, and pennies Your function should print the 
# calculated number of quarters, dimes, nickles, and pennies on one line
# hint: use the module operator
money_conversion <- function(cents) {
  quarters <- floor(cents / 25)
  cents <- cents %% 25
  dimes <- floor(cents / 10)
  cents <- cents %% 10
  nickels <- floor(cents / 5)
  pennies <- cents %% 5 
  cat("Q:", quarters, "D:", dimes, "N:", nickels, "P:", pennies)
}

# Create a vector `courses` that contains the names of 6 of your most favorite courses 
# taken at UW in the format of "INFO 201"
courses <- c("INFO 201", "CSE 143", "INFO 340", "CSE 373", "INFO 370", "LING 200")

# Create a function `check_course` that returns true or false whether or not the character argument is included in 
# your courses vector 
check_course <- function(course_code) {
  for (course in courses) {
    if (course == course_code) {
      return(TRUE)
    } else {
      return(FALSE)
    }
  }
}

check_course1 <- function(course_code) {
  for (course in courses) {
    return (course == course_code)
  }
}

## Write a function `replace_spaces` that will replace all spaces
## from all elements in your vector of courses with a hyphen "-"
replace_spaces <- function(string_vector) {
  return(str_replace_all(string_vector, " ", "-"))
}

# Create a vector `numbers` that is the numbers 1 through 100
numbers <- c(1:100)

# Create a function `get_sum` that would iterate through a given vector of numbers to find the sum of all the numbers 
get_sum <- function(num_vector) {
  sum <- 0
  for (num in num_vector) {
    sum <- sum + num
  }
  sum
}

# Create a list `student` that has four tagged elements, `first_name`, `last_name`, `net_id`, `favorite_courses` and `eligble_registration` where, 
# `first_name` is a character, 
# `last_name` is a character,
# `net_id` is a numeric,
# `favorite_courses` includes the courses vector you created previously,
# `eligible_registration` is a logical 
# give each element a value based off of yourselves
student <- list(
  first_name = "Darren",
  last_name = "Gunadharma",
  net_id = 2038958,
  favorite_courses = courses,
  eligible_registration = TRUE
)

# Now, create a list without any tagged elements but give in the same values you gave for the previous list
other_student <- list("Darren", "Gunadharma", 2038958, courses, TRUE)