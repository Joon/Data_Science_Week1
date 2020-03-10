date <- c("2018-10-15", "2018-01-11", "2018-10-21", "2018-10-28", "2018-05-01")
country <- c("US", "US", "IRL", "IRL", "IRL")
gender <- c("M", "F", "F", "M", "F")
age <- c(32, 45, 25, 39, 99)
q1 <- c(5, 3, 3, 3, 2)
q2 <- c(4, 5, 5, 3, 2)
q3 <- c(5, 2, 5, 4, 1)
q4 <- c(5, 5, 5, NA, 2)
q5 <- c(5, 5, 2, NA, 1)

col_names <- c("Date", "Country", "Gender", "Age", "Q1", "Q2", "Q3", "Q4", "Q5")
managers <- data.frame(date, country, gender, age, q1, q2, q3, q4, q5)
colnames(managers) <- col_names

str(managers)
str(managers["Gender"])

# First TODO: Recode wrong date (age 99) to NA
managers$Age[managers$Age == 99] <- NA

# Categorise managers based on age
managers$AgeCat[managers$Age >= 45] <- "Elderly" 
managers$AgeCat[managers$Age >= 26 && managers$Age < 44] <- "Middle Aged" 
managers$AgeCat[managers$Age <= 25] <- "Young" 

# Issues with Date field - convert to date instead of factor
managers$Date = as.Date(managers$Date)

# Calculate a single mean for each line for all qs (skip incomplete)
managers$MeanNoNA <- (managers$Q1 + managers$Q2 + managers$Q3 + managers$Q4 + managers$Q5) / 5

# handle incomplete data
library(na.tools)
managers$MeanHandleNA <- (managers$Q1 + managers$Q2 + managers$Q3 + na.replace(managers$Q4, 0) + na.replace(managers$Q5, 0)) / 5
