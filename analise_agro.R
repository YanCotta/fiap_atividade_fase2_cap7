# YanPimentelCotta_RM562836_fase2_cap7

# Verificar se o arquivo existe
if (!file.exists("agro_data.csv")) {
  stop("Erro: O arquivo 'agro_data.csv' não foi encontrado no diretório de trabalho: ", getwd())
}

# Carregar a base de dados (usando read.csv2 para separador ';')
dados <- read.csv2("agro_data.csv")

# Imprimir nomes das colunas para depuração
cat("Nomes das colunas no CSV:\n")
print(colnames(dados))

# Verificar se a coluna existe
if (!"Producao..toneladas." %in% colnames(dados)) {
  stop("Erro: A coluna 'Producao..toneladas.' não foi encontrada. Colunas disponíveis: ", paste(colnames(dados), collapse = ", "))
}

# Análise Exploratória da Variável Quantitativa: Produção (toneladas)
producao <- dados$"Producao..toneladas."

# Medidas de Tendência Central
media <- mean(producao)
mediana <- median(producao)
moda <- names(sort(table(producao), decreasing = TRUE))[1]

# Medidas de Dispersão
variancia <- var(producao)
desvio_padrao <- sd(producao)
amplitude <- max(producao) - min(producao)

# Medidas Separatrizes
quartis <- quantile(producao, probs = c(0.25, 0.5, 0.75))
decis <- quantile(producao, probs = seq(0.1, 0.9, by = 0.1))

# Análise Gráfica Quantitativa
# Salvar histograma
png("histograma_producao.png")
hist(producao, main = "Histograma da Produção de Soja", xlab = "Produção (toneladas)", col = "lightblue")
dev.off()

# Salvar boxplot
png("boxplot_producao.png")
boxplot(producao, main = "Boxplot da Produção de Soja", ylab = "Produção (toneladas)")
dev.off()

# Imprimir resultados
cat("Medidas de Tendência Central:\n")
cat("Média:", media, "\n")
cat("Mediana:", mediana, "\n")
cat("Moda:", moda, "\n\n")

cat("Medidas de Dispersão:\n")
cat("Variância:", variancia, "\n")
cat("Desvio Padrão:", desvio_padrao, "\n")
cat("Amplitude:", amplitude, "\n\n")

cat("Medidas Separatrizes:\n")
cat("Quartis:\n")
print(quartis)
cat("Decis:\n")
print(decis)

# Análise Gráfica da Variável Qualitativa: Classificação de Produtividade
# Verificar se a coluna existe
if (!"Classificacao.de.Produtividade" %in% colnames(dados)) {
  stop("Erro: A coluna 'Classificacao.de.Produtividade' não foi encontrada. Colunas disponíveis: ", paste(colnames(dados), collapse = ", "))
}

classificacao <- dados$"Classificacao.de.Produtividade"
tabela_freq <- table(classificacao)

# Salvar gráfico de barras
png("grafico_classificacao.png")
barplot(tabela_freq, main = "Distribuição da Classificação de Produtividade", 
        xlab = "Classificação", ylab = "Frequência", col = "lightgreen")
dev.off()