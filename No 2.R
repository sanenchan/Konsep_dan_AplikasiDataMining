#Sub-category apa saja yang ada di dalam category 
#'Office Supplies', dan
#masing-masing berapa banyak total profitnya? 

library(dplyr)

dataset <- read.csv('majuterus.csv')


hasil02 <-  dataset %>% filter(category=='Office Supplies') %>% 
  group_by(sub_category) %>% 
  summarise(total_profit = sum(profit), n_order = n())

