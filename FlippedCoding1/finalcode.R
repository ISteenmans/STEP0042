# Deterministic completion code from a 7-digit student number
# Uses only base R (no extra packages), and prints a short hex code.
completioncode <- function(student_number) {
  s <- suppressWarnings(as.integer(student_number))
  if (is.na(s)) stop("Enter your 7-digit student number as numbers, e.g. 1234567")
  if (nchar(sprintf("%07d", s)) != 7) stop("Please use a 7-digit student number")
  
  # Hidden 'salt' — change once per cohort/term
  salt <- c(37L, 61L, 97L, 131L, 167L, 199L, 223L)
  digits <- as.integer(strsplit(sprintf("%07d", s), "")[[1]])
  total <- sum(digits * salt)
  
  code <- toupper(sprintf("%04X-%04X", total %% 65536L, (total %/% 65536L) %% 65536L))
  cat("✅ Your STEP0042 completion code:", code, "\n")
  cat("   Save this code and post it in Moodle where requested.\n")
  invisible(code)
}
