# Load necessary libraries 
library(ggplot2) 

# Load the iris dataset 
data(iris) 

# Set seed for reproducibility 
set.seed(123) 

# Perform k-means clustering with 3 clusters 
kmeans_result <- kmeans(iris[, 1:4], centers = 3) 

# Add the cluster assignment to the iris dataset 
iris$Cluster <- as.factor(kmeans_result$cluster) 

# Visualize Sepal dimensions (Sepal.Length vs Sepal.Width) by Cluster 
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Cluster)) + 
    geom_point(size = 3) + 
    labs(title = "K-Means Clustering on Iris Dataset (Sepal Dimensions)", 
    x = "Sepal Length", y = "Sepal Width") + 
    theme_minimal() 

# Visualize Petal dimensions (Petal.Length vs Petal.Width) by Cluster 
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Cluster)) + 
    geom_point(size = 3) + 
    labs(title = "K-Means Clustering on Iris Dataset (Petal Dimensions)", 
    x = "Petal Length", y = "Petal Width") + 
    theme_minimal() 

# Pairs plot with clusters 
pairs(iris[, 1:4], col = iris$Cluster, main = "Pairs Plot of Iris Dataset with Clusters") 

# Compare with actual species labels 
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) + 
    geom_point(size = 3) + 
    labs(title = "Iris Dataset - Actual Species",
    x = "Petal Length", y = "Petal Width") + 
    theme_minimal()
