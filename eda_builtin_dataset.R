install.packages(c("ggplot2", "rvest", "dplyr"), repos = "https://cloud.r-project.org")


data(package = "datasets")

data(iris)

summary(iris)

str(iris)

library(ggplot2)

ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.3, fill = "steelblue") +
  theme_minimal()

ggplot(iris, aes(x = Species, y = Petal.Length)) +
  geom_boxplot(fill = "lightgreen") +
  theme_minimal()

ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  theme_minimal()
