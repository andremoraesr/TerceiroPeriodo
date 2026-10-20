library(ggplot2)
library(dplyr)

grilo <- read.csv(file = "grilo.txt", header = TRUE, sep = ",")

ggplot(grilo, aes(temperatura, frequencia)) + geom_point() + theme_minimal()

modelo <- lm(formula = frequencia ~ temperatura, data = grilo)

modelo
#frequencia = 0.3812*temperatura + 6.4812

0.3812*22 + 6.4812

femur <- read.csv(file = "femur.csv", header = TRUE, sep = ',')

mulheres <- femur |>
  filter(genero == "Female")

homens <- femur |> 
  filter(genero == "Male")

modeloHomens <- lm(formula = altura ~ femur, data = homens)
modeloMulheres <- lm(formula = altura ~ femur, data = mulheres)
modeloHomens      #altura = 2.610*femur + 44.2
modeloMulheres    #altura = 2.019*femur + 67.579

predict(modeloHomens, newdata = data.frame(femur = 50))           #previsão baseada no modelo encontrado


