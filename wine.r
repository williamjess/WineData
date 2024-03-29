wine_data<-read.csv('winequality-red.csv')
str(wine_data)
summary(wine_data)
is.na(wine_data)
17
install.packages("ggplot2")
library(ggplot2)
hist(wine_data$quality)
boxplot(ggpplot2)
table(wine_data$quality)
table(wine_data$citric.acid)
dens <- density(wine_data$chlorides)
plot(dens)
library(ggfortify)
df <- wine_data$quality[1:4]
pca_res <- prcomp(df, scale. = TRUE)
autoplot(pca_res)
library(visdat)
glimpse(wine_data)
vis_dat(wine_data)
install.packages("factoextra")
library("factoextra")
data
results <- princomp(df)
biplot(results)
18
install.packages("corrr")
library('corrr')
install.packages("ggcorrplot")
library(ggcorrplot)
install.packages("FactoMineR")
library("FactoMineR")
numerical_data <- wine_data[,2:10]
head(numerical_data)
data_normalized <- scale(numerical_data)
head(data_normalized)
corr_matrix <- cor(data_normalized)
ggcorrplot(corr_matrix)
library(visdat)
library(ggplot2)
library(corrplot)
library(factoextra)
library(class)
library(dplyr)
install.packages("ROCR")
library(ROCR)
summary(wine_data)
wine_data_scale<-scale(wine_data[-1])
dim(wine_data_scale)
head(wine_data_scale,3)
19
library(cluster)
library(factoextra)
wssplot<-function(wine_data, nc=15,seed=1234){
 wss<-(nrow(wine_data)-1)*sum(apply(wine_data,2,var))
 for(i in 2:nc){
 set.seed(seed)
 wss[i]<-sum(kmeans(wine_data,centers=i)$withinss)}
 plot(1:nc,wss,type="b",xlab="Clusters",
 ylab="Total Groups")}
wssplot(wine_data_scale,nc=15)