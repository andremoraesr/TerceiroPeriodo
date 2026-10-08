library(ggplot2)
library(dplyr)
library(sf)
library(geobr)

sinasc <-  read.csv(file = "sinasc_mg_2024.csv", header = TRUE, sep = ',')
str(sinasc)

sinasc <- na.omit(sinasc)

sinasc <- sinasc |>
  mutate(PARTO = as.factor(PARTO), GRAVIDEZ = as.factor(GRAVIDEZ), 
         DIA_SEMANA = factor(DIA_SEMANA, levels = c("segunda", "terça", "quarta", "quinta", "sexta", "sábado", "domingo")),
         SEXO = as.factor(SEXO))

#resumo para o peso ao nescer
summary(sinasc$PESO)

ggplot(data = sinasc, mapping = aes(x = SEXO)) + geom_bar() + theme_minimal()

ggplot(data = sinasc, mapping = aes(x = IDADEMAE)) + facet_wrap(~PARTO) + geom_histogram()

ggplot(data = sinasc, mapping = aes(x = DIA_SEMANA)) + facet_wrap(~PARTO) + geom_bar()

ggplot(data = sinasc, mapping = aes(y = PESO, x = SEXO)) + geom_boxplot() + theme_minimal()

ggplot(data = sinasc, mapping = aes(x = IDADEMAE)) + geom_histogram(bindwith = 1) + theme_minimal()

#variância
media <- mean(sinasc$PESO)
variancia <- sum((sinasc$PESO-media)^2)/(length(sinasc$PESO)-1)
desviopadrao <- sqrt(variancia)

mulheres <- sinasc |> filter(SEXO == "Feminino")
sd(mulheres$PESO) #funcao padrão para desvio padrão

homens <- sinasc |> filter(SEXO == "Masculino")
sd(homens$PESO)

cv_homens <- sd(homens$PESO)/mean(homens$PESO)   #coeficiente de variação, útil para não olhar para o dado bruto
cv_mulheres <- sd(mulheres$PESO)/mean(mulheres$PESO)

#fazendo mapa
minas <- read_municipality(code_muni = "MG", year = 2022)

ggplot(data = minas) + geom_sf() #mapa de MG com seus municípios

nascimentos <- sinasc |> count(code_muni)  #quantos nasc em cada cidade

ifelse(nascimentos$n >= 50, "mais que 50", "menos que 50")
nascimentos <- nascimentos |> mutate(faixa = ifelse(nascimentos$n >= 50, "mais que 50", "menos que 50"))

str(nascimentos)

dados_gerais <- minas |> left_join(nascimentos, by = "code_muni")

ggplot(data = dados_gerais) + geom_sf(aes(fill = faixa)) + scale_fill_manual(values = c("steelblue", "grey")) + 
  theme_void() + labs(title = "Nascimentos em Minas Gerais em 2022", subtitle = "Municípios com mais ou menos que 50 nascimentos")
