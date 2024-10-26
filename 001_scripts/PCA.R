library(devtools)
library(ggbiplot)
library(ggplot2)
library(ggfortify)
library(factoextra)
library(missMDA)
library(FactoMineR)
library(plotly)

#data
fish_pca
fish_bambi

#Group
fish_group <- c(rep("Good", 24),rep("Moderate",73), rep("Worse",1))

#PCA
fish_pca
nb1 = estim_ncpPCA(fish_pca,ncp.max=5)
res.comp1 = imputePCA(fish_pca,ncp=2)
res.pca1 = PCA(res.comp1$completeObs)

fviz_pca_biplot(res.pca1, repel=TRUE, pointsize=2, pointshape=5, col.var="black", 
                arrowsize=0.7, aplha=0.5, label="var", labelsize=3,col.ind=fish_group, 
                palette=c( "gold", "skyblue2", "#421C52"), addEllipses=TRUE)
ggplotly(fviz_pca_biplot)

x = NA
if(is.na(x)) {x=FALSE} else {if(x) {x}}
