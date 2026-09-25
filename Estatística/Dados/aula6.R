library(ggplot2)
library(dplyr)

pinguins <-  read.csv(file = "penguins.csv", header = TRUE, sep = ',')
pinguins <- pinguins |> 
  mutate(species <- as.factor(species), island <- as.factor(island), sex = as.factor(sex))

pinguins <- pinguins |>
  filter(sex != "")

nrow(pinguins)
sample(nrow(pinguins))
pinguins_embaralhado <- pinguins[sample(nrow(pinguins)), ]

n <- round(nrow(pinguins_embaralhado)*0.8)
treinamento <- pinguins_embaralhado[1:n,]
teste <- pinguins_embaralhado[(n+1):nrow(pinguins_embaralhado),]

#validando visualmente o conjunto treinamento
ggplot(data = treinamento, mapping = aes(x = bill_length_mm, y = bill_depth_mm, colour = species)) + 
  geom_point() + theme_minimal()

classificacao <- c()

for(j in 1:nrow(teste)) {
  if(teste$bill_depth_mm[j] <= 16.25)  {
    classificacao[j] <- "Gentoo"
  }else {
    if(teste$bill_length_mm[j] <= 45) {
      classificacao[j] <- "Adelie"
    }else {
      classificacao[j] <- "Chinstrap"
    }
  }
}
classificacao
mean(classificacao == teste$species)
