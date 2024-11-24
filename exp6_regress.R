####### YOU MAY USE YOUR OWN DATASET #######
####### OR DOWNLOAD FROM HERE -> https://stats.idre.ucla.edu/stat/data/binary.csv

# Load necessary libraries 
library(foreign) 
library(MASS) 

# Import dataset from web storage 
url <- "https://stats.idre.ucla.edu/stat/data/binary.csv" 
admission_data <- read.csv(url) 

# View the first few rows of the dataset 
head(admission_data) 

# Summary of the dataset 
summary(admission_data) 

# Logistic regression model to predict admission (binary response variable) 
# Assuming 'admit' is the dependent variable (0 = No, 1 = Yes) 
# GRE, GPA, and rank are independent variables 

logit_model <- glm(admit ~ gre + gpa + rank, data = admission_data, family = binomial) 

# Summary of the logistic regression model 
summary(logit_model) 

# Check if the model is fit 
anova(logit_model, test = "Chisq")

# Predict probabilities of admission 
predicted_admission <- predict(logit_model, type = "response") 

# Add predicted probabilities to the dataset 
admission_data$predicted_prob <- predicted_admission 

# View the updated dataset with predictions 
head(admission_data)
