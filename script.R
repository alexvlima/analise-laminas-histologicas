# install.packages("readxl")
library(readxl)

base <- read_excel("dados.xlsx")

#Teste de normalidade
shapiro.test(base$Cel)

kruskal.test(base$Cel, base$Grupo)

quartil <- function(x)
  {quartil <- quantile(x, probs=(c(0.25,0.50,0.75)))
  return(quartil)
  }

tapply(base$Cel, base$Grupo, quartil)

boxplot(base$Cel ~ base$Grupo,
        main="Boxplot células/mm2 por grupo",
        xlab="Grupos", ylab="Células/mm2",
        col="blue")
                                              
