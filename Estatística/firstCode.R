a <- 2+2
b <- 3+14
a-b
(a-b) + (b**a)
a+b-b
b&&a
b%%a
class(a)
f <- 'amendoim'
class(f)
m <- TRUE
n <- FALSE
class(n)

# vetores

v <- c(2, 50, 100)
w <- c(1, 7, 90)
v + w
v[1] + v[2]
teste <- v[1] + v[2]
rm(teste) #remover variavel

v[c(1,3)]
teste <- c(2, "palavra")
rm(teste)
teste <- c(TRUE, 2)
rm(teste)

w*2
w==1
sum(w==1)
sum(w!=1) #soma de elementos
mean(w)   #media de um vetor

?round #? abre o help

round(mean(w), 2)  #arredonda casas decimais
round(x = mean(w), digits = 2)
w

w[5] <- 10
sum(w)
sum(w, na.rm = TRUE) #na.rm desconsidera o NA para tornar o resultado possível


dados <- sample(x=1:6, size = 10000, replace = TRUE)
dados
sum(dados == 1) #ver quantidade de 1 no sorteio
mean(dados == 1) #incidencia do 1


dado2 <- sample(x = 1:6, size = 10000, replace = TRUE)
somaDados <- dado1 + dado2   #soma cada posição
somaDados[1:10]
2/36
mean(somaDados == 3)
