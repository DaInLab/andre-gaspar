library(readxl)

moda <- function(x) {
  uniqv <- unique(x)
  uniqv[which.max(tabulate(match(x, uniqv)))]
}

worksheet <- read_excel("./dados/exercicio2.xls")

f_table <- as.data.frame(table(worksheet))

print(paste("Tabela de frequência: ", f_table))

mean        <- mean(worksheet$'Casas')
median      <- median(worksheet$'Casas')
varance     <- var(worksheet$'Casas')
sd          <- sd(worksheet$'Casas')
moda        <- moda(worksheet$'Casas')

headerCalc <- c ("Media", "Mediana", "Moda", "Variancia", "Desvio Padrao")
calc <- c (mean, median, moda, varance, sd)

png(filename = "../graficos/exerc2.png", width = 1000, height = 1000)
barplot(calc, main="Planilha 2 - Ex. 2", xlab="Valores Estátisticos", ylab="Casas", 
        names.arg = headerCalc, ylim=c(0, 700), cex.names = 0.8, xaxs = "i", col=rainbow(5))
dev.off()