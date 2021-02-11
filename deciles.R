

#Importing Dataset

ineq = read.csv("inequality.csv")


head(ineq)


d1 = mean(ineq$d1, na.rm = T)
d2 = mean(ineq$d2, na.rm = T)
d3 = mean(ineq$d3, na.rm = T)
d4 = mean(ineq$d4, na.rm = T)
d5 = mean(ineq$d5, na.rm = T)
d6 = mean(ineq$d6, na.rm = T)
d7 = mean(ineq$d7, na.rm = T)
d8 = mean(ineq$d8, na.rm = T)
d9 = mean(ineq$d9, na.rm = T)
d10 = mean(ineq$d10, na.rm = T)


# 3D Exploded Pie Chart
library(ggplot2)
slices <- c(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10)
lbls <- c("Bottom Decil","Second Decil","Third Decil","Fourth Decil","Fifth Decil",
          "Sixth Decil","Seventh Decil","Eight Decil","Ninth Decil","Top Decil")

slices.1 <- data.frame(
  Decile = lbls, 
  Percentage = slices)


bp<- ggplot(slices, aes(x="", y=slices))+ coord_polar("y", start=0)

ggplot(slices.1, aes(x="", y=Percentage, fill=Decile)) +
  geom_line(stat="identity") 


sum(slices)


d10/d1



ggplot(data=slices.1, aes(x=1:10, y=sort(Percentage), group=1)) +
  geom_line()+
  geom_point()







