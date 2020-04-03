#Antara 3 customer_id ini, mana yang total sales-nya 
#paling banyak: JE-16165,
#KH-16510, AD-10180

dataset <- read.csv('majuterus.csv')

#hasil04 <- filter(dataset, 
hasil04 <- dataset %>% filter(customer_id=='JE-16165' | customer_id=='KH-16510' |  customer_id=='AD-10180' ) %>% 
  group_by(customer_id) %>% 
  summarise(total_sales = sum(sales), n_order = n())


hasil04 <- filter(hasil04, total_sales==max(total_sales))



