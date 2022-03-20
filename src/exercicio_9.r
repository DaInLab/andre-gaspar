library(readxl)
library(dplyr)

data <- read_excel("./dados/exercicio9.xls")
sals <- data$'Salários'

png(filename = "./graficos/exercicio9.png", width = 1000, height = 1000)

hist(sals, main="Exercício 9", xlab="Salarios", ylab="Frequencia", col=rainbow(5))

dev.off()

table <- data.frame(t(table(sals)))[,-1]
table$sals <- as.numeric(levels(table$sals))

table <- table %>% 
  mutate(
    Fr = 100*Freq/sum(Freq),
    Fac = cumsum(Freq),
    Xi.Fi = sals*Freq
  )
table