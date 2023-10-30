Cluster_Ex<-read.csv("D:/Dickinson College Teaching/DATA 180/data/Cluster_Ex.csv") #"Path where your data is goes here"
ls(Cluster_Ex)
head(Cluster_Ex)

plot(X2~X1,data=Cluster_Ex,xlim=c(0,4), ylim=c(0,4),cex=1.3,cex.axis=1.3,pch=16)

#Euclidean Distance, cluster method = complete
Cluster_Ex_HC<-hclust(dist(Cluster_Ex))
Cluster_Ex_HC

plot(Cluster_Ex_HC,cex=.75,xlab="")

#Manhattan Distance, method = single
Cluster_Ex_HC<-hclust(dist(Cluster_Ex,method="manhattan"),method="single")
Cluster_Ex_HC
plot(Cluster_Ex_HC,cex=.75,xlab="")


#Find clusters in the data
Cluster_Ex_HC<-hclust(dist(Cluster_Ex))
cutree(Cluster_Ex_HC,k=3)

# Find different number of clusters within the data
#Cluster_Ex<-data.frame(Cluster_Ex,cutree(Cluster_Ex_HC,k=c(3,4,5)))
#names(Cluster_Ex)
#names(Cluster_Ex)<-c("X","X1","X2","k_3","k_4","k_5")
#head(Cluster_Ex)

Cluster_Ex<-read.csv("D:/Dickinson College Teaching/DATA 180/data/Cluster_Ex_clusters.csv")

#plot the clusters
plot(X2~X1,data=Cluster_Ex,xlim=c(0,4),ylim=c(0,4),cex.axis=1.3,cex.lab=1.2,cex=1.2,pch=15+k_3,col=k_3)
plot(Cluster_Ex_HC,cex=1.25,xlab="")
Cluster_Ex[c(12,30),]

plot(X2~X1,data=Cluster_Ex,xlim=c(0,4),ylim=c(0,4),cex.axis=1.3, cex=1.4,cex.lab=1.2,pch=14+k_4,col=k_4)
#Cluster_Ex_HC<-identify(Cluster_Ex)
Cluster_Ex_HC<-hclust(dist(Cluster_Ex))


plot(Cluster_Ex_HC,hang=-1,main="Main",sub="Sub",lwd=2,cex=.8,xlab="",frame.plot=T)

#### using the ggdendro package
library(ggdendro)

data(USArrests) 
dd <- dist(scale(USArrests), method = "euclidean") 
hc <- hclust(dd)
ggdendrogram(hc)



