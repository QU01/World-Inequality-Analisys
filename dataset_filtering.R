#Import Libraries

install.packages("xlsx")
library("xlsx")
library("readxl")

#Import Dataset

ineq <- read_excel("WIID_19Dec2018.xlsx")

#Altering Columns

ineq <- ineq[,2:46]

ineq$c3 <- NULL

ineq$c2 <- NULL

ineq$currency <- NULL


#Countries List

countries <- unique(ineq$country)


dataset <- data.frame()

ineq[ineq$country == 'Mexico' & ineq$year == max(ineq[ineq$country == 'Mexico',]$year),]


for (country in countries) {
  
  dat <- ineq[ineq$country == country & ineq$year == max(ineq[ineq$country == country,]$year),]
  
  dataset <- rbind(dataset,dat[1,])
}


#Filtering

dataset <- dataset[dataset$scale == "Per capita",]

#Deleting NA rows

dataset <- dataset[complete.cases(dataset$country),]

#Saving Dataset

save(dataset, file = "inequality.Rdata")







