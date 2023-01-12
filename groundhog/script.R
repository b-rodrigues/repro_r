groundhog::set.groundhog.folder("/home/groundhog_folder")

groundhog::groundhog.library("
    library(purrr)
    library(ggplot2)",
    "2017-10-04"
    )

data(mtcars)

myplot <- ggplot(mtcars) +
  geom_line(aes(y = hp, x = mpg))

ggsave("/home/project/output/myplot.pdf", myplot)
