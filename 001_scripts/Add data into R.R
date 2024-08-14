#Add data into R

data_casdi <- read.csv("D:/06_RCoding/CASDI/002_data/master_casdi.csv", na.strings = c("","NA"))
data_casdi
head(data_casdi)


data_casdi2 <- read.table("D:/06_RCoding/CASDI/002_data/master_casdi24_il6.txt",na.string=c("","NA"),header=T, sep ="\t")

#tidyverse
library(tidyverse)
data_casdi2  <- data_casdi2  %>%
  mutate(group2 = paste(group, fish))
data_casdi2  <- data_casdi2  %>%
  mutate(group3 = paste(group, bambi))
data_casdi2  <- data_casdi2  %>%
  mutate(group4 = paste(group, ssp))
data_casdi2  <- data_casdi2  %>%
  mutate(group5 = paste(group, scq))

#ADD DATA for PCA
#PCA FISH
fish_pca <- read.table("D:/06_RCoding/CASDI/002_data/master_casdi24_fish_pca.txt", 
                       na.strings = c("","NA"), header=T, sep ="\t",row.names = 1)

fish_pca <- read.table("D:/06_RCoding/CASDI/002_data/master_casdi24_fish.txt")
