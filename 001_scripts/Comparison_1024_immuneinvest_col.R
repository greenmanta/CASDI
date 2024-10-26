#Membuat box plot dengan dot plot 
Fig_A <- ggplot(data_casdi4, aes(x=group, y=cmv_ai, shape = group))+ 
  geom_boxplot(outlier.shape = NA)+ scale_shape_manual(values = c(1, 19))+
  geom_jitter(position=position_jitter(0.1))+ ylim(0,25)+
  stat_compare_means(comparisons = my_comparisons, label.y = c(23), label ="p.signif", paired=FALSE)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  labs(x = element_blank(),
       y = "CMV Reactive antibody \n  IgG Index")+
  theme(axis.text.x = element_text(face="bold", color="black", size=12),
        axis.text.y = element_text(face="bold", color="black", size=12),
        axis.title.x= element_text(face="bold",size =12),
        axis.title.y= element_text(face="bold",size =12))

Fig_A <- ggpar(Fig_A, legend.title = "Group")

Fig_A

Fig_B <- ggplot(data_casdi4, aes(x=group, y=il6, shape = group))+ 
  geom_boxplot(outlier.shape = NA)+ scale_shape_manual(values = c(1, 19))+
  geom_jitter(position=position_jitter(0.1))+ ylim(0,100)+
  stat_compare_means(comparisons = my_comparisons, label.y = c(80), label ="p.signif", paired=FALSE)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  labs(x = element_blank(),
       y = "Levels of IL6 (pg/mL)")+
  theme(axis.text.x = element_text(face="bold", color="black", size=12),
        axis.text.y = element_text(face="bold", color="black", size=12),
        axis.title.x= element_text(face="bold",size =12),
        axis.title.y= element_text(face="bold",size =12))

Fig_B

Fig_C <- ggplot(data_casdi4, aes(x=group, y=il1b, shape = group))+ 
  geom_boxplot(outlier.shape = NA)+ scale_shape_manual(values = c(1, 19))+
  geom_jitter(position=position_jitter(0.1))+ ylim(0,100)+
  stat_compare_means(comparisons = my_comparisons, label.y = c(80), label ="p.signif", paired=FALSE)+
  theme_pubclean() + theme(legend.position = "bottom" )+
  labs(x = element_blank(),
       y = "Levels of IL1\u03B2 (pg/mL)")+
  theme(axis.text.x = element_text(face="bold", color="black", size=12),
        axis.text.y = element_text(face="bold", color="black", size=12),
        axis.title.x= element_text(face="bold",size =12),
        axis.title.y= element_text(face="bold",size =12))

Fig_C

Combined_figs_0 <- ggarrange(Fig_A,
                             Fig_B,
                             Fig_C,
                             labels = c("A", "B",
                                        "C"), ncol = 1, nrow =3, 
                             common.legend = T,
                             legend= "none")

Combined_figs_0

ggsave ("Figure 0.png", width = 7, height = 9, dpi =600)
