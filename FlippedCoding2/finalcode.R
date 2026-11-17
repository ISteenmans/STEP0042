# finalcode.R: 8-digit student number version, FlippedCoding2 salt
# (revised November 2026: the earlier version printed the student number in hexadecimal,
#  which anyone could compute; this matches FlippedCoding1 and FlippedCoding3)

completioncode <- function(student_number) {
  sn <- gsub("\\D", "", as.character(student_number))
  if (nchar(sn) != 8L) {
    stop("Enter your 8-digit student number, e.g. 12345678")
  }
  digits <- as.integer(strsplit(sn, "")[[1]])
  salt <- c(41L, 67L, 101L, 137L, 163L, 191L, 227L, 239L)
  total <- sum(digits * salt)
  chk   <- sum(digits) %% 256L
  code <- toupper(sprintf("%04X-%04X-%02X",
                          total %% 65536L,
                          (total %/% 65536L) %% 65536L,
                          chk))
  cat("Your STEP0042 FlippedCoding2 completion code:", code, "\n")
  invisible(code)
}
