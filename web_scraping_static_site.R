library(rvest)
library(dplyr)

url <- "https://books.toscrape.com/"

page <- read_html(url)

titles <- page %>% html_nodes(".product_pod h3 a") %>% html_attr("title")
prices <- page %>% html_nodes(".price_color") %>% html_text()
ratings <- page %>% html_nodes(".product_pod p.star-rating") %>% html_attr("class")

ratings <- gsub("star-rating ", "", ratings)

books_data <- data.frame(
  Title = titles,
  Price = prices,
  Rating = ratings
)

books_data
