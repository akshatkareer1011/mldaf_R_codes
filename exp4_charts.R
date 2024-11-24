# load the library
library(ggplot2)

# Histogram of 'mpg' (Miles per Gallon)
ggplot(mtcars, aes(x = mpg)) + 
    geom_histogram(binwidth = 2, fill = "green", color = "black") + 
    labs(title = "Histogram of Miles per Gallon (MPG)", x = "MPG", y = "Frequency") + 
    theme_minimal()

# Bar chart for number of cars with different cylinder counts ('cyl') 
ggplot(mtcars, aes(x = as.factor(cyl))) + 
    geom_bar(fill = "purple", color = "black") + 
    labs(title = "Bar Chart of Cylinder Count", x = "Number of Cylinders", y = "Count") + 
    theme_minimal()

# Pie chart for the proportion of cars with different 'cyl' (cylinder) counts 
cyl_data <- table(mtcars$cyl) 
pie(cyl_data, labels = paste(names(cyl_data), "Cylinders"), main = "Pie Chart of Cylinder Counts", col = rainbow(length(cyl_data)))
