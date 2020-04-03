
#Buatlah data frame bernama 'yearly_sales' yang berisi total sales, jumlah
#customers, dan total profit tiap tahun. 
#Tahun berapa profit tertinggi diperoleh?

library(dplyr)

dataset1 <- read.csv('hmmtala.csv',sep=",",header=TRUE)

yearly <- dataset1 %>% group_by(tahun) %>% 
  summarise(total_sales = sum(sales), total_profit = sum(profit), tot_customer = n())


#hasil04 <- filter(hasil04, total_sales==max(total_sales))
provitmax <- filter(yearly, total_profit == max(total_profit))
