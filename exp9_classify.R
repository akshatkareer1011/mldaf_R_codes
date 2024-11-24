####### YOU MAY USE YOUR OWN DATASET #######
####### OR DOWNLOAD FROM HERE -> https://github.com/vigneshk/Admission-Dataset/blob/master/Admission.csv

# Install and load relevant packages 
#install.packages("caret") 
#install.packages("randomForest") 
#install.packages("pROC") 
library(caret) 
library(randomForest) 
library(pROC) 
file_path <- "D:/admission_data.csv" 

# Import the dataset 
admission_data <- read.csv(file_path) 

# Convert 'rank' to factor 
admission_data$rank <- as.factor(admission_data$University.Rating) 

# Set the threshold 
threshold <- 0.5 

# Convert probabilities to binary outcomes 
admission_data$admit <- ifelse(admission_data$Chance.of.Admit >= threshold, 1, 0) 

# Split data into training and testing sets 
set.seed(123) 
train_index <- createDataPartition(admission_data$admit, p = 0.7, list = FALSE) 
train_data <- admission_data[train_index, ] 
test_data <- admission_data[-train_index, ] 

# Train the Random Forest classifier 
rf_model <- randomForest(admit ~ GRE.Score + CGPA + rank, data = train_data, importance = TRUE) 

# Make predictions on the test set
rf_predictions <- predict(rf_model, newdata = test_data) 
rf_bin_predictions <- ifelse(rf_predictions >= threshold, 1, 0) 

# Evaluate accuracy with a confusion matrix 
conf_matrix <- confusionMatrix(as.factor(rf_bin_predictions), as.factor(test_data$admit)) 
print(conf_matrix) 

# Compute and plot the ROC curve 
roc_curve <- roc(test_data$admit, as.numeric(rf_predictions)) 
plot(roc_curve, main = "ROC Curve for Random Forest Classifier")
