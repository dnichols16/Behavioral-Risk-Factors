smok <- readRDS("brf_all_from89.rds")
glimpse(smok)
colnames(smok) <- tolower(colnames(smok))
smok1 <- smok %>%
  filter(smoke100 == 2 | smoke100 == 1)
smokers <- smok1 %>% 
  group_by(year) %>% 
  count(smoke100)
smokers_wide <- smokers %>% 
  spread(smoke100, n) %>% 
  rename(smokers = "1", non_smokers = "2") %>% 
  mutate(smok_prop = smokers/(smokers + non_smokers))
smok_time <- smokers_wide[, 4]
smok_time <- ts(smok_time, start = 1989, end = 2017)
plot(smok_time)
#**************************************************
ggplot(smokers_wide) +
  geom_line(aes(x = as.numeric(year), y = smok_prop))
#*************************************************
smokers_sx <- smok1 %>% 
  group_by(year,sex) %>% 
  count(smoke100)
smokers_wide_sx <- smokers_sx %>% 
  spread(smoke100, n) %>% 
  rename(smokers = "1", non_smokers = "2") %>% 
  mutate(smok_prop = smokers/(smokers + non_smokers))
ggplot(smokers_wide_sx) +
  geom_line(aes(x = as.numeric(year), 
                y = smok_prop,
                group = factor(sex),#male = 1, female = 2
                color = factor(sex)))




