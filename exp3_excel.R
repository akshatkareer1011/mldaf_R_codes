####### YOU MAY USE YOUR OWN DATASET #######
####### OR DOWNLOAD FROM HERE -> 

install.packages("readxl")
library(readxl)

# reading an Excel file from disk
excel_data <- read_excel("D:/data.xlsx", sheet=1)   # replace with own path
print(excel_data)
