#1
newVec <- seq(-5,5)
newVec

x <- 1:7
x

#2
VecSeq <- seq(1,3, by = 0.2)
VecSeq

#3.
Worker_age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
Worker_age

third_element <- Worker_age[3]
third_element

sec_forth <- Worker_age[c(2,4)]
sec_forth

all_elem <- Worker_age[c(1:3,5:11,13:50)]
all_elem

#4 
other_vec <- c("first" = 3, "second" = 0, "third" = 9)
other_vec

accessed <- other_vec [c("first", "third")]
accessed

#5
x <- seq(-3,2)
x
#a changed value of the second sequence of x into 0
#b
x[2] <- 0
x

#6.
#a.
Purchases <- data.frame(
  
  Month = c("Jan","Feb","March","Apr","May","June"),
  PricePerLiter = c(52.50,57.25,60.00,65.00,74.25,54.00),
  Purchasequantity = c(25,30,40,50,10,45)
  
)
Purchases
View(Purchases)
#b
Price_Per_Liter = c(52.50,57.25,60.00,65.00,74.25,54.00)
Purchase_quantity = c(25,30,40,50,10,45)
weighted.mean(Price_Per_Liter, Purchase_quantity)

#7
#a
Vectordata <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
                sd(rivers), min(rivers), max(rivers))
#b
Vectordata

#8
#a.
Rank <- data.frame(
  
  PowerRanking = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25),
  Celebrity = c("Tom Cruise","Roling Stones","Oprah Winfey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Supranos","Dan Brown","Bruce Springteen","Donald Trump","Muhhamad Ali","Paul McCartney","George Lucas","Elton John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryant"),
  Pay = c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)
  
)
Rank
View(Rank)
#b
Rank$PowerRanking[Rank$PowerRanking == "J.K Rowling"] <- 15
Rank$Pay[Rank$Pay == "J.K Rowling"] <- 90
Rank


#d
AccessPowerRanking = PowerRanking[c(10:20),]
AccessPowerRanking


#e. Its output is the 10-20 row information in the csv file


#9.
##install.package("readxl")
library(readxl)
Data <- read_excel("hotels-vienna.xlsx")
Data
View(Data)
#b
DimensionFile <- dim(Data)
DimensionFile
#c
colnames(Data)
Colums <- Data[,c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
View(Colums)
#d
save(Colums, file="new.RData")
View(Colums)
#e
load("new.RData")
Colums

Head_Six <- head(Colums)
Tail_Six <- tail(Colums)
View(Head_Six)
View(Tail_Six)


#10.
#a.
Vegetables <- list("Carrots","Potato","Mushroom","Parsley","Sweet Potato","Spinach","Beans","Cabbage","Petchay","Celery")
#b
NewList <- append(Vegetables,c("Purple Yam","Bell Pepper"))
NewList
#c
NewList <- append(Vegetables,c("Cauliflower","Corn"),after = 5)
NewList
#d
NewList <- Vegetables [c(-5, -10, -15)]
NewList