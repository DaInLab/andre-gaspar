library(readxl)
library(dplyr)

data <- read_excel("./dados/exercicio4.xls")
dados <- data$'Salários'

png(filename = "../graficos/exercicio4.png", width = 1000, height = 1000)
hist(dados, main="Exercício 4", xlab="Salários", ylab="Frequência")
dev.off()

tabela <- data.frame(t(table(dados)))[,-1]
tabela$dados <- as.numeric(levels(tabela$dados))
tabela <- tabela %>% 
  mutate(
    Fr = 100*Freq/sum(Freq),
    Fac = cumsum(Freq),
    Xi.Fi = dados*Freq
  )
tabela

