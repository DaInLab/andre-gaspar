library(readxl)

data <- read_excel("./dados/exercicio7.xls")

fields <- data$'Áreas'
attendance <- data$'Atendimento'

png(filename = "./graficos/exercicio7.png", width = 1000, height = 1000)

barplot(
  attendance, 
  main="Exercício 7", 
  xlab="Áreas", 
  ylab="Atendimentos", 
  names.arg = fields, 
  ylim=c(0, 400), 
  cex.names = 0.8, 
  xaxs = "i",
  col=rainbow(5)
)

dev.off()