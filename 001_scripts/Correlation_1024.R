#load library
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(patchwork)
library(scales)











(Fig_1 <- ggplot(data_casdi3, aes(y =cmv_ab, x = il1b, colour = Group, shape=Group)) +
  geom_point(size=3) +
  scale_shape_manual(values = c(1, 19, 0, 15))+
  geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
  theme_pubclean() +
  theme(legend.position = "none") +
  scale_colour_grey(start=0.5, end=0.1)+
  labs(y = "Levels of CMV Antibody \n (index)", 
       x ="Levels of IL1b pg/mL")+ 
  theme(axis.text.x = element_text(face="bold", color="black", size=12),
        axis.text.y = element_text(face="bold", color="black", size=12),
        axis.title.x= element_text(face="bold",size =12),
        axis.title.y= element_text(face="bold",size =12)))

Fig_1 <- Fig_1 + facet_grid (. ~ Group) + stat_cor(aes(color = Group),
                                                   method = "spearman", label.x =0.1,label.y=18,size =4)+
  theme(strip.text.x =element_text(face="bold", color="black", size=12))
Fig_1

(Fig_2 <- ggplot(data_casdi3, aes(y =cmv_ab, x = il6, colour = Group, shape=Group)) +
    geom_point(size=3) +
    scale_shape_manual(values = c(1, 19, 0, 15))+
    geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
    theme_pubclean() +
    theme(legend.position = "none") +
    scale_colour_grey(start=0.3, end=0.1)+
    labs(y = "Levels of CMV Antibody \n (index)", 
         x ="Levels of IL6 (pg/mL)")+ 
    theme(axis.text.x = element_text(face="bold", color="black", size=12),
          axis.text.y = element_blank(),
          axis.title.x= element_text(face="bold",size =12),
          axis.title.y= element_blank()))

Fig_2 <- Fig_2 + facet_grid (. ~ Group) + stat_cor(aes(color = Group),
                                                   method = "spearman", label.x =0.1,label.y=23,size =4)+
  theme(strip.text.x =element_text(face="bold", color="black", size=12))
Fig_2

(Fig_3 <- ggplot(data_casdi2, aes(y =bambi, x = il6, colour = group, shape=group)) +
    geom_point(size=3) +
    scale_shape_manual(values = c(1, 19, 0, 15, 2))+
    geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
    theme_pubclean() +
    theme(legend.position = "none") +
    scale_colour_grey(start=0.3, end=0.1)+
    labs(y = "Eating behaviour \n BAMBI Score", 
         x ="Levels of IL6 (pg/mL)")+ 
    theme(axis.text.x = element_text(face="bold", color="black", size=12),
          axis.text.y = element_text(face="bold", color="black", size=12),
          axis.title.x= element_text(face="bold",size =12),
          axis.title.y= element_text(face="bold",size =12)))

Fig_3 <- Fig_3 + facet_grid (. ~ group) + stat_cor(aes(color = group),
                                                   method = "spearman", label.x =0.1,label.y=23,size =4)+
  theme(strip.text.x =element_text(face="bold", color="black", size=12))
Fig_3

