# Exercise 3: working with built-in data sets

# Load R's "USPersonalExpenditure" dataset using the `data()` function
# This will produce a data frame called `USPersonalExpenditure`
data(USPersonalExpenditure)

# The variable `USPersonalExpenditure` is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can pass the USPersonalExpenditure variable as an argument to the
# `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
data <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(data)

## Consider: why are they so strange? Think about whether you could use a number 
## like 1940 with dollar notation!

# What are the row names of your dataframe?
rownames(data)

# Add a column "category" to your data frame that contains the rownames
data$category <- rownames(data)

# How much money was spent on personal care in 1940?
data["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960?
data["Food and Tobacco", "X1960"]


# What was the highest expenditure category in 1960?
max <- max(data$X1960)
data$category[data$X1960 == max]
# Define a function `lowest_category` that takes in a year as a parameter, and
# returns the lowest spending category of that year
lowest_category <- function(x) {
  x <- paste("X", x)
  min <- min(data$x)
  data$category[data$x == min]
}

# Using your function, determine the lowest spending category of each year
# Hint: use the `sapply()` function to apply your function to a vector of years
vector <- c(1940, 1945, 1950, 1955, 1960)
sapply(vector, lowest_category)
