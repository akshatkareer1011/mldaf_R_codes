# Load necessary packages 
install.packages("corrplot") 
library(corrplot) 

# Load the iris dataset 
data(iris) 

# Perform ANOVA 
anova_sepal_length <- aov(Sepal.Length ~ Species, data = iris) 
summary(anova_sepal_length) 
anova_sepal_width <- aov(Sepal.Width ~ Species, data = iris) 
summary(anova_sepal_width)
anova_petal_length <- aov(Petal.Length ~ Species, data = iris) 
summary(anova_petal_length)
anova_petal_width <- aov(Petal.Width ~ Species, data = iris) 
summary(anova_petal_width)
