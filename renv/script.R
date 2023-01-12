library(purrr)
library(ggplot2)

data(mtcars)

myplot <- ggplot(mtcars) +
  geom_line(aes(y = hp, x = mpg))

ggsave("/home/project/output/myplot.pdf", myplot)
