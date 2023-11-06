Cluster_Ex<-read.csv("") # The path to your data goes here. 
head(Cluster_Ex)


Kmeans_3<-kmeans(Cluster_Ex,centers=3)


#Centers.
Kmeans_3$centers

#Within Group Sum of Squares.
Kmeans_3$withinss


#Clusters. 
Kmeans_3$cluster

# Plotting clusters. 
plot(X2~X1,data=Cluster_Ex,xlim=c(0,4),ylim=c(0,4),cex.axis=1.3, cex.lab=1.2,cex=1.2,pch=15+Kmeans_3$cluster,col=Kmeans_3$cluster)


#Adding centroids. 
points(X2~X1,data=Kmeans_3$centers,pch=10,cex=1.8,col="blue")


palette()


Kmeans_5_1<-kmeans(Cluster_Ex,centers=5)
plot(X2~X1,data=Cluster_Ex,xlim=c(0,4),ylim=c(0,4),cex.axis=1.3, cex.lab=1.2,cex=1.2,pch=15+Kmeans_5_1$cluster,col=Kmeans_5_1$cluster)


Kmeans_5_2<-kmeans(Cluster_Ex,centers=5)
plot(X2~X1,data=Cluster_Ex,xlim=c(0,4),ylim=c(0,4),cex.axis=1.3, cex.lab=1.2,cex=1.2,pch=15+Kmeans_5_2$cluster,col=Kmeans_5_2$cluster)


#using set seed for reproducibility. 
Kmeans_5_3<-kmeans(Cluster_Ex,centers=Cluster_Ex[c(2,5,7,21,36),])

set.seed(5)
Kmeans_5_4<-kmeans(Cluster_Ex,centers=5)
plot(X2~X1,data=Cluster_Ex,xlim=c(0,4),ylim=c(0,4),cex.axis=1.3, cex.lab=1.2,cex=1.2,pch=15+Kmeans_5_4$cluster,col=Kmeans_5_4$cluster)


# Clustering with 3 clusters, nstart = 1. Randomize only once. 
Cluster3_S1<-kmeans(Cluster_Ex,centers=3)
Cluster3_S50<-kmeans(Cluster_Ex,centers=3,nstart=50)


Cluster3_S1
Cluster3_S1$withinss
Cluster3_S1$tot.withinss


# Clustering with 3 clusters, nstart =50. Randomize 50 times. 
Cluster3_S50
Cluster3_S50$withinss
Cluster3_S50$tot.withinss
Cluster3_S50$betweenss

# WGSS as a function of the number of clusters for values of K from 1 to 8.
wgss<-rep(0,8)
for(i in 1:8){wgss[i]<-kmeans(Cluster_Ex,centers=i,nstart=50)$tot.withinss}

plot(c(1:8),wgss,type="b",pch=16,cex=1.3,ylim=c(0,100), xlab="Number of Groups",ylab="WGSS")


#Between Group Sum of Squares. BGSS. 

Kmeans_3$betweenss


# CH index.
chindex=c() # or rep(0,7)
i=1
for(k in 2:8){
  chindex[i] <- (kmeans(df[2:3],k)$betweenss/(k-1))  / (kmeans(df[2:3],k)$tot.withinss/((nrow(df)-k)))
  i=i+1
}
plot(2:8,chindex,pch=19,type='b')
