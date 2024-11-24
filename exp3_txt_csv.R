####### YOU MAY USE YOUR OWN DATASET #######
####### OR DOWNLOAD FROM HERE -> (txt) https://gist.github.com/akshatkareer1011/28e28cc20077d8fa752a87560cf4db91
####### OR DOWNLOAD FROM HERE -> (csv) https://gist.github.com/akshatkareer1011/60ec0d1441c556fc65071369227ffd49

csv_file_path <- "D:/test_data.csv"		# replace with own path
txt_file_path <- "D:/test_data.txt"		# replace with own path

# function to check if file exists and reading
read_file <- function(file_path, file_type) {
	if (file.exists(file_path)) {
		if (file_type=="csv") {
			data <- read.csv(file_path,header=TRUE)
			print("CSV file content:")
		} else if(file_type=="txt") {
			data <- read.table(file_path,header=TRUE,sep="\t")
			print("TXT file content:")
		}
		print(data)
		return(data)
	} else {
		cat("File not found:",file_path, "\n")
		return
	}
}

# function to write a DataFrame to CSV and TXT formats
write_files <- function(data, csv_output_path, txt_output_path) {
	# writing to CSV
	write.csv(data, csv_output_path, row.names=FALSE)
	cat("CSV file written to: ",csv_output_path, "\n")

	# writing to TXT
	write.table(data,txt_output_path,sep="\t",row.names=FALSE)
	cat("TXT file written to:",txt_output_path, "\n")
}

test_data <- data.frame(
	ID = c(1,2,3),
	Name = c("A", "B","C"),
    Age = c(23,25,30),
    Occupation = c("Engineer","Doctor","Lawyer")
)

csv_output_path <- "./test_data.csv"	# replace with own path
txt_output_path <- "./test_data.txt"	# replace with own path

# reading the files
csv_data <- read_file(csv_file_path, "csv")
txt_data <- read_file(txt_file_path, "txt")

# writing to files
write_files(test_data, csv_output_path, txt_output_path)
