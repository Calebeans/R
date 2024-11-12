#declarando uma variável
x <- 10
y <- 20
a <- x+y

x <- x+y 
y <- x*y

remove(x,a)

c <- 20.3

a + c

b <- "Calebe"

d <- 'Calebe'

a + b

variavel1 <- "Texto"

print(variavel1)

#comparação de variáveis
is.numeric(variavel1)
is.character(variavel1)
is.logical(variavel1)

variavel3 <- 92.54

#Obter parte inteira de uma variável decimal
as.integer(variavel3)
variavel3

variavel2 <- TRUE
variavel2 
print(variavel2)

#cancatenação
d <- paste("casa ", "velha", variavel3)
print(d)

paste("Oi", "Olá", "Bom", "bem", sep = "|")

#Potencia
x <- 3
y <- 2 
x^y

#Dados estruturados
r <- c(45, 558, 69, 28)

r[2]


#importação de arquivos
#Os arquivos Comma-separated values, também conhecido como CSV

#carregamento de dados
dfDiabetes <- as.data.frame(read.csv("diabetes.csv", header =  TRUE, sep = ";", dec = ","))

length(dfDiabetes$Tratamento)

#Quantidade que a classe possui
unique(dfDiabetes$Sexo)

#filtar dataframe, criar subset
dfDiabetesM <- subset(dfDiabetes, dfDiabetes$Sexo=="M")

dfDiabetesM

#crie o filtro para o sexo feminino
dfDiabetesF <- subset(dfDiabetes, dfDiabetes$Sexo=="F")


#Estatistica descritiva
dadosE <- c(1, 2, 6, 4, 5, 7)

#mediana
median(dadosE)

#media
mean(dadosE)

#Variância
var(dadosE)

#Desvio padrão
library(stats)
sd(dadosE)

#raiz da variância
sqrt(var(dadosE))


#Verifica qual a média de idade do conjunto de dados (todos);

media <- median(dfDiabetes$Idade)


#Verificar a média de idade de cada grupo de tratamento 1, 2 e 3;

dfDiabetes1 <- subset(dfDiabetes, dfDiabetes$Tratamento==1)
median(dfDiabetes1$Idade)

dfDiabetes2 <- subset(dfDiabetes, dfDiabetes$Tratamento==2)
median(dfDiabetes2$Idade)

dfDiabetes3 <- subset(dfDiabetes, dfDiabetes$Tratamento==3)
median(dfDiabetes3$Idade)

#Verifica a média de idade de cada sexo;

median(dfDiabetesM$Idade)
median(dfDiabetesF$Idade)

#Verificar a média da pressão arterial de cada grupo e a variância da pressão arterial 
#de cada grupo;

median(dfDiabetes1$Pres)
median(dfDiabetes2$Pres)
median(dfDiabetes3$Pres)

variancia1 <- var(dfDiabetes1$Pres)
variancia2 <- var(dfDiabetes2$Pres)
variancia3 <- var(dfDiabetes3$Pres)

#Dividir os dados em dois grupos considerando a média de idade dos indivíduos, ou 
#seja, um grupo acima ou igual a média e outro abaixo da média.

acimaMedia <- subset(dfDiabetes, dfDiabetes$Idade > media)
print(acimaMedia)

abaixoMedia <- subset(dfDiabetes, dfDiabetes$Idade < media)
print(abaixoMedia)

#Comparar os dois grupos, média, mediana, variância e desvio padrão.

mean(acimaMedia)
mean(abaixoMedia)

median(acimaMedia)
median(abaixoMedia)

var(acimaMedia)
var(abaixoMedia)

library(stats)
sd(acimaMedia)
sd(abaixoMedia)

#Considere que os valores do arquivo são as medições finais do tratamento realizado 
#pelos pacientes. O tratamento consistiu em testar três métodos de controle da 
#pressão arterial. Neste sentido, informe qual foi o método que obteve o melhor 
#resultado.

sqrt(variancia1)
sqrt(variancia2)
sqrt(variancia3)

#Observação sobre o coeficiente de variação: quanto o percentual é zero significa 
#que não ocorreu variação (quanto menor mais homogêneo os dados estão).
#Escreva um texto explicando como você chegou ao resultado


#carregamento de dados
df2 <- as.data.frame(read.csv("aeusp-alt4.csv", header = TRUE, sep = ";", dec = ","))



#filtrar dataset
tbSudeste <- subset(df2, df2$Reproce == "Sudeste")

tbSudesteR <- subset(df2, df2$Reproce == "Sudeste" & df2$Renda > 3)

#mudar o dataframe
tbTmp <- data.frame(Comun=tbSudesteR$Comun, Renda=tbSudesteR$Renda)
tbTmp

#for em dataset
for(row in 1:nrow(df2)) {
  s <- df2[row, 'Num']
  print(s)
}






