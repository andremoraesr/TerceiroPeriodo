library(ggplot2)
library(dplyr)

femur <- read.csv(file = "femur.csv", header = TRUE, sep = ',')
str(femur)

ggplot(data = femur, mapping = aes(x = femur, y = altura, colour = genero)) + geom_point()

homens <- femur |> 
  filter(genero == "Male")
mulheres <- femur |> 
  filter(genero == "Female")

ggplot(data = homens, aes(x = femur, y = altura)) + geom_point()

cor(homens$femur, homens$altura)
