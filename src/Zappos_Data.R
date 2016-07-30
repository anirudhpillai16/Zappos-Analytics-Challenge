library(ggplot2)
# Reading the csv file
data = read.csv("Analytics Challenge Data 2.csv",header = TRUE)
# Observed that csv was reading 3 extra columns so slicing it
data = data[,1:12]
# Check dimensionality
dim(data)
# Check column names
names(data)
# Check Structure
str(data)
# Check what data looks like by printing first 5 rows
data[1:5,]
#Summarize Data
summary(data)
z<-table(data$platform)
# Instead of Pie-chart I want to plot using ggplot
pie(z)
# Let's find range of date
v<- gsub(x = data$day, pattern= "0:00", replacement = "",fixed = T)
range(v)
# Let's calculate all the values necessary for this task
conversion_rate <- (data$orders/data$visits)
bounce_rate <- (data$bounces/data$visits)
add_to_cart <- (data$add_to_cart/data$visits)
# Creating Data Frame with new values
data_new <- data.frame(data,conversion_rate,bounce_rate,add_to_cart)

