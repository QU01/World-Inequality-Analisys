

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



latam <- read.csv("world_regions/latinamerica.csv")




d1.l = mean(latam$d1, na.rm = T)
d2.l = mean(latam$d2, na.rm = T)
d3.l = mean(latam$d3, na.rm = T)
d4.l = mean(latam$d4, na.rm = T)
d5.l = mean(latam$d5, na.rm = T)
d6.l = mean(latam$d6, na.rm = T)
d7.l = mean(latam$d7, na.rm = T)
d8.l = mean(latam$d8, na.rm = T)
d9.l = mean(latam$d9, na.rm = T)
d10.l = mean(latam$d10, na.rm = T)


slices.l <- c(d1.l,d2.l,d3.l,d4.l,d5.l,d6.l,d7.l,d8.l,d9.l,d10.l)

slices.l <- data.frame(
  Decile = lbls, 
  Percentage = slices.l)


ggplot(slices.l, aes(x="", y=Percentage, fill=Decile)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) + theme_void()

ggplot(slices.l, aes(x="", y=Percentage, fill=Decile)) +
  geom_line(stat="identity") 


sum(slices.l)


d10.l/d1.l


mexico <- latam[latam$country == "Mexico",]


d1.m = mean(mexico$d1, na.rm = T)
d2.m = mean(mexico$d2, na.rm = T)
d3.m = mean(mexico$d3, na.rm = T)
d4.m = mean(mexico$d4, na.rm = T)
d5.m = mean(mexico$d5, na.rm = T)
d6.m = mean(mexico$d6, na.rm = T)
d7.m = mean(mexico$d7, na.rm = T)
d8.m = mean(mexico$d8, na.rm = T)
d9.m = mean(mexico$d9, na.rm = T)
d10.m = mean(mexico$d10, na.rm = T)

mexico.d <- c(d1.m,d2.m,d3.m,d4.m,d5.m,d6.m,d7.m,d8.m,d9.m,d10.m)


europe <- read.csv("world_regions/europe.csv")


d1.e = mean(europe$d1, na.rm = T)
d2.e = mean(europe$d2, na.rm = T)
d3.e = mean(europe$d3, na.rm = T)
d4.e = mean(europe$d4, na.rm = T)
d5.e = mean(europe$d5, na.rm = T)
d6.e = mean(europe$d6, na.rm = T)
d7.e = mean(europe$d7, na.rm = T)
d8.e = mean(europe$d8, na.rm = T)
d9.e = mean(europe$d9, na.rm = T)
d10.e = mean(europe$d10, na.rm = T)


slices.e <- c(d1.e,d2.e,d3.e,d4.e,d5.e,d6.e,d7.e,d8.e,d9.e,d10.e)

slices.e <- data.frame(
  Decile = lbls, 
  Percentage = slices.e)


ggplot(slices.e, aes(x="", y=Percentage, fill=Decile)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) + theme_void()



d10.e/d1.e

