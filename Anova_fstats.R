install.packages("ggfortify")
install.packages("ggplot2")
install.packages("magrittr")
install.packages("ggpubr")
library(ggplot2)
library("ggpubr")
library(readxl)
library(ggfortify)


######################################################################
######################################################################


Data_input_species <- read_excel("~/LO-Letters_data.xlsx", 
                                 sheet = "ANOVA_pt")
View(LO-Letters_data)

attach(LO-Letters_data)
df <- LO-Letters_data
df$label <- as.factor(df$label)
df$Iron <- as.factor(df$Iron)
df$Light <- as.factor(df$Light)

qf(0.95,1,47)

######Growth###########

res.aov <- aov (growth ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
##change xvalue in qf(0.95,1,x) to Df from residuals #####
qf(0.95,1,8)
########## C
res.aov <- aov (C ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)
########## N
res.aov <- aov (N ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## FvFm
res.aov <- aov (FvFm ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## sigma
res.aov <- aov (sigma ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## ChlaC
res.aov <- aov (Chl ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##########Cellvol
res.aov <- aov (CV ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##########SAV
res.aov <- aov (SAV ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## petc
res.aov <- aov (petc ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## ATP
res.aov <- aov (atp ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## Rubisco
res.aov <- aov (rubisco ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## psii
res.aov <- aov (psii ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##################################
#################################################
##################################

Data_input_species <- read_excel("~/LO-Letters_data.xlsx", 
                                 sheet = "ANOVA_pa")
View(LO-Letters_data)

attach(LO-Letters_data)
df <- LO-Letters_data
df$label <- as.factor(df$label)
df$Iron <- as.factor(df$Iron)
df$Light <- as.factor(df$Light)

qf(0.95,1,47)

######Growth###########

res.aov <- aov (growth ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
##change xvalue in qf(0.95,1,x) to Df from residuals #####
qf(0.95,1,8)
########## C
res.aov <- aov (C ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)
########## N
res.aov <- aov (N ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## FvFm
res.aov <- aov (FvFm ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## sigma
res.aov <- aov (sigma ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## ChlaC
res.aov <- aov (Chl ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##########Cellvol
res.aov <- aov (CV ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##########SAV
res.aov <- aov (SAV ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## petc
res.aov <- aov (petc ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## ATP
res.aov <- aov (atp ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## Rubisco
res.aov <- aov (rubisco ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## psii
res.aov <- aov (psii ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##################################
#################################################
##################################

Data_input_species <- read_excel("~/LO-Letters_data.xlsx", 
                                 sheet = "ANOVA_pi")
View(LO-Letters_data)

attach(LO-Letters_data)
df <- LO-Letters_data
df$label <- as.factor(df$label)
df$Iron <- as.factor(df$Iron)
df$Light <- as.factor(df$Light)

qf(0.95,1,47)

######Growth###########

res.aov <- aov (growth ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
##change xvalue in qf(0.95,1,x) to Df from residuals #####
qf(0.95,1,8)
########## C
res.aov <- aov (C ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)
########## N
res.aov <- aov (N ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## FvFm
res.aov <- aov (FvFm ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## sigma
res.aov <- aov (sigma ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## ChlaC
res.aov <- aov (Chl ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##########Cellvol
res.aov <- aov (CV ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##########SAV
res.aov <- aov (SAV ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## petc
res.aov <- aov (petc ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## ATP
res.aov <- aov (atp ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## Rubisco
res.aov <- aov (rubisco ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## psii
res.aov <- aov (psii ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##################################
#################################################
##################################

Data_input_species <- read_excel("~/LO-Letters_data.xlsx", 
                                 sheet = "ANOVA_cf")
View(LO-Letters_data)

attach(LO-Letters_data)
df <- LO-Letters_data
df$label <- as.factor(df$label)
df$Iron <- as.factor(df$Iron)
df$Light <- as.factor(df$Light)

qf(0.95,1,47)

######Growth###########

res.aov <- aov (growth ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
##change xvalue in qf(0.95,1,x) to Df from residuals #####
qf(0.95,1,8)
########## C
res.aov <- aov (C ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)
########## N
res.aov <- aov (N ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## FvFm
res.aov <- aov (FvFm ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## sigma
res.aov <- aov (sigma ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## ChlaC
res.aov <- aov (Chl ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##########Cellvol
res.aov <- aov (CV ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

##########SAV
res.aov <- aov (SAV ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## petc
res.aov <- aov (petc ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## ATP
res.aov <- aov (atp ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## Rubisco
res.aov <- aov (rubisco ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)

########## psii
res.aov <- aov (psii ~ Iron * Light, data = df)
summary(res.aov)
TukeyHSD(res.aov)
qf(0.95,1,8)