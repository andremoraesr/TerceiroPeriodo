titanic <- read.csv(file = "titanic.csv", header = TRUE, sep = ",")    #ler arquivo de dados e colocar num objeto
titanic[1, 1]
titanic[1,]
titanic[1, 4]
titanic[1, c(3,4)]           #mostrar duas colunas
titanic$Name[4]             #acessar pelo nome da coluna
titanic[titanic$Sex == "female",]            #mostra somente as mulheres, por exemplo


names(titanic)              #nome colunas da tabela

str(titanic)              #ver estrutura da tabela
summary(titanic)          #resumo dos dados da tabela


sum(titanic$Survived == 0)
mean(titanic$Survived == 0)

terceira_classe <- titanic[titanic$Pclass == 3,]     #subconjunto da terceira classe

sum(terceira_classe$Survived == 0)/nrow(terceira_classe)          #media de pessoas da terceira classe que morreram


titanic_first <- titanic[titanic$Pclass == 1,]        #apenas primeira classe
titanic_second <- titanic[titanic$Pclass == 2,]       #apenas segunda classe
titanic_third <- titanic[titanic$Pclass == 3,]        #apenas terceira classe

sum(titanic_first$Survived == 1)/216             #taxa de sobrevivencia 1 classe
sum(titanic_second$Survived == 1)/184            #taxa de sobrevivencia 2 classe
sum(titanic_third$Survived == 1)/491             #taxa de sobrevivencia 3 classe

table(titanic_first$Survived)    #tabela quantos morreram e sobreviveram 1 classe
prop.table(table(titanic_first$Survived))        #tabela proporcao quantos morr. e sobrev. 1 classe


table(titanic_second$Survived)    #tabela quantos morreram e sobreviveram 2 classe
prop.table(table(titanic_second$Survived))        #tabela proporcao quantos morr. e sobrev. 2 classe


table(titanic_third$Survived)    #tabela quantos morreram e sobreviveram 3 classe
prop.table(table(titanic_third$Survived))        #tabela proporcao quantos morr. e sobrev. 3 classe

table(titanic_first$Survived, titanic_first$Sex)    #tabela com cruzamento de duas colunas(sex e survived)

homens <- titanic[titanic$Sex == "male",]
prop.table(table(homens$Survived, homens$Pclass), margin = 2)    #porcentagem homens que morreram por classe

titanic$Survived <- as.factor(titanic$Survived)
titanic$Pclass <- as.factor(titanic$Pclass)           #trocar a coluna por fator, classe correta dela

penguins <- read.csv(file = "penguins.csv", header = TRUE, sep = ",")         #lendo novo banco de dados

summary(penguins)
