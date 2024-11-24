# Load necessary library for visualization
library(ggplot2)

# Load mtcars dataset
data(mtcars)

# a. Data Distributions using Box and Scatter Plot
# Box plot for 'mpg' (miles per gallon) distribution across different 
# 'cyl' (number of cylinders)
ggplot(mtcars, aes(x = as.factor(cyl), y = mpg)) +
    geom_boxplot(fill = "lightblue", color = "darkblue") +
    labs(title = "Box Plot of MPG by Cylinder Count", x = "Number of Cylinders", y = "Miles per Gallon (MPG)") +
    theme_minimal()

# Scatter plot to show the relationship between 'mpg' (miles per gallon) 
# and 'hp' (horsepower)
ggplot(mtcars, aes(x = hp, y = mpg)) +
    geom_point(color = "blue") +
    labs(title = "Scatter Plot of MPG vs Horsepower", x = "Horsepower (HP)", y = "Miles per Gallon (MPG)") +
    theme_minimal()
