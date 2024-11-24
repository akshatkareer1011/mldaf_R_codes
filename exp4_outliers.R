# load the library
library(ggplot2)

# Box plot to identify outliers in 'hp' (horsepower) variable
ggplot(mtcars, aes(x = "", y = hp)) +
    geom_boxplot(fill = "orange", color = "darkred") +
    labs(title = "Box Plot of Horsepower (HP)", x = "", y = "Horsepower") +
    theme_minimal()
    
# Outliers can be observed as points outside the whiskers of the boxplot.
