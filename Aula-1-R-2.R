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

#verifica qual média de idade do conjunto de dados (todos);

#verificar a média de idade de cada conjunto de tratamento 1, 2 e 3

#verificar a média de idade de cada sexo:

#verificar a média da pressão arterial de cada grupo e a variância da pressão arterial de cada grupo

#verificar a cariância de cada grupo por tipo de tratamento

#Dividir os dados em dois grupos considerando a média de idade dos indivídos,
#ou seja acima ou igual a média 
#e o outro abaixo da média. 

#Comparar os dois grupos, média, mediana, variância e desvio padrão
















