read\_aneel
================

Análise exploratória da base de dados do relatório de indicadores de
====================================================================

sustentatibilidade econômico-financeiros - ANEEL

Dada a necessidade de sistematização do monitoramento econômico-financeiro, a ANEEL compila uma base de dados com variáveis financeiras e operacionais das empresas distribuidoras de energia elétrica. As bases estão presentes em cinco arquivos .xlsx e apresentam dados anuais para cada empresa até 2016 e trimestrais desde então. Embora a base de dados tenha um grande número de variáveis disponíveis, os indicadores selecionados pela 5a Edição do Relatório de Indicadores de Sustentabilidade Econômico-Financeira das Distribuidoras (pg 28):

![](./img/indicadores.png)

Análise de consistência
-----------------------

A verificação de consistência é uma avaliação realizada para indicar se os dados apresentados apresentam algum conflito interno ou incoerência. Nesse sentido, esta seção tem como objetivo averiguar a qualidade e relatar problemas ou erros no conjunto de dados fornecido pela ANEEL.

-   Número de VaripaveisVariáveis Repetidas

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
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
library(ggplot2)

dt <- read.csv("dados_last_not_na.csv")

dt_sel <- dt %>% 
  select(dlr_ebitda_ajst_qrr, ebitda_ajst_vpb_reg, pmso_ajustado_pmso_regulatorio,
         capex_u4_5a, ebit_ajst_ebit_reg_brl, setoriais_constituicao_ebitda_reg,
         fluxo_acionista_brl_x_cap_proprio, dgc, perdas_realizadas, perdas_regulatorias,
         mercado_cagr_u5a, n_cagr_u5a) %>% 
  mutate(dlr_ebitda_ajst_qrr = as.numeric(replace(dlr_ebitda_ajst_qrr, 
                                                  dlr_ebitda_ajst_qrr 
                                                  %in% c("Ebitda Neg", "Flx Neg", 
                                                         "Cxa Líq"), NA))) %>% 
  mutate(fluxo_acionista_brl_x_cap_proprio = as.numeric(replace(fluxo_acionista_brl_x_cap_proprio,
                                                                fluxo_acionista_brl_x_cap_proprio 
                                                                %in% c("0 / +", "- / +"), NA)))
```

A base de dados apresenta as 11 variáveis selecionadas no documento da ANEEL. As variáveis perdas realizadas e perdas regulatórias presentes no indicador 6.2 são apresentadas como duas variáveis separadas. As variáveis apresentam um grande número de valores faltantes, como mostrado na tabela abaixo.

> Adicionar gráfico de faltantes.

### Endividamento

``` r
ggplot(dt_sel, aes(dlr_ebitda_ajst_qrr)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Endividamento", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/endividamento-1.png)

### Eficiência

``` r
ggplot(dt_sel, aes(ebitda_ajst_vpb_reg)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Eficiência (2.1)", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/ef-1-1.png)

``` r
ggplot(dt_sel, aes(pmso_ajustado_pmso_regulatorio)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Eficiência (2.2)", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/ef-2-1.png)

### Investimentos

``` r
ggplot(dt_sel, aes(capex_u4_5a)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Investimetos", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/investimentos-1.png)

### Rentabilidade

``` r
ggplot(dt_sel, aes(ebit_ajst_ebit_reg_brl)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Rentabilidade (4.1)", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/rentabilidade-1.png)

``` r
ggplot(dt_sel, aes(setoriais_constituicao_ebitda_reg)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Rentabilidade (4.2)", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/rentabilidade-2-1.png)

### Retorno ao acionista

``` r
ggplot(dt_sel, aes(fluxo_acionista_brl_x_cap_proprio)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Retorno ao acionista", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/acionista-1.png)

### Operacional

``` r
ggplot(dt_sel, aes(dgc)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Operacional (6.1)", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/dgc-1.png)

``` r
ggplot(dt_sel, aes(perdas_realizadas)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Operacional (6.2.1)", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/perdas-1-1.png)

``` r
ggplot(dt_sel, aes(perdas_regulatorias)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Operacional (6.2.2)", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/perdas-2-1.png)

``` r
ggplot(dt_sel, aes(mercado_cagr_u5a)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Operacional (6.3)", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/mercado-1.png)

``` r
ggplot(dt_sel, aes(n_cagr_u5a)) +
  geom_histogram(bins = 10, na.rm = T, fill = "lightblue", color = "white") +
  labs(x = "Operacional (6.4)", y = "Frequência") +
  theme_light()
```

![](README_files/figure-markdown_github/consumidores-1.png)

### Correlograma

``` r
cor_matrix <- cor(dt_sel, use = "complete.obs")
colnames(cor_matrix) <- c("endiv", "efic 2.1", "efic 2.2", "invest", "renta 4.1",
                          "renta 4.2.", "acion", "opera 6.1", "opera 6.2.1",
                          "opera 6.2.2", "opera 6.3", "opera 6.4")
rownames(cor_matrix) <- c("endiv", "efic 2.1", "efic 2.2", "invest", "renta 4.1",
                          "renta 4.2.", "acion", "opera 6.1", "opera 6.2.1",
                          "opera 6.2.2", "opera 6.3", "opera 6.4")

ord <- order(cor_matrix[1,])
xc <- cor_matrix[ord, ord]

ellipse::plotcorr(xc, col=cm.colors(12)[5*xc + 6], type = "lower", diag = TRUE)
```

![](README_files/figure-markdown_github/correlogram-1.png)

### Séries temporais para a cemig

``` r
dt_cemig <- dt %>% 
  select(dlr_ebitda_ajst_qrr, ebitda_ajst_vpb_reg, pmso_ajustado_pmso_regulatorio,
         capex_u4_5a, ebit_ajst_ebit_reg_brl, setoriais_constituicao_ebitda_reg,
         fluxo_acionista_brl_x_cap_proprio, dgc, perdas_realizadas, perdas_regulatorias,
         mercado_cagr_u5a, n_cagr_u5a, distribuidora_r_mil, periodo) %>% 
  mutate(dlr_ebitda_ajst_qrr = as.numeric(replace(dlr_ebitda_ajst_qrr, 
                                                  dlr_ebitda_ajst_qrr 
                                                  %in% c("Ebitda Neg", "Flx Neg", 
                                                         "Cxa Líq"), NA))) %>% 
  mutate(fluxo_acionista_brl_x_cap_proprio = as.numeric(replace(fluxo_acionista_brl_x_cap_proprio,
                                                                fluxo_acionista_brl_x_cap_proprio 
                                                                %in% c("0 / +", "- / +"), NA))) %>% 
  filter(distribuidora_r_mil == "Cemig-D") %>% 
  select(-distribuidora_r_mil)
```

> Set periodo to datetime
