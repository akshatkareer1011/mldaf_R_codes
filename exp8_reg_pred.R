####### YOU MAY USE YOUR OWN DATASET #######
####### OR DOWNLOAD FROM HERE -> https://github.com/vigneshk/Admission-Dataset/blob/master/Admission.csv

#install.packages("ggplot2") 
#install.packages("dplyr") 
#install.packages("caret") 
#install.packages("pROC") 
library(ggplot2) 
library(dplyr) 
library(caret) 
library(pROC) 

# Replace with own path 
file_path <- "D:/admission_data.csv"
 
# Import the dataset 
admission_data <- read.csv(file_path) 

# Convert 'rank' to a factor 
admission_data$rank <- as.factor(admission_data$University.Rating) 

# Set the threshold 
threshold <- 0.5 

# Convert probabilities to binary outcomes 
admission_data$admit<-ifelse(admission_data$Chance.of.Admit>=threshold, 1, 0) 

# Fit the multiple regression model 
regression_model <- lm(admit ~ GRE.Score + CGPA + rank, data = admission_data) 
summary(regression_model) 

# Make predictions on the dataset 
admission_data$predicted_probabilities <- predict(regression_model) 

# Convert probabilities to binary outcomes using a threshold (e.g., 0.5) 
admission_data$predicted_admit <- ifelse(admission_data$predicted_probabilities >= 0.5, 1, 0) 
admission_data$predicted_admit <- as.factor(admission_data$predicted_admit)
admission_data$admit <- as.factor(admission_data$admit)

# View the first few rows of the dataset with predictions 
head(admission_data)

# Create confusion matrix 
confusion_matrix <- confusionMatrix(as.factor(admission_data$predicted_admit), as.factor(admission_data$admit)) 
print(confusion_matrix) 

# Compute ROC curve 
roc_curve <- roc(admission_data$admit, admission_data$predicted_probabilities) 
plot(roc_curve) 

# Compute AUC 
auc_value <- auc(roc_curve) 
print(paste("AUC:", auc_value))
