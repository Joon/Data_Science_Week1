x <- 2
y <- 5

is.numeric(x)

test_date = as.Date('2020-12-02')
class(test_date)
is.numeric(test_date)
is.numeric.Date(test_date)

test_vector <- c(3, 5, 6, 8)
test_vector_2 <- c(3, 3, 3)

test_vector + test_vector_2

test_vector_2 + test_vector

# Vecror arithmetic
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
y <- c(x, 0, x)
z = (2 * x + y + 1) 

# Variable Operations
min(z)
max(z)
range(z)
prod(z)
mean_of_z <- mean(z)
sort(mean_of_z)
sort(z)
class(mean_of_z)

# NA values in array
my_array <- c(1:3, NA) 
is.na(my_array)
result <- is.na(my_array)

# Sequences
seq <- seq(-100, 100, 0.6)
is.numeric(seq)

mean(seq)
sort(seq, decreasing = TRUE)


