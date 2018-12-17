read\_aneel
================

Análise exploratória da base de dados do relatório de indicadores de
====================================================================

sustentatibilidade econômico-financeiros - ANEEL

Dada a necessidade de sistematização do monitoramento econômico-financeiro, a ANEEL compila uma base de dados com variáveis financeiras e operacionais das empresas distribuidoras de energia elétrica. As bases estão presentes em cinco arquivos .xlsx e apresentam dados anuais para cada empresa até 2016 e trimestrais desde então.

Embora a base de dados tenha um grande número de variáveis disponíveis, os indicadores selecionados pela 5a Edição do Relatório de Indicadores de Sustentabilidade Econômico-Financeira das Distribuidoras (pg 28):

![](./img/indicadores.png)

Análise de consistência
-----------------------

-   Mais de uma variável com o mesmo nome.
-   Tabela de contingência do número de variáveis selecionadas por tabela.
-   Mesma entrada com valores diferentes em anos diferentes.
-   Exemplo da Cemig.

Análise descritiva
------------------

Prosseguiremos agora para a análise descritiva da base de dados. Numa tentativa de contornar os problemas previamente citados, assumimos algumas premissas:

-   Os dados mais recentes são mais confiáveis e serão utilizados quando houver valores repetidos para uma determinada entrada no banco de dados.
-   Quando o valor não estiver disponível (NA) na base mais recente, a última entrada válida será considerada.
-   A primeira coluna com um determinado nome de variável será selecionada.

``` r
dt <- read.csv("dados_last_not_na.csv")
```

-   Histogramas das variáveis.
-   Correlograma - Elipse.
-   Série temporal das variáveis selecionadas para a Cemig.
