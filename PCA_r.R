install.packages("ggfortify")
install.packages("ggplot2")
install.packages("tidyselect")
install.packages("tidyverse")

library(ggfortify)
library(readxl)
setwd:
Data_input_species <- read_excel("~/LO-Letters_data.xlsx", 
                                 sheet = "PCA")


attach(LO-Letters_data)


View(LO-Letters_data)

df1 <- LO-Letters_data[c(5,6,7,8,9,10,11)]
##visuallizing the physiological data, species group warm water vs cold water. Testing all different variables (light, Fe, treatment=label, species)
pca_res <- prcomp(df1, scale. = TRUE)


#NORMAL
autoplot(pca_res,data = LO-Letters_data, loadings = TRUE, loadings.label = TRUE, frame = TRUE, frame.colour = 'Species', loadings.colour='black', loadings.label.colour='black',
         label.size=5, loadings.label.vjust = -0.5, loadings.label.hjust=1)+
  geom_point(size=4, aes(shape=label, fill=Species))+
  scale_shape_manual(values=c(21,22,23,24), "Treatment")+
  scale_fill_manual(values=c("#ca0020","#f4a582","#92c5de","#0571b0"))+
  scale_colour_manual(values=c("#ca0020","#f4a582","#92c5de","#0571b0"))+
 # stat_ellipse(level=0.95, aes(colour=Species))+
  theme_bw()+
  guides(colour = guide_legend(override.aes = list(shape = 21)))
 
#ELLIPSES - 95 CI 
autoplot(pca_res,data = LO-Letters_data, loadings = TRUE, loadings.label = TRUE, loadings.colour='black', loadings.label.colour='black',
         label.size=5, loadings.label.vjust = -0.5, loadings.label.hjust=1)+
  geom_point(size=4, aes(shape=label, fill=Species))+
  scale_shape_manual(values=c(21,22,23,24,25), "Treatment")+
  scale_fill_manual(values=c("#ca0020","#f4a582","#92c5de","#0571b0"), "Species")+
  scale_colour_manual(values=c("#ca0020","#f4a582","#92c5de","#0571b0"), "Species")+
  stat_ellipse(level=0.95, aes(colour=Species))+
  theme_bw()+
  guides(colour = guide_legend(override.aes = list(shape = 21)))
  




df2 <- LO-Letters_data[c(12,13,14,15)]
##visuallizing the protein data, species group by carbon uptake mechanisms (eg P. inermis vs others). Testing all different variables (light, Fe, treatment=label, species)
pca_res2 <- prcomp(df2, scale. = TRUE)

autoplot(pca_res2,data = LO-Letters_data, loadings = TRUE, loadings.label = TRUE, frame = TRUE, frame.colour = 'Species', loadings.colour='black', loadings.label.colour='black',
         label.size=5, loadings.label.vjust = -0.5, loadings.label.hjust=1)+
  geom_point(size=4, aes(shape=label, fill=Species))+
  scale_shape_manual(values=c(21,22,23,24), "Treatment")+
  scale_fill_manual(values=c("#ca0020","#f4a582","#92c5de","#0571b0"))+
  scale_colour_manual(values=c("#ca0020","#f4a582","#92c5de","#0571b0"))+
  # stat_ellipse(level=0.95, aes(colour=Species))+
  theme_bw()+
  guides(colour = guide_legend(override.aes = list(shape = 21)))

