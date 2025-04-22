# FIAP - Faculdade de Informática e Administração Paulista

<p align="center">
<a href= "https://www.fiap.com.br/"><img src="assets/logo-fiap.png" alt="FIAP - Faculdade de Informática e Admnistração Paulista" border="0" width=40% height=40%></a>
</p>

<br>

# Análise Estatística de Dados do Agronegócio

## 👨‍🎓 Integrantes:
- <a href="https://www.linkedin.com/in/yan-cotta/">Yan Cotta</a>

## 👩‍🏫 Professores:
### Tutor(a)
- Lucas Gomes Moreira 
### Coordenador(a)
- André Godoi Chiovato

## Informações do Aluno

- **Nome**: Yan Pimentel Cotta
- **RM**: 562836
- **Fase**: 2
- **Capítulo**: 7

## Descrição do Projeto

Este projeto realiza uma análise estatística de dados do agronegócio brasileiro, focada na produção de soja em 30 estados e regiões do Brasil. A análise inclui a criação de uma base de dados com 30 linhas e 4 colunas, análise exploratória de uma variável quantitativa (Produção em toneladas) e análise gráfica de uma variável qualitativa (Classificação de Produtividade). O projeto foi desenvolvido em R e utiliza dados fictícios, mas realistas, baseados em fontes públicas como CONAB, IBGE, MAPA, Embrapa, INPE e CNA.

## Estrutura dos Arquivos
### Estrutura do Projeto

#### 📁 data
- **agro_data.csv**
  - Base de dados em formato CSV (30 linhas × 4 colunas)
  - Colunas:
    - `Estado`: Nome do estado/região (qualitativa nominal)
    - `Area Plantada (ha)`: Área cultivada em hectares (quantitativa contínua)
    - `Producao (toneladas)`: Quantidade produzida (quantitativa discreta)
    - `Classificacao de Produtividade`: Categorias "Baixa", "Média", "Alta" (qualitativa ordinal)
- **agro_data.xlsx**
  - Versão Excel da base de dados
  - Para visualização ou edição manual

#### 📁 src
- **analise_agro.R**
  - Script principal com:
    - Carregamento de dados
    - Análise exploratória de `Producao (toneladas)`
      - Medidas de tendência central
      - Medidas de dispersão
      - Medidas separatrizes
      - Análises gráficas
    - Análise gráfica de `Classificacao de Produtividade`

#### 📁 docs
- **histograma_producao.png**: Distribuição da produção
- **boxplot_producao.png**: Dispersão e outliers
- **grafico_classificacao.png**: Frequência das classificações

## Pré-requisitos

- **R**: Versão 4.0 ou superior instalada.

- **Pacotes R**: `jsonlite` e `rlang` (necessários para integração com VSCode-R).

  - Instale com:

    ```R
    install.packages("jsonlite")
    install.packages("rlang")
    ```

## Como Executar

1. Clone ou baixe este repositório para sua máquina local.

2. Abra o VSCode (ou outro ambiente R) e navegue até a pasta `src` do projeto:

   ```R
   setwd("caminho/para/projeto/fiap_atividade_fase2_cap7/src")
   ```

3. Execute o script:

   ```R
   source("analise_agro.R")
   ```

4. Verifique os resultados:

   - No console: Medidas estatísticas (média, mediana, etc.).
   - Na pasta `docs`: Os gráficos serão salvos automaticamente como:
     - `histograma_producao.png`
     - `boxplot_producao.png`
     - `grafico_classificacao.png`
   
Obs.: Não é necessário mover nenhum arquivo, pois o script já está configurado para acessar o arquivo CSV na pasta `data` e salvar os gráficos na pasta `docs` automaticamente.

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
