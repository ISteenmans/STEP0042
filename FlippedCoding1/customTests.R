# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.

# in customTests.R (optional)
# student_number_test <- function() {expr <- getState()$last_expression ok <- grepl("completioncode\\(", expr) && grepl("\\b\\d{8}\\b", expr) if (!ok) {
    cat("Please call completioncode() with your 8-digit number, e.g. completioncode(12345678).\n") return(FALSE)}TRUE}

