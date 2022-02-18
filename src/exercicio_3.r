library("writexl")

numChild <- c(0, 1, 2, 3, 5, 5, "Mais de 5")
family <- c(17, 20, 28, 19, 7, 4, 5)

table <- data.frame("Numero de filhos" = numChild, "Famílias" = family)
table
View(table)

# Creating 
write_xlsx(table,"./dados/exercicio3.xlsx")

calc <- function(numChild) {
  uniqv <- unique(numChild)
  uniqv[which.max(tabulate(match(numChild, uniqv)))]
}

mediana <- median(numChild)
moda    <- calc(numChild)

names <- c("Mediana", "Moda")
calcs <- c(mediana, moda)

png(filename = "../graficos/exercicio3.png", width = 1000, height = 1000)
barplot(calcs, 
        main="Exercício 3", 
        xlab="Cálculos", 
        ylab="Número de filhos", 
        names.arg = names, 
        ylim=c(0, 7), 
        cex.names = 0.8, 
        xaxs = "i",
        col=rainbow(5)
)

dev.off()