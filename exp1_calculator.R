calculator <- function() {
	while(TRUE) {
		cat("\nChoose an operation:\n")
		cat("1. Addition\n")
		cat("2. Subtraction\n")
		cat("3. Multiplication\n")
		cat("4. Division\n")
		cat("5. Quit\n")
		choice <- readline("Enter your choice: ")
		if (choice == "5") {
			break
		}
		num1 <- readline("Enter the first number: ")
		num2 <- readline("Enter the second number: ")
		num1 <- as.numeric(num1) 
        num2 <- as.numeric(num2)
        if (is.na(num1) || is.na(num2)) {
	        cat("Please enter valid numbers!\n")
        } else {
	        result <- switch(choice,
			            "1" = num1 + num2,
			            "2" = num1 - num2,
			            "3" = num1 * num2,
			            "4" = num1 / num2,
			            "Invalid choice!")
	        cat("Result:",result,"\n")
        }
	}
}

calculator()
