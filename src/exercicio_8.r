library(readxl)
library(dplyr)

dataW <- read_excel("./dados/exercicio8.xls")

matrix <- data.matrix(dataW)
vector <- as.vector(matrix)
vector

png(filename = "./graficos/exercicio8.png", width = 1000, height = 1000)

hist(vector, main="Exercício 8", xlab="Alturas", ylab="Frequencia", col=rainbow(7))
dev.off()

table <- data.frame(t(table(vector)))[,-1]
table$vector <- as.numeric(levels(table$vector))
table <- table %>% 
  mutate(
    Fr = 100*Freq/sum(Freq),
    Fac = cumsum(Freq),
    Xi.Fi = vector*Freq
  )
table