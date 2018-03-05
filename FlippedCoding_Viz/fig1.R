try(dev.off(),silent=TRUE)
prez <- presidential
prez$name[prez$name == "Bush"][2] <- "Bush 2"
print(ggplot(prez) + 
  geom_linerange(aes(x = factor(name, levels = name[order(start)]), ymin = start, ymax = end, color = party), size = 3) + 
  coord_flip() +
  labs(x = ""))
