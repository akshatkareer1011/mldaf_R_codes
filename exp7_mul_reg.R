# Load the mtcars dataset 
data <- mtcars 

# View the first few rows of the dataset to understand its structure 
head(data) 

# Apply multiple regression model 
# Dependent variable: mpg (miles per gallon) 
# Independent variables: disp(displacement),hp(horsepower),wt(weight) 
model <- lm(mpg ~ disp + hp + wt, data = data) 

# Display the summary of the model for detailed output 
summary(model)
