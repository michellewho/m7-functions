# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  if (length(v1) > length(v2)) {
    difference <- length(v1) - length(v2) 
  } else {
    difference <- length(v2) - length(v1) 
  }
  answer <- paste("The difference in lengths is ", difference)
  return (answer)
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1, 2, 5, 2, 6, 3, 4), c(3, 4, 2))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  if (length(v1) > length(v2)) {
    difference <- length(v1) - length(v2)
    answer <- paste("Your first vector is longer by", difference, "elements")
  } else {
    difference <- length(v2) - length(v1)
    answer <- paste("Your second vector is longer by", difference, "elements")
  }
  return (answer)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1, 2, 3, 15, 16, 73, 4), c(2, 3, 4, 5))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(v1, v2) {
  if (length(v1) > length(v2)) {
    return ("v1")
  } else {
    return ("v2")
  }
}
