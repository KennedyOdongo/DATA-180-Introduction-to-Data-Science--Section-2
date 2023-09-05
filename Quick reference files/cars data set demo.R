# Packages/ Libraries in R Programming language are a set of R functions, compiled code, and sample data.

library("MASS")

??Cars93
# Show first 6 rows of the cars dataset
head(Cars93)

#Show the column names of the variables/ columns in the data
ls(Cars93)

# Get one column of the data
Cars93$Manufacturer

Cars93$Type

#We can use the table function to find the 
#frequency distribution for the standard airbag option

table(Cars93$AirBags)

#show total number of rows in the data set 
nrow(Cars93)

#Show number of columns in the data set
ncol(Cars93)

#We can use the table function to display the relative 
#frequency for the standard airbag option in the Cars93 
table(Cars93$AirBags)/nrow(Cars93)

# the round function rounds off any decimal to the number of decimals specified by the user
round(table(Cars93$AirBags)/nrow(Cars93),3)

# Bar graphs
barplot(table(Cars93$AirBags),ylab="Frequency",cex.lab=1.3,col=c(200,3,4))


#colors
colors()[1:40]

# Palette
palette()

# Pie Chart
pie(table(Cars93$AirBags),main="Standard Air Bags",col=c(2,3,4),cex=1.3)

ls(Cars93)

stem(Cars93$Weight)

hist(Cars93$Weight, breaks = seq(1400,4800,500), col="brown", xlab = "car weights", cex.lab=1.2,cex.axis=1.3 )
box()
