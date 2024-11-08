#load library
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(patchwork)
library(scales)











(Fig_1 <- ggplot(data_casdi4, aes(y =cmv_ai, x = il1b, colour = group, shape=group)) +
  geom_point(size=3) +
  scale_shape_manual(values = c(1, 19, 0, 15))+
  geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
  theme_pubclean() +
  theme(legend.position = "none") +
  scale_colour_grey(start=0.2, end=0.1)+
  labs(y = "Levels of CMV Antibody \n (index)", 
       x ="Levels of IL1\u03B2 pg/mL")+ 
  theme(axis.text.x = element_text(face="bold", color="black", size=12),
          axis.text.y = element_blank(),
          axis.title.x= element_text(face="bold",size =12),
          axis.title.y= element_blank()))
  
Fig_1 <- Fig_1 + facet_grid (. ~ group) + stat_cor(aes(color = group),
                                                   method = "spearman", label.x =0.1,label.y=23,size =4)+
  theme(strip.text.x =element_text(face="bold", color="black", size=12))
Fig_1


(Fig_2 <- ggplot(data_casdi4, aes(y =cmv_ai, x = il6, colour = group, shape=group)) +
    geom_point(size=3) +
    scale_shape_manual(values = c(1, 19, 0, 15))+
    geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
    theme_pubclean() +
    theme(legend.position = "none") +
    scale_colour_grey(start=0.2, end=0.1)+
    labs(y = "Levels of CMV Antibody \n (index)", 
         x ="Levels of IL6 (pg/mL)")+ 
    theme(axis.text.x = element_text(face="bold", color="black", size=12),
          axis.text.y = element_text(face="bold", color="black", size=12),
          axis.title.x= element_text(face="bold",size =12),
          axis.title.y= element_text(face="bold",size =12)))

Fig_2 <- Fig_2 + facet_grid (. ~ group) + stat_cor(aes(color = group),
                                                   method = "spearman", label.x =0.1,label.y=23,size =4)+
  theme(strip.text.x =element_text(face="bold", color="black", size=12))
Fig_2


(Fig_3 <- ggplot(data_casdi4, aes(y =bambi, x = il1b, colour = group, shape=group)) +
    geom_point(size=3) +
    scale_shape_manual(values = c(1, 19, 0, 15, 2))+
    geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
    theme_pubclean() +
    theme(legend.position = "none") +
    scale_colour_grey(start=0.3, end=0.1)+
    labs(y = "Eating behaviour \n BAMBI Score", 
         x ="Levels of IL1\u03B2 (pg/mL)")+ 
    theme(axis.text.x = element_text(face="bold", color="black", size=12),
          axis.text.y = element_blank(),
          axis.title.x= element_text(face="bold",size =12),
          axis.title.y= element_blank()))


Fig_3 <- Fig_3 + facet_grid (. ~ group) + stat_cor(aes(color = group),
                                                   method = "spearman", label.x =0.1,label.y=100,size =4,
                                                   p.accuracy = 0.001, r.accuracy = 0.01)+
  theme(strip.text.x =element_blank())
Fig_3

(Fig_4 <- ggplot(data_casdi4, aes(y =bambi, x = il6, colour = group, shape=group)) +
    geom_point(size=3) +
    scale_shape_manual(values = c(1, 19, 0, 15, 2))+
    geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
    theme_pubclean() +
    theme(legend.position = "none") +
    scale_colour_grey(start=0.3, end=0.1)+
    labs(y = "Eating behavior \n BAMBI Score", 
         x ="Levels of IL6 (pg/mL)")+ 
    theme(axis.text.x = element_text(face="bold", color="black", size=12),
          axis.text.y = element_text(face="bold", color="black", size=12),
          axis.title.x= element_text(face="bold",size =12),
          axis.title.y= element_text(face="bold",size =12)))

Fig_4 <- Fig_4 + facet_grid (. ~ group) + stat_cor(aes(color = group),
                                                   method = "spearman", label.x =0.1,label.y=85,size =4,
                                                   p.accuracy = 0.001, r.accuracy = 0.01)+
  theme(strip.text.x =element_blank())

Fig_4


#not included
(Fig_5 <- ggplot(data_casdi4, aes(y =ssp, x = il1b, colour = group, shape=group)) +
    geom_point(size=3) +
    scale_shape_manual(values = c(1, 19, 0, 15, 2))+
    geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
    theme_pubclean() +
    theme(legend.position = "none") +
    scale_colour_grey(start=0.3, end=0.1)+
    labs(y = "Sensory Profile \n SSP Score", 
         x ="Levels of IL1\u03B2 (pg/mL)")+ 
    theme(axis.text.x = element_text(face="bold", color="black", size=12),
          axis.text.y = element_blank(),
          axis.title.x= element_text(face="bold",size =12),
          axis.title.y= element_blank()))

Fig_5 <- Fig_5 + facet_grid (. ~ group) + stat_cor(aes(color = group),
                                                   method = "spearman", label.x =0.1,label.y=190,size =4)+
  theme(strip.text.x =element_blank())
Fig_5

(Fig_6 <- ggplot(data_casdi4, aes(y =ssp, x = il6, colour = group, shape=group)) +
    geom_point(size=3) +
    scale_shape_manual(values = c(1, 19, 0, 15, 2))+
    geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
    theme_pubclean() +
    theme(legend.position = "none") +
    scale_colour_grey(start=0.3, end=0.1)+
    labs(y = "Sensory Profile \n SSP Score", 
         x ="Levels of IL6 (pg/mL)")+ 
    theme(axis.text.x = element_text(face="bold", color="black", size=12),
          axis.text.y = element_text(face="bold", color="black", size=12),
          axis.title.x= element_text(face="bold",size =12),
          axis.title.y= element_text(face="bold",size =12)))


Fig_6 <- Fig_6 + facet_grid (. ~ group) + stat_cor(aes(color = group),
                                                   method = "spearman", label.x =0.1,label.y=190,size =4)+
  theme(strip.text.x =element_blank())
Fig_6


Combined_figs_1 <- ggarrange(Fig_2,
                             Fig_1,
                             Fig_4,
                             Fig_3,
                             Fig_6,
                             Fig_5,
                             labels = c("A", "B",
                                        "C", "D",
                                        "E","F"), ncol = 2, nrow =3, 
                             common.legend = T,
                             legend= "none")


Combined_figs_1
ggsave ("Figure 1.TIFF", width = 14, height = 9, dpi =600)
ggsave ("Figure 1.JPG", width = 14, height = 9, dpi =600)



(Fig_6 <- ggplot(data_casdi4, aes(y =cmv_ai, x = bambi, colour = group, shape=group)) +
    geom_point(size=3) +
    scale_shape_manual(values = c(1, 19, 0, 15))+
    geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
    theme_pubclean() +
    theme(legend.position = "none") +
    scale_colour_grey(start=0.2, end=0.1)+
    labs(y = "Levels of CMV Antibody \n (index)", 
         x ="BAMBI")+ 
    theme(axis.text.x = element_text(face="bold", color="black", size=12),
          axis.text.y = element_blank(),
          axis.title.x= element_text(face="bold",size =12),
          axis.title.y= element_blank()))

Fig_6 <- Fig_6 + facet_grid (. ~ group) + stat_cor(aes(color = group),
                                                   method = "spearman", label.x =0.1,label.y=23,size =4)+
  theme(strip.text.x =element_text(face="bold", color="black", size=12))
Fig_6

(Fig_7 <- ggplot(data_casdi4, aes(y =cmv_ai, x = ssp, colour = group, shape=group)) +
    geom_point(size=3) +
    scale_shape_manual(values = c(1, 19, 0, 15))+
    geom_smooth(method=lm, se=FALSE, fullrange=FALSE, alpha=0.3)+
    theme_pubclean() +
    theme(legend.position = "none") +
    scale_colour_grey(start=0.2, end=0.1)+
    labs(y = "Levels of CMV Antibody \n (index)", 
         x ="SSP")+ 
    theme(axis.text.x = element_text(face="bold", color="black", size=12),
          axis.text.y = element_blank(),
          axis.title.x= element_text(face="bold",size =12),
          axis.title.y= element_blank()))

Fig_7 <- Fig_6 + facet_grid (. ~ group) + stat_cor(aes(color = group),
                                                   method = "spearman", label.x =0.1,label.y=23,size =4)+
  theme(strip.text.x =element_text(face="bold", color="black", size=12))
Fig_7

