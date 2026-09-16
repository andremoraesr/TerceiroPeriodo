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

titanic <- read.csv(file = "titanic.csv", header = TRUE, sep = ",")    #ler arquivo de dados e colocar num objeto
titanic[1, 1]
titanic[1,]
titanic[1, 4]

names(titanic)              #nome colunas da tabela

str(titanic)              #ver estrutura na tabela


sum(titanic$Survived == 0)
mean(titanic$Survived == 0)

terceira_classe <- titanic[titanic$Pclass == 3,]     #subconjunto da terceira classe

sum(terceira_classe$Survived == 0)/nrow(terceira_classe)          #media de pessoas da terceira classe que morreram
