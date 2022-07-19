## Pipe

data("ToothGrowth")
View(ToothGrowth)

##
filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)

arrange(filtered_tg, len, desc())

arrange(filter(ToothGrowth, dose==0.5))

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)

filtered_toothgrowth_2 <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T),.group="drop")
