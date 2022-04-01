library(tidyverse)

library(dplyr)



#reading the pokemon csv file

df<-read.csv("pokemon.csv", sep=",")



#looking at the column

tail(df)



#renaming classfication to classification (missing i)

names(df)[names(df) == 'classfication'] <- 'classification'

head(df)



#deleting the unnecessary columns

df<-df[c(1,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41)]





#Checking for missing data

is.na(df)





#Categorical data

df %>%
  
  count(type1,type2)



df %>%
  
  count(type2)



df %>%
  
  count(abilities)



df %>%
  
  count(classification)



#Descriptive analysis

summary(df)



#Graphs



#Scatterplots

ggplot(df, aes(height_m, weight_kg, color=type1)) +
  
  geom_point() + labs(x="Height", y="Weight") +
  
  ggtitle("Height vs Weight")





ggplot(df, aes(speed, weight_kg, color=type1)) +
  
  geom_point() + labs(x="Speed", y="Weight") +
  
  ggtitle("Speed vs Weight")





ggplot(df, aes(hp, weight_kg, color=type1)) +
  
  geom_point() + labs(x="HP", y="Weight") +
  
  ggtitle("HP vs Weight")





#Line charts

ggplot(data=df) +
  
  geom_smooth(mapping=aes(x=height_m, y=weight_kg)) +
  
  ggtitle("Height vs Weight")



ggplot(data=df) +
  
  geom_smooth(mapping=aes(x=attack, y=defense)) +
  
  ggtitle("Attack vs Defense")



#Box plots

ggplot(df, aes(speed)) +
  
  geom_boxplot() + coord_flip()



ggplot(df, aes(base_total)) +
  
  geom_boxplot() + coord_flip()



ggplot(df, aes(attack)) +
  
  geom_boxplot() + coord_flip()



ggplot(df, aes(defense)) +
  
  geom_boxplot() + coord_flip()

