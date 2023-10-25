household <- data.frame(
  Respondents = c(1:20),
  Sex = c("Female","Female","Male","Female","Female","Female","Female","Female","Female","Female","Male","Female","Female","Female","Female","Female","Female","Female","Male","Female"),
  FatherOccupation = c("Farmer","Others","Others","Others","Farmer","Driver","Others","Farmer","Farmer","Farmer","Others","Driver","Farmer","Others","Others","Farmer","Others","Farmer","Driver","Farmer"),
  PersonatHome = c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6),
  Siblingsatschool = c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2),
  Typeshouse = c("Wood","Semi-Concrete","Concrete","Wood","Wood","Concrete","Concrete","Wood","Semi-Concrete","Concrete","Semi-Concrete","Concrete","Semi-Concrete","Semi-Concrete","Concrete","Concrete","Concrete","Concrete","Concrete","Semi-Concrete")
  
)
household

HouseholdData <- data.frame(
  Respondents = c(1:10),
  Sex = c("Male", "Female", "Female", "Male", "Male", "Female", "Female", "Male", "Female", "Male"),
  FatherOccupation = c(1, 2, 3, 3, 1, 2, 2, 3, 1, 3),
  PersonatHome = c(5, 7, 3, 8, 6, 4, 4, 2, 11, 6),
  Siblingsatschool = c(2, 3, 0, 5, 2, 3, 1, 2, 6, 2),
  Typeshouse = c("Wood", "Congrete", "Congrete", "Wood", "Semi-Congrete", "Semi-Congrete", "Wood", "Semi-Congrete", "Semi-Congrete", "Congrete")
)
HouseholdData


#3a.
mydata<-read.table("D:/Household_Data.csv", header=TRUE, sep=",")
mydata

#3b.
imported_data <- read.csv("D:/Household_Data.csv")
imported_data

#3b.(2)
imported_data$Sex 
factor_imported_data_Sex<-factor(imported_data$Sex)
factor_imported_data_Sex
levels(factor_imported_data_Sex)<-c("Female", "Male")
factor_imported_data_Sex



#3c.
imported_data$Types.of.Houses
factor_imported_data_TypesofHouses<-factor(imported_data$Types.of.Houses)
factor_imported_data_TypesofHouses
levels(factor_imported_data_TypesofHouses)<-c("Wood", "Concrete", "Semi-Concrete")
factor_imported_data_TypesofHouses


#3d.
imported_data$ Fathers.Occupation
factor_imported_data_FathersOccupation<-factor(imported_data$ Fathers.Occupation)
factor_imported_data_FathersOccupation
levels(factor_imported_data_FathersOccupation)<-c("Farmer", "Driver", "Others")
factor_imported_data_FathersOccupation

#3e.
female_drivers <- imported_data[imported_data$Sex == 2 & imported_data$FatherOccupation == 2, ]
print(female_drivers)

#3f.
greater_than_5_siblings <- imported_data[imported_data$Siblingsatschool >= 5, ]
print(greater_than_5_siblings)