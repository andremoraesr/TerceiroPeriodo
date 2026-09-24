library(ggplot2)
library(dplyr)

pinguins <-  read.csv(file = "penguins.csv", header = TRUE, sep = ',')
str(pinguins)

pinguins <- pinguins |> 
  mutate(species <- as.factor(species), island <- as.factor(island), sex = as.factor(sex))

pinguins <- pinguins |>
  filter(sex != "")

#outro jeito abaixo
#pinguins <- pinguins[pinguins$sex != "", ]

ggplot(data = pinguins, mapping = aes(x = island, fill = species)) + geom_bar() + facet_wrap(~sex)

ggplot(data = pinguins, mapping = aes(x = sex)) + geom_bar() + facet_wrap(~species) + theme_minimal()

ggplot(data = pinguins, mapping = aes(x = island, fill = species)) + geom_bar() + theme_minimal()

ggplot(data = pinguins, mapping = aes(body_mass_g)) + facet_wrap(~species) + geom_histogram(fill = "steelblue", col = "white")

ggplot(data = pinguins, mapping = aes(y = body_mass_g)) + geom_boxplot() + theme_minimal() #analise da mediana
ggplot(data = pinguins, mapping = aes(y = body_mass_g)) + geom_boxplot() + theme_minimal() + facet_wrap(~species)

ggplot(data = pinguins, mapping = aes(y = flipper_length_mm)) + geom_boxplot() + theme_minimal() + facet_wrap(~species)

ggplot(data = pinguins, mapping = aes(y = bill_length_mm)) + geom_boxplot() + theme_minimal() + facet_wrap(~species)


