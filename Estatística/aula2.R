n <- 10000
dado1 <- sample(x = 1:6, size = n, replace = TRUE)
soma_acumulada <- cumsum(dado1)
media_acumulada <- soma_acumulada/1:n

plot(x = 1:n, y = media_acumulada, type = "l")    #grafico
abline(h = 3.5, col = "red")                      #linha no grafico

medias <- c()                         #crio vetor medias vazio
for(j in 1:10000) {
  dado1 <- sample(x = 1:6, size = n, replace = TRUE)
  medias[j] <- mean(dado1)
}

hist(medias, breaks = 20)

dado2 <- sample(x = 1:6, size = 100, replace = TRUE)

bilhete <- c(1,2,17,28,40,55)

sorteio <- sample(x = 1:60, size = 6, replace = TRUE)
sorteio

bilhete %in% sorteio

sorteios <- c()
for(j in 1:100000) {
  sorteio <- sample(x = 1:60, size = 6, replace = FALSE)
  sorteios[j] <- sum(bilhete %in% sorteio)          #quantidade de acertos
}

sorteios
table(sorteios)            #tabela de frequencia
barplot(table(sorteios))   #grafico de barras da tabela de frequencia

semanas <- 0
acertos <- 0
while(acertos < 6) {         #quanto tempo para acertar x numeros
  semanas <- semanas + 1
  sorteio <- sample(x = 1:60, size = 6, replace = FALSE)
  acertos <- sum(bilhete %in% sorteio)
}

semanas
acertos

#jogo da bet
urna <- c("branca", rep("preta", times = 7), rep("vermelha", times = 7))

dinheiro <- 100
aposta <- "preta"

saldo <- c()

for(j in 1:200) {
  dinheiro <- dinheiro - 10
  sorteio <- sample(x = urna, size = 1)
  if(sorteio == aposta) {
    dinheiro <- dinheiro + 20
  }
  else {
    dinheiro <- dinheiro
  }
  saldo <- c(saldo, dinheiro)
}

plot(x = 1:200, y = saldo, type = "l")
