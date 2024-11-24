####### YOU MAY USE YOUR OWN DATASET #######
####### OR DOWNLOAD FROM HERE -> https://learn.microsoft.com/en-us/previous-versions/windows/desktop/ms762271(v=vs.85)

install.packages("XML")
library(XML)

# reading an XML file from disk
xml_data <- xmlTreeParse("D:/data.xml", useInternalNodes=TRUE)  # replace with own path
print(xml_data)
