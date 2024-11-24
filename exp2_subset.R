data(iris)
head(iris)
data <- head(iris)
print(data)

# using subset()
data1 <- subset(data, select=Sepal.Width)
print(data1)

# using aggregate()
# group mean
aggregate(.~Species, iris, mean)
# group standard deviation
aggregate(.~Species, iris, sd)
