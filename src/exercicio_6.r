library(qcc)
library(readxl)

data <- read_excel("./dados/exercicio6.xls")

pessoas <- data$'Nº pessoas'
names(pessoas) <- data$'Qualidade'

png(filename = "./graficos/exercicio6.png", width = 1000, height = 1000)

pareto <- pareto.chart(pessoas, main="Exercício 6", ylab="Frequencia")

dev.off()