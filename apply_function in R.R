# Using the "apply" function in R. 

Test<- matrix(sample(1:20,12, replace = T), nrow=3, byrow = T)
Test # This matrix will be different every time you run the line 3. 


apply(Test,1,mean)

apply(Test,2,mean)

apply(Test,2,sd)

apply(Test,2,sum)

apply(Test,1,sum)

apply(Test,2,sort, decreasing = T)

v1<-c(2,6,4,1)
v2<-c(21,34,55,11)
v3<-c(75,50,100,80)

Data_M<-data.frame(v1,v2,v3)
Data_M

apply(Data_M,2,mean)
Data_M_scaled<-scale(Data_M)
Data_M_scaled


apply(Data_M,2,sd)

rng<-apply(Data_M,2,max)-apply(Data_M,2,min)
rng

scale(Data_M, center = F, scale=rng)

