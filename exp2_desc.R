data(mtcars)
head(mtcars)
myData <- head(mtcars)

# using summary()
summary = summary(myData$cyl)
print(summary)

# using str()
str(myData)

# using quantiles
quantiles = quantile(myData$mpg)
print(quantiles)
