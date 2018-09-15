
library(tidyverse)
library(purrr)

setwd("D:/Behavioral-Risk-Factors/temp1")
brf17 <- readRDS("brf17")
brf17$year = "2017"
#glimpse(brf17)

brf17a <- brf17[ ,c(1,17,18,27,28,29,30,31,32,
                   33,34,35,36,37,38,39,40,41,
                   42,43,44,45,46,47,48,49,50,
                   51,52,53,54,55,58,59,60,61,
                   66,67,68,69,70,71,72,73,74,
                   75,76,79,79,80,81,82,83,84,
                   85,86,87,88,89,96,97,99,104,
                   105,107,108,111,114,115,116,
                   117,118,121,122,123,124,125,
                   127,130,132,133,134,135,143,
                   144,149,150,151,152,154,155,
                   157,158,163,165,168,169,172,
                   173,175,184,185,186,192,200,
                   202,209,230,231,234,236,240,
                   242,254,359)]
brf16 <- readRDS("brf16")
brf16$year = "2016"
#equalize(brf17, brf16)
names17a <- names(brf17a)
names16 <- names(brf16)
names_both <- dplyr::intersect(names17a, names16)
brf16a <- brf16 %>% dplyr::select(c(names_both))
brf17a <- brf17 %>% dplyr::select(c(names_both))
identical(names(brf17a), names(brf16a))

brf_all <- bind_rows(brf17a, brf16a)

min_names <- names_both
rm(brf17)
rm(brf17a)
rm(brf16)
rm(brf16a)
rm(names16)
rm(names17a)
rm(names_both)
rm(min_names)
#**********************************************
brf15 <- readRDS("brf15")
brf15$year = "2015"

names_all <- names(brf_all)
names15 <- names(brf15)
names_both <- dplyr::intersect(names_all, names15)
brf15a <- brf15 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf15a))

brf_all <- bind_rows(brf_alla, brf15a)
rm(brf15)
rm(brf15a)
rm(brf_alla)
rm(names15)
rm(names_all)
rm(names_both)
#*************************************************
brf14 <- readRDS("brf14")  
brf14$year = "2014"

names_all <- names(brf_all)
names14 <- names(brf14)
names_both <- dplyr::intersect(names_all, names14)
brf14a <- brf14 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf14a))
brf_all <- bind_rows(brf_alla, brf14a)
saveRDS(brf_all, "brf_all")

rm(brf14)
rm(brf14a)
rm(brf_alla)
rm(names14)
rm(names_all)
rm(names_both)
#**********************************************
brf13 <- readRDS("brf13")  
brf13$year = "2013"

names_all <- names(brf_all)
names13 <- names(brf13)
names_both <- dplyr::intersect(names_all, names13)
brf13a <- brf13 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf13a))
brf_all <- bind_rows(brf_alla, brf13a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf13)
rm(brf13a)
rm(brf_alla)
rm(names13)
rm(names_all)
rm(names_both)
#*********************************************
brf12 <- readRDS("brf12")  
brf12$year = "2012"

names_all <- names(brf_all)
names12 <- names(brf12)
names_both <- dplyr::intersect(names_all, names12)
brf12a <- brf12 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf12a))
brf_all <- bind_rows(brf_alla, brf12a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf12)
rm(brf12a)
rm(brf_alla)
rm(names12)
rm(names_all)
rm(names_both)
#************************************************
brf11 <- readRDS("brf11")  
brf11$year = "2011"

names_all <- names(brf_all)
names11 <- names(brf11)
names_both <- dplyr::intersect(names_all, names11)
brf11a <- brf11 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf11a))
brf_all <- bind_rows(brf_alla, brf11a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf11)
rm(brf11a)
rm(brf_alla)
rm(names11)
rm(names_all)
rm(names_both)
#***********************************************
brf10 <- readRDS("brf10")  
brf10$year = "2010"

names_all <- names(brf_all)
names10 <- names(brf10)
names_both <- dplyr::intersect(names_all, names10)
brf10a <- brf10 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf10a))
brf_all <- bind_rows(brf_alla, brf10a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf10)
rm(brf10a)
rm(brf_alla)
rm(names10)
rm(names_all)
rm(names_both)
#**********************************************
brf09 <- readRDS("brf09")  
brf09$year = "2009"

names_all <- names(brf_all)
names09 <- names(brf09)
names_both <- dplyr::intersect(names_all, names09)
brf09a <- brf09 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf09a))
brf_all <- bind_rows(brf_alla, brf09a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf09)
rm(brf09a)
rm(brf_alla)
rm(names09)
rm(names_all)
rm(names_both)
#**********************************************
brf08 <- readRDS("brf08")  
brf08$year = "2008"

names_all <- names(brf_all)
names08 <- names(brf08)
names_both <- dplyr::intersect(names_all, names08)
brf08a <- brf08 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf08a))
brf_all <- bind_rows(brf_alla, brf08a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf08)
rm(brf08a)
rm(brf_alla)
rm(names08)
rm(names_all)
rm(names_both)
#***********************************************
brf07 <- readRDS("brf07")  
brf07$year = "2007"

names_all <- names(brf_all)
names07 <- names(brf07)
names_both <- dplyr::intersect(names_all, names07)
brf07a <- brf07 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf07a))
brf_all <- bind_rows(brf_alla, brf07a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf07)
rm(brf07a)
rm(brf_alla)
rm(names07)
rm(names_all)
rm(names_both)
#***********************************************
brf06 <- readRDS("brf06")  
brf06$year = "2006"

names_all <- names(brf_all)
names06 <- names(brf06)
names_both <- dplyr::intersect(names_all, names06)
brf06a <- brf06 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf06a))
brf_all <- bind_rows(brf_alla, brf06a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf06)
rm(brf06a)
rm(brf_alla)
rm(names06)
rm(names_all)
rm(names_both)
#***********************************************
brf05 <- readRDS("brf05")  
brf05$year = "2005"

names_all <- names(brf_all)
names05 <- names(brf05)
names_both <- dplyr::intersect(names_all, names05)
brf05a <- brf05 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf05a))
brf_all <- bind_rows(brf_alla, brf05a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf05)
rm(brf05a)
rm(brf_alla)
rm(names05)
rm(names_all)
rm(names_both)
#**********************************************
brf04 <- readRDS("brf04")  
brf04$year = "2004"

names_all <- names(brf_all)
names04 <- names(brf04)
names_both <- dplyr::intersect(names_all, names04)
brf04a <- brf04 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf04a))
brf_all <- bind_rows(brf_alla, brf04a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf04)
rm(brf04a)
rm(brf_alla)
rm(names04)
rm(names_all)
rm(names_both)
#********************************************
brf03 <- readRDS("brf03")  
brf03$year = "2003"

names_all <- names(brf_all)
names03 <- names(brf03)
names_both <- dplyr::intersect(names_all, names03)
brf03a <- brf03 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf03a))
brf_all <- bind_rows(brf_alla, brf03a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf03)
rm(brf03a)
rm(brf_alla)
rm(names03)
rm(names_all)
rm(names_both)
#********************************************
brf02 <- readRDS("brf02")  
brf02$year = "2002"

names_all <- names(brf_all)
names02 <- names(brf02)
names_both <- dplyr::intersect(names_all, names02)
brf02a <- brf02 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf02a))
brf_all <- bind_rows(brf_alla, brf02a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf02)
rm(brf02a)
rm(brf_alla)
rm(names02)
rm(names_all)
rm(names_both)
#*********************************************
brf01 <- readRDS("brf01")  
brf01$year = "2001"

names_all <- names(brf_all)
names01 <- names(brf01)
names_both <- dplyr::intersect(names_all, names01)
brf01a <- brf01 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf01a))
brf_all <- bind_rows(brf_alla, brf01a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf01)
rm(brf01a)
rm(brf_alla)
rm(names01)
rm(names_all)
rm(names_both)
#**********************************************
brf00 <- readRDS("brf00")  
brf00$year = "2000"

names_all <- names(brf_all)
names00 <- names(brf00)
names_both <- dplyr::intersect(names_all, names00)
brf00a <- brf00 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf00a))
brf_all <- bind_rows(brf_alla, brf00a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf00)
rm(brf00a)
rm(brf_alla)
rm(names00)
rm(names_all)
rm(names_both)
#**********************************************
brf99 <- readRDS("brf99")  
brf99$year = "1999"

names_all <- names(brf_all)
names99 <- names(brf99)
names_both <- dplyr::intersect(names_all, names99)
brf99a <- brf99 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf99a))
brf_all <- bind_rows(brf_alla, brf99a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf99)
rm(brf99a)
rm(brf_alla)
rm(names99)
rm(names_all)
rm(names_both)
#*************************************************
brf98 <- readRDS("brf98")  
brf98$year = "1998"

names_all <- names(brf_all)
names98 <- names(brf98)
names_both <- dplyr::intersect(names_all, names98)
brf98a <- brf98 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf98a))
brf_all <- bind_rows(brf_alla, brf98a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf98)
rm(brf98a)
rm(brf_alla)
rm(names98)
rm(names_all)
rm(names_both)
#*************************************************
brf97 <- readRDS("brf97")  
brf97$year = "1997"

names_all <- names(brf_all)
names97 <- names(brf97)
names_both <- dplyr::intersect(names_all, names97)
brf97a <- brf97 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf97a))
brf_all <- bind_rows(brf_alla, brf97a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf97)
rm(brf97a)
rm(brf_alla)
rm(names97)
rm(names_all)
rm(names_both)
#************************************************
brf95 <- readRDS("brf95")  
brf95$year = "1995"

names_all <- names(brf_all)
names95 <- names(brf95)
names_both <- dplyr::intersect(names_all, names95)
brf95a <- brf95 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf95a))
brf_all <- bind_rows(brf_alla, brf95a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf95)
rm(brf95a)
rm(brf_alla)
rm(names95)
rm(names_all)
rm(names_both)
#************************************************
brf94 <- readRDS("brf94")  
brf94$year = "1994"

names_all <- names(brf_all)
names94 <- names(brf94)
names_both <- dplyr::intersect(names_all, names94)
brf94a <- brf94 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf94a))
brf_all <- bind_rows(brf_alla, brf94a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf94)
rm(brf94a)
rm(brf_alla)
rm(names94)
rm(names_all)
rm(names_both)
#**************************************************
brf93 <- readRDS("brf93")  
brf93$year = "1993"

names_all <- names(brf_all)
names93 <- names(brf93)
names_both <- dplyr::intersect(names_all, names93)
brf93a <- brf93 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf93a))
brf_all <- bind_rows(brf_alla, brf93a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf93)
rm(brf93a)
rm(brf_alla)
rm(names93)
rm(names_all)
rm(names_both)
#************************************************
brf92 <- readRDS("brf92")  
brf92$year = "1992"

names_all <- names(brf_all)
names92 <- names(brf92)
names_both <- dplyr::intersect(names_all, names92)
brf92a <- brf92 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf92a))
brf_all <- bind_rows(brf_alla, brf92a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf92)
rm(brf92a)
rm(brf_alla)
rm(names92)
rm(names_all)
rm(names_both)
#************************************************
brf91 <- readRDS("brf91")  
brf91$year = "1991"

names_all <- names(brf_all)
names91 <- names(brf91)
names_both <- dplyr::intersect(names_all, names91)
brf91a <- brf91 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf91a))
brf_all <- bind_rows(brf_alla, brf91a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf91)
rm(brf91a)
rm(brf_alla)
rm(names91)
rm(names_all)
rm(names_both)
#************************************************
brf90 <- readRDS("brf90")  
brf90$year = "1990"

names_all <- names(brf_all)
names90 <- names(brf90)
names_both <- dplyr::intersect(names_all, names90)
brf90a <- brf90 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf90a))
brf_all <- bind_rows(brf_alla, brf90a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf90)
rm(brf90a)
rm(brf_alla)
rm(names90)
rm(names_all)
rm(names_both)
#***************************************************
brf89 <- readRDS("brf89")  
brf89$year = "1989"

names_all <- names(brf_all)
names89 <- names(brf89)
names_both <- dplyr::intersect(names_all, names89)
brf89a <- brf89 %>% dplyr::select(c(names_both))
brf_alla <- brf_all %>% dplyr::select(c(names_both))
identical(names(brf_alla), names(brf89a))
brf_all <- bind_rows(brf_alla, brf89a)
brf_all_backup <- brf_all
saveRDS(brf_all, "brf_all")

rm(brf89)
rm(brf89a)
rm(brf_alla)
rm(names89)
rm(names_all)
rm(names_both)
brf_all_from89 <- brf_all

#*************************************************
#*************************************************














































