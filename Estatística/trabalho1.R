#Questão 1
sorteios <- c()
for(i in 1:40) {
  sorteios[i] <- sample(x = 1:100, size = 1, replace  = FALSE)
}

#Letra (a)
pares <- sum((sorteios %% 2) == 0)
pares

#Letra (b)
maior70 <- sum(sorteios > 70)
maior70

#Letra (c)
impares <- c()
for(i in 1:40) {
  if((sorteios[i] %% 2) == 1) {
    impares[i] <- i
  } 
}
impares

#Questão 2
lancamentos <- function(number) {
  result <- 0
  times <- 0
  while(result <= 1) {
    dado <- sample(x = 1:6, size = 1)
    if (dado == number) {
      result <- result + 1
    }
    times <- times + 1
  }
  return(times)
}


#Questão 8
#Letra (a)
passeio <- function(L)  {
  while(L > 0 && L < 20) {
  moeda <- sample(x = 1:2, size = 1, replace = FALSE)
  if(moeda == 1) {       #coroa = 1 e cara = 2
    L <- L - 1
  }
  else {
    L <- L + 1
  }
  }
  if (L == 0) {
    return (0)
  }
  else {
    return (1)
  }
}

#Letra (b)
prop <- function(L) {
  resultado <- c()
  for(i in 1:10000) {
    resultado[i] <- passeio(L)
  }
  return(mean(resultado))
}

#Letra (c)
resultados <- c()
for(i in 1:19) {
  resultados[i] <- prop(i)
}
dados_c <- data.frame(L = 1:19, proporcao = resultados)

ggplot(dados_c, aes(x = L, y = proporcao)) +
  geom_line(color = "steelblue", linewidth = 1) +
  geom_point(color = "darkblue", size = 2.5) +
  scale_x_continuous(breaks = 1:19) +
  scale_y_continuous(limits = c(0, 1), labels = scales::percent_format()) +
  labs(
    title = "Proporção de Sucesso em Função da Posição Inicial (L)",
    subtitle = "Simulação do passeio aleatório com N = 20 (10.000 repetições por L)",
    x = "Posição Inicial (L)",
    y = "Proporção de Vezes que Chega em Casa"
  ) +
  theme_minimal()

#É possível perceber que quanto mais próximo o L for de 0 ou 20, o resultado varia de forma quase linear.
#Ou seja, quanto mais próximo o L de uma das extremidades, mais provável de que o passeio acabe neste extremidade.

#Questão 9
#Letra (a)
passeio2 <- function(passos) {
  possibilidades <- c("L", "R", "U", "D")
  posicao <- c(0,0)
  for(i in 1:8) {
    dado <- sample(x = possibilidades, size = 1)
    if(dado == "L") {
      posicao[1] <- posicao[1]-1
    }
    if(dado == "R") {
      posicao[1] <- posicao[1]+1
    }
    if(dado == "U") {
      posicao[2] <- posicao[2]+1
    }
    if(dado == "D") {
      posicao[2] <- posicao[2]-1
    }
  }
  return (posicao)
}

#Letra (b)
propVezes <- function(N) {
  origem <- c(0,0)
  resultado <- c()
  for(i in 1:N) {
    if(identical(passeio2(8), origem)) {
      resultado[i] <- 1
    }
    else {
      resultado[i] <- 0
    }
  }
  return(mean(resultado))
}
propVezes(10000)
#A proporção gira em torno de 7% a 7,5%, o que significa que é um evento relativamente raro de acontecer.
#Isso porque, a cada passo dado num passeio, mesmo que curto como o de 8 passos, o número de possibilidades cresce rapidamente.


#Letra (c)
#È ímpossível que Link chegue à origem novamente após um número ímpar de passos pois,
#se isso acontecer, Link ficará no mínimo a uma unidade de distância da origem, já que as únicas formas de ele voltar
#são indo e voltando em linha reta, ou dando voltas, e em ambos os casos exige-se um número ímpar de passos.
jogo <- function(N) {
 erro <- paste("É impossível Link voltar à origem após", N, "passos.")
  if((N %% 2) != 0) {
   return (erro)
  }
  else {
    return(propVezes(N))
  }
}



