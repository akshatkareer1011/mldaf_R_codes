# Load necessary packages 
install.packages("corrplot") 
library(corrplot)

# Load the iris dataset 
data(iris) 

# Find the correlation matrix 
numeric_data <- iris[, 1:4] 
cor_matrix <- cor(numeric_data) 
print(cor_matrix)

# Plot the correlation matrix 
corrplot(cor_matrix, method = "circle")