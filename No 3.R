

#Berapa banyak order yang menghasilkan profit negatif (rugi)?

library(dplyr)

dataset <- read.csv('majuterus.csv')

hasil03 <-  dataset %>% filter(profit<0) %>% 
  summarise(order_yang_rugi = n())


