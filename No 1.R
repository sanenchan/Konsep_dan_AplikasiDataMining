#Carilah customer_id yang memiliki sales paling besar!


library(dplyr)
dataset <- read.csv('majuterus.csv')
#View(dataset)


#hasil <- select(dataset, c(customer_id, sales))
hasil01 <- dataset %>%  select(c(customer_id, sales)) %>% 
  filter(sales == max(sales))
