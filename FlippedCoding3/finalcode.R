# finalcode.R: 8-digit student number version, FlippedCoding3 salt
# (differs from FlippedCoding1 and STEP0020's lessons, so a code cannot be reused across lessons)

completioncode <- function(student_number) {
  # Accept numbers or strings; strip any non-digits just in case
  sn <- gsub("\\D", "", as.character(student_number))

  # Validate: exactly 8 digits
  if (nchar(sn) != 8L) {
    stop("Enter your 8-digit student number, e.g. 12345678")
  }

  # Turn into integer digits
  digits <- as.integer(strsplit(sn, "")[[1]])

  # Secret salt (length 8). Change per cohort/year.
  salt <- c(47L, 79L, 109L, 149L, 181L, 197L, 233L, 257L)

  # Mix: weighted sum + a small checksum from digit sum
  total <- sum(digits * salt)
  chk   <- sum(digits) %% 256L

  # Format: two 4-hex blocks plus a 2-hex checksum, e.g. 9F08-02E1-7C
  code <- toupper(sprintf("%04X-%04X-%02X",
                          total %% 65536L,
                          (total %/% 65536L) %% 65536L,
                          chk))

  cat("Your STEP0042 FlippedCoding3 completion code:", code, "\n")
  invisible(code)
}
