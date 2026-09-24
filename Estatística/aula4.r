library(ggplot2)   #pacote para criação de graficos
library(dplyr)     #pacote para manipulação de dados


titanic <- read.csv(file = "titanic.csv", header = TRUE)
penguins <- read.csv(file = "penguins.csv", header = TRUE)

#imprimindo todas as variaveis do titanic
names(titanic)

titanic$Survived <- as.factor(titanic$Survived)

ggplot(data=titanic, mapping = aes(x = Survived)) + geom_bar(fill = "#2E6F40")     #grafico de barras 

titanic <- titanic |>
  mutate(Plclass = as.factor(Pclass))       #outra forma de transformar algo para fator

ggplot(data = titanic, mapping = aes(x = Pclass, fill = Survived)) + 
  geom_bar() + facet_wrap(~Sex) + 
  scale_fill_manual(
    values = c("orange",  "lightblue"),
    name = "Sobrevivência") +
    labs(title = "Sobrevivência no Titanic por classe e sexo", x = "Classe", y = "Quantidade",)
#grafico de barras com colunas de classes, representando sobrevivencia em cada, e fateando em dois graficos para mulheres e homens
 
ggplot(data = titanic, mapping = aes(Age)) + geom_histogram(fill = "steelblue", col = "white")




