try(dev.off(),silent=TRUE)
x <- data.frame(name = letters[1:10], val = runif(10))
print(ggplot(x) + geom_bar(aes(x = name, y = val), stat = "identity"))
