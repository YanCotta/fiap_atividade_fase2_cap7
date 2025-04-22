# FIAP - Faculdade de Informática e Administração Paulista

<p align="center">
<a href= "https://www.fiap.com.br/"><img src="assets/logo-fiap.png" alt="FIAP - Faculdade de Informática e Admnistração Paulista" border="0" width=40% height=40%></a>
</p>

<br>


## 👨‍🎓 Integrantes:
- <a href="https://www.linkedin.com/in/yan-cotta/">Yan Cotta</a>

## 👩‍🏫 Professores:
### Tutor(a)
- Lucas Gomes Moreira 
### Coordenador(a)
- André Godoi Chiovato# Análise Estatística de Dados do Agronegócio

## Informações do Aluno

- **Nome**: Yan Pimentel Cotta
- **RM**: 562836
- **Fase**: 2
- **Capítulo**: 7

## Descrição do Projeto

Este projeto realiza uma análise estatística de dados do agronegócio brasileiro, focada na produção de soja em 30 estados e regiões do Brasil. A análise inclui a criação de uma base de dados com 30 linhas e 4 colunas, análise exploratória de uma variável quantitativa (Produção em toneladas) e análise gráfica de uma variável qualitativa (Classificação de Produtividade). O projeto foi desenvolvido em R e utiliza dados fictícios, mas realistas, baseados em fontes públicas como CONAB, IBGE, MAPA, Embrapa, INPE e CNA.

## Estrutura dos Arquivos

- **agro_data.csv**: Base de dados em formato CSV, contendo 30 linhas e 4 colunas:
  - `Estado`: Nome do estado ou região (variável qualitativa nominal).
  - `Area Plantada (ha)`: Área cultivada em hectares (variável quantitativa contínua).
  - `Producao (toneladas)`: Quantidade produzida em toneladas (variável quantitativa discreta).
  - `Classificacao de Produtividade`: Categorização em "Baixa", "Média" ou "Alta" (variável qualitativa ordinal).
- **agro_data.xlsx**: Versão em Excel da mesma base de dados, para visualização ou edição manual.
- **analise_agro.R**: Script em R que realiza:
  - Carregamento dos dados do `agro_data.csv`.
  - Análise exploratória da variável `Producao (toneladas)`, incluindo:
    - Medidas de tendência central (média, mediana, moda).
    - Medidas de dispersão (variância, desvio padrão, amplitude).
    - Medidas separatrizes (quartis e decis).
    - Gráficos: histograma e boxplot.
  - Análise gráfica da variável `Classificacao de Produtividade`, com um gráfico de barras.
- **histograma_producao.png**: Histograma da produção de soja.
- **boxplot_producao.png**: Boxplot da produção de soja.
- **grafico_classificacao.png**: Gráfico de barras da classificação de produtividade.

## Pré-requisitos

- **R**: Versão 4.0 ou superior instalada.

- **Pacotes R**: `jsonlite` e `rlang` (necessários para integração com VSCode-R).

  - Instale com:

    ```R
    install.packages("jsonlite")
    install.packages("rlang")
    ```

- **Ambiente**: VSCode com a extensão VSCode-R (opcional) ou outro ambiente R (ex: RStudio).

- **Arquivos**: Certifique-se de que `agro_data.csv` e `analise_agro.R` estão na mesma pasta.

## Como Executar

1. Coloque os arquivos `agro_data.csv` e `analise_agro.R` na mesma pasta (ex: `C:\Users\User\Desktop\FIAP atividade 3`).

2. Abra o VSCode (ou outro ambiente R) e configure o diretório de trabalho:

   ```R
   setwd("C:/Users/User/Desktop/FIAP atividade 3")
   ```

3. Execute o script:

   ```R
   source("analise_agro.R")
   ```

4. Verifique os resultados:

   - No console: Medidas estatísticas (média, mediana, etc.).
   - Na pasta: Gráficos salvos como `histograma_producao.png`, `boxplot_producao.png` e `grafico_classificacao.png`.

## Interpretação dos Resultados

- **Medidas de Tendência Central**:
  - Média: Indica a produção média de soja em toneladas.
  - Mediana: Mostra o valor central da produção.
  - Moda: Identifica a produção mais frequente.
- **Medidas de Dispersão**:
  - Variância e Desvio Padrão: Indicam a variabilidade da produção.
  - Amplitude: Mostra a diferença entre a maior e a menor produção.
- **Medidas Separatrizes**:
  - Quartis: Dividem os dados em quatro partes (25%, 50%, 75%).
  - Decis: Dividem os dados em dez partes (10% a 90%).
- **Gráficos**:
  - **Histograma**: Mostra a distribuição da produção de soja, indicando se é simétrica ou assimétrica.
  - **Boxplot**: Identifica a dispersão, valores centrais e possíveis outliers na produção.
  - **Gráfico de Barras**: Apresenta a frequência das categorias de produtividade (Baixa, Média, Alta).

## Notas

- O arquivo `agro_data.csv` usa ponto e vírgula (`;`) como separador, por isso o código usa `read.csv2`.
- Os dados são fictícios, mas refletem padrões realistas da produção de soja no Brasil (ex: Mato Grosso como maior produtor).
- Certifique-se de que o caminho do arquivo `agro_data.csv` está correto no seu ambiente.

## Contato

Para dúvidas ou revisões, entre em contato com o aluno Yan Pimentel Cotta (RM: 562836) ou o professor responsável pela disciplina.
