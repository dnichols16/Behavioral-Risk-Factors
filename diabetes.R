diab <- brf_all
colnames(diab) <- tolower(colnames(diab))
diab1 <- diab %>%
  select(poorhlth, diabage2, sex, weight2,
         height3, insulin, bldsugar, feetchk2,
         doctdiab, chkhemo3, diabeye, diabedu,
         year)
#change 9999 and 7777 to NA
diab1$height3 <- ifelse(diab1$height3 == 9999 |
                          diab1$height3 == 7777 |
                          diab$height3 >= 706, #nobody over 7 feet, 6 in tall
                           NA, diab1$height3)
#check to see if any more excessive numbers
diab1 %>% 
  select(height3) %>% 
  count(height3 >= 706)

diab1 <- diab1 %>% mutate(height3 = as.character(height3))
#function to convert weight3 to inches(then to meters for BMI
to_inches <- function(x) {
  ft <- str_split_fixed(x, "\\d\\d$", n = 2)
  ft <- as.numeric(ft[1,1])
  inch <- str_split_fixed(x, "^\\d", n = 2)
  inches <- as.numeric(ft)*12 + as.numeric(inch)
  inches <- inches[[2]]
  return(inches)
}
diab1 <- diab1 %>% 
  mutate(inches = map_dbl(height3, to_inches))

#random impute height3 NA's
ggplot(diab1) + #check the shape
  geom_smooth(aes(x = inches)) +
  xlim(50, 80)

mn <- mean(diab1$inches, na.rm = TRUE)
sdev <- sd(diab1$inches, na.rm = TRUE)
sum(is.na(diab1$inches))
diab1 <- diab1 %>% #impute
  mutate(inches = if_else(is.na(diab1$inches),
                          rnorm(1, mn, sdev), 
                          diab1$inches))

#change 9999 and 7777 to NA in weight2
diab1$weight2 <- ifelse(diab1$weight2 == 9999 |
                          diab1$weight2 == 7777 |
                          diab$weight2 >= 350, 
                        NA, diab1$weight2)
diab1 %>% 
  select(weight2) %>% 
  count(weight2 >= 350)

ggplot(diab1) + #check the shape
  geom_density(aes(x = weight2)) 
  xlim(50, 80)
  
mn <- mean(diab1$weight2, na.rm = TRUE)
sdev <- sd(diab1$weight2, na.rm = TRUE)
sum(is.na(diab1$weight2))
diab1 <- diab1 %>% #impute
  mutate(weight2 = if_else(is.na(diab1$weight2),
                            rnorm(1, mn, sdev), 
                            diab1$weight2))


#function to convert ht, wt to bmi
to_bmi  <- function(wt, ht) {
  bmi <- (wt/ht^2) * 703
}
#calculate bmi
diab1 <- diab1 %>%
  mutate(bmi = to_bmi(weight2, inches))

ggplot(diab1) + #check the shape
  geom_density(aes(x = bmi)) +
  xlim(0, 60)





