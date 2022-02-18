library(readxl)

data <- read_excel("./dados/exercicio5.xls")

brands <- data$'Marcas'
count <- data$'Nº pessoas'

png(filename = "../graficos/exercicio5.png", width = 1000, height = 1000)
barplot(
  count, 
  main="Exercício 5", 
  xlab="Marcas", 
  ylab="Pessoas", 
  names.arg = brands, 
  ylim=c(0, 50), 
  cex.names = 0.8, 
  xaxs = "i"
)
dev.off()