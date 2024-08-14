#Preliminary analysis
##How CMV IgG in several ASD condition compared to HC?
###BABMI Score
Fig_A <- ggplot(data_casdi2, aes(x=group2, y=cmv_ai, shape = group2))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,25)+
  theme_pubclean() + theme(legend.position = "bottom" )+
 theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_A

Fig_B <- ggplot(data_casdi2, aes(x=group3, y=cmv_ai, shape = group3))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,25)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_B

Fig_C <- ggplot(data_casdi2, aes(x=group4, y=cmv_ai, shape = group4))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,25)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_C

Fig_D <- ggplot(data_casdi2, aes(x=group5, y=cmv_ai, shape = group5))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,25)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_D

#What abour IL1b
Fig_A1 <- ggplot(data_casdi2, aes(x=group2, y=il1b, shape = group2))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,100)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_A1

Fig_B1 <- ggplot(data_casdi2, aes(x=group3, y=il6, shape = group3))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,100)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_B1

Fig_C1 <- ggplot(data_casdi2, aes(x=group4, y=il1b, shape = group4))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,100)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_C1

Fig_D1 <- ggplot(data_casdi2, aes(x=group5, y=il1b, shape = group5))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,100)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_D1

#What about IL6
Fig_A2 <- ggplot(data_casdi2, aes(x=group2, y=il6, shape = group2))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,100)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_A2

Fig_B2 <- ggplot(data_casdi2, aes(x=group3, y=il6, shape = group3))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,100)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_B2

Fig_C2 <- ggplot(data_casdi2, aes(x=group4, y=il6, shape = group4))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,100)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_C2

Fig_D2 <- ggplot(data_casdi2, aes(x=group5, y=il6, shape = group5))+ 
  geom_boxplot(outlier.shape = NA)+ 
  scale_shape_manual(values = c(1, 1, 1, 0, 0, 0))+
  geom_jitter(position=position_jitter(0.01))+ ylim(0,100)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  theme(axis.text.x = element_text(face="bold", color="black", size=10),
        axis.text.y = element_text(face="bold", color="black", size=10),
        axis.title.x= element_text(face="bold",size =10),
        axis.title.y= element_text(face="bold",size =10))
Fig_D2

#SNPs
