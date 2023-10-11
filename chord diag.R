# Chord diagram 
library(circlize)
library(dplyr)

df_irene <- read.csv("chord 2.csv", sep = ";", header = TRUE, row.names = c(" 1", " 2", " 3", " 4", " 5", " 6", " 8", " 9", " 10", " 11", " 12", " 13", " 14", " 15", " 16"))
df_irene <- mutate_all(df_irene, ~coalesce(.,10))


colnames(df_irene) <- c("1", "2", "3", "4", "5", "6", "8", "9", "10", "11", "12", "13", "14", "15", "16")

df_irene <- as.data.frame(df_irene)
grid.col <- c("1"="#E5243B", "2"="#DDA63A", "3"="#4C9F38", "4"="#C5192D", "5"="#FF3A21", "6"="#26BDE2", 
              #"7"="#FCC30B", 
              "8"="#A21942", "9"="#FD6925", "10"="#DD1367", "11"="#FD9D24", "12"="#BF8B2E", "
              13"="#3F7E44", "14"="#0A97D9", "15"="#56C02B", "16"="#00689D", 
              #"A17"="#19486A",
              " 1"="#E5243B", " 2"="#DDA63A", " 3"="#4C9F38", " 4"="#C5192D", " 5"="#FF3A21", " 6"="#26BDE2",
             #" 7"="#FCC30B", 
              " 8"="#A21942", " 9"="#FD6925", " 10"="#DD1367", " 11"="#FD9D24", " 12"="#BF8B2E", 
              " 13"="#3F7E44", " 14"="#0A97D9", " 15"="#56C02B", " 16"="#00689D"
              #" 17"="#19486A"
)


df_irene <- as.matrix(df_irene)

par(mfrow = c(1, 2))

circos.par(start.degree = 180)

chordDiagram(df_irene, grid.col = grid.col)
abline(h = 0, lty = 2, col = "#00000080")
circos.clear()

circos.par(start.degree = 0)
chordDiagram(df_irene, grid.col = grid.col)
abline(h = 0, lty = 2, col = "#00000080")
#abline(v = 0, lty = 2, col = "#00000080")
circos.clear()
