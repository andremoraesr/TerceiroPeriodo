sinasc <-  read.csv(file = "sinasc_mg_2024.csv", header = TRUE, sep = ',')
str(sinasc)

sinasc <- na.omit(sinasc)

sinasc <- sinasc |>
  mutate(PARTO = as.factor(PARTO), GRAVIDEZ = as.factor(GRAVIDEZ), 
         DIA_SEMANA = factor(DIA_SEMANA, levels = c("segunda", "terça", "quarta", "quinta", "sexta", "sábado", "domingo")),
         SEXO = as.factor(SEXO))

ggplot(data = sinasc, mapping = aes(x = SEXO)) + geom_bar() + theme_minimal()

ggplot(data = sinasc, mapping = aes(x = IDADEMAE)) + facet_wrap(~PARTO) + geom_histogram()

ggplot(data = sinasc, mapping = aes(x = DIA_SEMANA)) + facet_wrap(~PARTO) + geom_bar()

ggplot(data = sinasc, mapping = aes(y = PESO, x = SEXO)) + geom_boxplot() + theme_minimal()

ggplot(data = sinasc, mapping = aes(x = IDADEMAE)) + geom_histogram(bindwith = 1) + theme_minimal()
