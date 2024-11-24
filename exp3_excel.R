####### YOU MAY USE YOUR OWN DATASET #######
####### OR DOWNLOAD FROM HERE -> https://gist.github.com/akshatkareer1011/793a9175792108e73273e7afe0a0e0e8

install.packages("readxl")
library(readxl)

# reading an Excel file from disk
excel_data <- read_excel("D:/data.xlsx", sheet=1)   # replace with own path
print(excel_data)
