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

-   Variáveis Repetidas

<table style="width:97%;">
<colgroup>
<col width="45%" />
<col width="8%" />
<col width="8%" />
<col width="8%" />
<col width="8%" />
<col width="8%" />
<col width="9%" />
</colgroup>
<thead>
<tr class="header">
<th align="center"> </th>
<th align="center">A1</th>
<th align="center">A2</th>
<th align="center">A3</th>
<th align="center">A4</th>
<th align="center">A5</th>
<th align="center">Total</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="center"><strong>Outros</strong></td>
<td align="center">1</td>
<td align="center">5</td>
<td align="center">5</td>
<td align="center">6</td>
<td align="center">6</td>
<td align="center">23</td>
</tr>
<tr class="even">
<td align="center"><strong>(-) Provisão p/ Créditos de Liq. Duvidosa</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
<td align="center">6</td>
<td align="center">16</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ativos Financeiros</strong></td>
<td align="center">1</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">13</td>
</tr>
<tr class="even">
<td align="center"><strong>EBIT</strong></td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">12</td>
</tr>
<tr class="odd">
<td align="center"><strong>Tributos</strong></td>
<td align="center">0</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">12</td>
</tr>
<tr class="even">
<td align="center"><strong>Ciclo RTP - Anos</strong></td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">10</td>
</tr>
<tr class="odd">
<td align="center"><strong>DECApuradoAnual</strong></td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">10</td>
</tr>
<tr class="even">
<td align="center"><strong>DECLimiteAnual</strong></td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">10</td>
</tr>
<tr class="odd">
<td align="center"><strong>DGC</strong></td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">10</td>
</tr>
<tr class="even">
<td align="center"><strong>FECApuradoAnual</strong></td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">10</td>
</tr>
<tr class="odd">
<td align="center"><strong>FECLimiteAnual</strong></td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">10</td>
</tr>
<tr class="even">
<td align="center"><strong>Mercado CAGR U5A</strong></td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">10</td>
</tr>
<tr class="odd">
<td align="center"><strong>QRR U4/5A</strong></td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">10</td>
</tr>
<tr class="even">
<td align="center"><strong>Referência</strong></td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">10</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ativos Financeiros Setoriais</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">10</td>
</tr>
<tr class="even">
<td align="center"><strong>Consumidores</strong></td>
<td align="center">0</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">10</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dívida Bancária</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">10</td>
</tr>
<tr class="even">
<td align="center"><strong>Dívida Não Bancária</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">10</td>
</tr>
<tr class="odd">
<td align="center"><strong>Mútuos - Coligadas e Controladas ou Controladoras</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">10</td>
</tr>
<tr class="even">
<td align="center"><strong>Parcelamentos de Tributos</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">10</td>
</tr>
<tr class="odd">
<td align="center"><strong>Passivo Atuarial - Demais Benefícios Pós-Emprego</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">10</td>
</tr>
<tr class="even">
<td align="center"><strong>Passivo Atuarial - Previdência Privada</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">10</td>
</tr>
<tr class="odd">
<td align="center"><strong>Passivos Financeiros Setoriais</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">10</td>
</tr>
<tr class="even">
<td align="center"><strong>VPA - Renegociado</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">3</td>
<td align="center">10</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBITDA</strong></td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">9</td>
</tr>
<tr class="even">
<td align="center"><strong>PMSO Caixa</strong></td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">9</td>
</tr>
<tr class="odd">
<td align="center"><strong>RECEITA BRUTA</strong></td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">9</td>
</tr>
<tr class="even">
<td align="center"><strong>RECEITA LÍQUIDA</strong></td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">9</td>
</tr>
<tr class="odd">
<td align="center"><strong>(-) Provisão p/ Créditos de Liquidação Duvidosa</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>Concessionárias e Permissionárias</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>Consumidores a Receber</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>CVA e CDE</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>Da Parcela A</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>Depósitos Judiciais e Cauções</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>Despesas Pagas Antecipadamente</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>Fornecedores</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>Indenização pela Concessão a Receber</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>MATERIAIS - (-) Créd Trib Rec</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>MATERIAIS - Materiais</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>MATERIAIS - Outros</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>Obrigações Sociais e Trabalhistas e Benefícios</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>OUTROS - (-) Créd Trib Rec</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>OUTROS - Consumo Próprio</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>OUTROS - Inden Perdas e Danos</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>OUTROS - Taxa de Arrecadação</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>OUTROS - Taxas Bancárias</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>Outros Ativos Circulantes</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>Outros Não Ativos Circulantes</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>PESSOAL - (-) Créd Trib Rec</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>PESSOAL - Administradores</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>PESSOAL - Encargos</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>PESSOAL - Outros</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>PESSOAL - Outros Benef Corr</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>PESSOAL - PLR</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>PESSOAL - Prev Corr</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>PESSOAL - Remuneração</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>PESSOAL - Rescisórias</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>Provisão para Litígios</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>SEGUROS - (-) Créd Trib Rec</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>SEGUROS - Outros</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>SEGUROS - Seguros</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>TERCEIROS - (-) Créd Trib Rec</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>TERCEIROS - Terceiros</strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>TRIBUTOS - Tributos        </strong></td>
<td align="center">0</td>
<td align="center">4</td>
<td align="center">4</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">8</td>
</tr>
<tr class="odd">
<td align="center"><strong>Tributos Ativos</strong></td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">8</td>
</tr>
<tr class="even">
<td align="center"><strong>CUSTOS DA PARCELA A - VPA</strong></td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">7</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">7</td>
</tr>
<tr class="even">
<td align="center"><strong>PARCELA B</strong></td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">7</td>
</tr>
<tr class="odd">
<td align="center"><strong>PMSO</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">7</td>
</tr>
<tr class="even">
<td align="center"><strong>RESULTADO FINANCEIRO</strong></td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">7</td>
</tr>
<tr class="odd">
<td align="center"><strong>RESULTADO LÍQUIDO</strong></td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">7</td>
</tr>
<tr class="even">
<td align="center"><strong>VPB</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">7</td>
</tr>
<tr class="odd">
<td align="center"><strong>(-) Recuperação de Despesas</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="even">
<td align="center"><strong>Arrendamentos e Aluguéis</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="odd">
<td align="center"><strong>Benefício Pós-Emprego - Previdência Privada - Déficit ou Superávit Atuarial</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="even">
<td align="center"><strong>Energia Comprada para Revenda</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="odd">
<td align="center"><strong>Programa de Demissão Voluntária - PDV</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="even">
<td align="center"><strong>Provisão para Devedores Duvidosos</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="odd">
<td align="center"><strong>Provisão para Litígios Ambientais (2015 em diante)</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="even">
<td align="center"><strong>Provisão para Litígios Cíveis</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="odd">
<td align="center"><strong>Provisão para Litígios Fiscais</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="even">
<td align="center"><strong>Provisão para Litígios Regulatórios (2015 em diante)</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="odd">
<td align="center"><strong>Provisão para Litígios Trabalhistas</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="even">
<td align="center"><strong>Provisão para Outros (2015 em diante)</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="odd">
<td align="center"><strong>Provisão para Outros (até 2015)</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="even">
<td align="center"><strong>Provisão para Red. Vlr Rec. (2015 em diante)</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="odd">
<td align="center"><strong>Tributos em Atraso</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="even">
<td align="center"><strong>TRIBUTOS SOBRE A RECEITA</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="odd">
<td align="center"><strong>VPA - Corrente Vencido</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">6</td>
</tr>
<tr class="even">
<td align="center"><strong>(1) - (4)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>(1) Perdas não técnicas sobre a energia injetada (Real)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>(2) - (5)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>(2) Perdas técnicas sobre a energia injetada (Real)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>(3) - (6)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>(3) / (6) -1</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>(3) Perdas sobre a energia injetada (Real) (1) + (2)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>(4) Perdas não técnicas sobre a energia injetada (Regulatório)</strong>*</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>(5) Perdas técnicas sobre a energia injetada (Regulatório)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>(6) Perdas sobre a energia injetada (Regulatório) (5) + (6)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>% Dív Reg x BRL</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Afacs</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Alavancagem Incremental DLR / EBITDA (máx Reg/Ajst) - QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ano</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Aportes</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ativos Financeiros + Setoriais</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Ativos Financeiros Bancários CP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>BRB qdo da RTP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>BRL Ajustada + IPCA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>BRL qdo da RTP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>BRL/BRB qdo da RTP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Capex Realizado</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Capex U4/5A</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Consumidores CAGR U5A</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Conversão de Mútuos</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto U4/5A: AIS</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto U4/5A: AIS - OEAIS</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto U4/5A: AIS - OEAIS / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto U4/5A: AIS - OEAIS / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto U4/5A: AIS - OEAIS / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto U4/5A: AIS / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto U4/5A: AIS / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto U4/5A: AIS / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto U4/5A: AIS + AIC</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto U4/5A: AIS + AIC - OEAIS - OEAIC</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto U4/5A: AIS + AIC - OEAIS - OEAIC / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto U4/5A: AIS + AIC - OEAIS - OEAIC / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto U4/5A: AIS + AIC - OEAIS - OEAIC / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto U4/5A: AIS + AIC / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto U4/5A: AIS + AIC / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto U4/5A: AIS + AIC / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto: AIS</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto: AIS - OEAIS</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto: AIS - OEAIS / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto: AIS - OEAIS / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto: AIS - OEAIS / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto: AIS / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto: AIS / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto: AIS / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto: AIS + AIC</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto: AIS + AIC - OEAIS - OEAIC</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto: AIS + AIC - OEAIS - OEAIC / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto: AIS + AIC - OEAIS - OEAIC / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto: AIS + AIC - OEAIS - OEAIC / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto: AIS + AIC / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Bruto: AIS + AIC / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Bruto: AIS + AIC / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq U4/5A: AIS</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq U4/5A: AIS - OEAIS</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq U4/5A: AIS - OEAIS / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq U4/5A: AIS - OEAIS / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq U4/5A: AIS - OEAIS / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq U4/5A: AIS / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq U4/5A: AIS / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq U4/5A: AIS / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq U4/5A: AIS + AIC</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq U4/5A: AIS + AIC - OEAIS - OEAIC</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq U4/5A: AIS + AIC - OEAIS - OEAIC / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq U4/5A: AIS + AIC - OEAIS - OEAIC / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq U4/5A: AIS + AIC - OEAIS - OEAIC / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq U4/5A: AIS + AIC / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq U4/5A: AIS + AIC / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq U4/5A: AIS + AIC / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq: AIS</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq: AIS - OEAIS</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq: AIS - OEAIS / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq: AIS - OEAIS / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq: AIS - OEAIS / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq: AIS / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq: AIS / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq: AIS / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq: AIS + AIC</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq: AIS + AIC - OEAIS - OEAIC</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq: AIS + AIC - OEAIS - OEAIC / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq: AIS + AIC - OEAIS - OEAIC / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq: AIS + AIC - OEAIS - OEAIC / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq: AIS + AIC / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Cpx Líq: AIS + AIC / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Cpx Líq: AIS + AIC / QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Data</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DEC Apurado / Limite</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Distribuidora - R$ Mil</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Dív Banc / Dívida Bruta</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dív Banc CP / Ativos Finan. Banc. CP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Dív Banc CP / Ativos Finan. Banc. CP + EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dív Banc CP / Ativos Finan. Banc. CP + EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Dív Banc CP / Dívida Bruta</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dív Banc CP / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Dív Banc CP / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dívida Bruta</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Dívida Bruta + Regulatórios</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dívida Bruta Curto Prazo</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Dívida CP / Ativos Finan. CP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dívida CP / Ativos Finan. CP + EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Dívida CP / Ativos Finan. CP + EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dívida CP / Dívida Bruta</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Dívida CP / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dívida CP / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Dívida Líquida</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dívida Líquida + Regulatórios</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Dívida Líquida Bancária</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dívida Líquida Bancária CP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DL / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>DL / EBITDA - Cpx</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DL / EBITDA - QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>DL / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DL / EBITDA Ajst - Cpx</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>DL / EBITDA Ajst - QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DLB / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>DLB / EBITDA - Cpx</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DLB / EBITDA - QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>DLB / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DLB / EBITDA Ajst - Cpx</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>DLB / EBITDA Ajst - QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DLR / (% Dív Reg x BRL)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>DLR / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DLR / EBITDA - Cpx</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>DLR / EBITDA - QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DLR / EBITDA - QRR Máx</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>DLR / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>DLR / EBITDA Ajst - Cpx</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>DLR / EBITDA Ajst - QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>EBIT / EBIT Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBIT Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>EBIT Ajst - EBIT Reg / BRL</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBIT Ajst / BRL</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>EBIT Ajst / EBIT Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBIT Reg / BRL</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>EBITDA / EBITDA Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBITDA / VPB</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>EBITDA / VPB Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBITDA Ajst / EBITDA Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>EBITDA Ajst / VPB</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBITDA Ajst / VPB Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>EBITDA Ajst U4/5A</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBITDA U4/5A</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Emissão de Ações</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>FEC Apurado / Limite</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Fluxo Acionista / (BRL x Cap Próprio)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Fluxo Acionista / Capex</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Fluxo Acionista / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Fluxo Acionista / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Fluxo Acionista / Res. Líquido</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Fluxo do Acionista</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>IGP-M - geral - índice (ago. 1994 = 100)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Inadimpl / VPA Realizado</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Inadimplên- cia Setorial</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>IPCA - geral - índice (dez. 1993 = 100)</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Margem EBIT</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Margem EBIT Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Margem EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Margem EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Margem Líquida</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Mercado - GWh</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Mercado GWh</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Mercado GWh Variação</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Nº CAGR U5A</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Nº Clientes</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Nº Clientes - Mil</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Nº Clientes Variação</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Perdas Realizadas</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Perdas Regulatórias</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Período</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>PMSO / PMSO Regulatório</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>PMSO Ajustado / PMSO Regulatório</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>PMSO Realizado U4/5A</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>PMSO Regulatório U4/5A</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Proventos</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>QRR</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>QRR p/ Contrato</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>QRR sem 70% Caimi</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>QRR sem 70% Caimi U4/5A</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Res Fin / EBITDA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Res Fin / EBITDA Ajst</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>ROL</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Setoriais Amortização</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Setoriais Amortização / EBITDA Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Setoriais Constituição</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Setoriais Constituição / EBITDA Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>Setoriais Total</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>Setoriais Total / EBITDA Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>VPA</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>VPA / Rec Bruta</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>VPA / Rec Líq</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>VPA / VPA Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>VPA Reg / Rec Líq Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>VPB / Rec Bruta</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>VPB / Rec Líq</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>VPB / VPB Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="odd">
<td align="center"><strong>VPB Reg / Rec Líq Reg</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">5</td>
</tr>
<tr class="even">
<td align="center"><strong>(-) Provisão p/ Ajuste de Recuperação de Ativos</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Aquisição de Combustíveis por Conta da CCC/CDE</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Aquisição de Combustíveis Por Conta da CCC/CDE</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>ATIVO</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Ativos Financeiros Outros</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Bens - Relacionados ao AIS</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Bens - Relacionados ao AIS e Intangível</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Caixa e Equivalentes de Caixa + Swaps</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Capital Social</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>CIRCULANTE</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Depreciação + Amortização</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Despesas Financeiras</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Despesas Rescisórias</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dívida CP</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Dívida LP</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Doações, Contribuições e Subvenções</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Encargos de Transmissão, Conexão e Distribuição</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Encargos Setoriais</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Imobilizado</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Indenização por Perdas e Danos</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Intangível</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Matéria-Prima e Insumos para Produção de Energia Elétrica</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Materiais</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Mútuos</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>NÃO CIRCULANTE</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Obrigações Especiais</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>OPERAÇÕES DESCONTINUADAS</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Outros Ativos</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Outros Passivos Circulantes</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Outros Passivos Não Circulantes</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Outros VPA</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Participação nos Lucros e Resultados - PLR</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Participações Societárias Permanentes</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>PASSIVO</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>PASSIVO A DESCOBERTO</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>PASSIVO CIRCULANTE</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>PASSIVO NÃO CIRCULANTE</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>PATRIMÔNIO LÍQUIDO</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Penalidades Contratuais e Regulatórias</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Perdas na Alienação e Desativação de Bens e Direitos</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>PMSO Cxa Ajst Sem Aluguéis e Provisões</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Provisões</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Receitas Financeiras</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Reservas e Outros</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Resultado Acumulado</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>RESULTADO DE EQUIVALÊNCIA PATRIMONIAL</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>RESULTADO DO EXERCÍCIO ANTES DA CONTRIBUIÇÃO SOCIAL E DO IMPOSTO DE RENDA</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Seguros</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Serviços de Terceiros</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>TRIBUTOS SOBRE A RENDA</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Ajst (-) Recuperação de Despesas</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ajst Benefício Pós-Emprego - Previdência Privada - Déficit ou Superávit Atuarial</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Ajst Outros Benefícios Pós-Emprego - Déficit ou Superávit Atuarial</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ajst Programa de Demissão Voluntária - PDV</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Ajst Provisão para Devedores Duvidosos</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ajst Provisão para Litígios Ambientais (2015 em diante)</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Ajst Provisão para Litígios Cíveis</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ajst Provisão para Litígios Fiscais</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Ajst Provisão para Litígios Regulatórios (2015 em diante)</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ajst Provisão para Litígios Trabalhistas</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Ajst Provisão para Outros (2015 em diante)</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ajst Provisão para Outros (até 2015)</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Ajst Provisão para Red. Vlr Rec. (2015 em diante)</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Corrente</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Diferido</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBIT + Não Operacionais MCSE até 2014</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>EBIT Ajst Sem Aluguéis</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Outras Receitas</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Outros Benefícios Pós-Emprego - Déficit ou Superávit Atuarial</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>ROL Geração</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="even">
<td align="center"><strong>Total Ajustes</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
<td align="center">2</td>
<td align="center">4</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ativos Financeiros CP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">3</td>
</tr>
<tr class="even">
<td align="center"><strong>Ativos Financeiros Setoriais CP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">3</td>
</tr>
<tr class="odd">
<td align="center"><strong>Ativos Financeiros Setoriais LP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">3</td>
</tr>
<tr class="even">
<td align="center"><strong>Dívida Bruta Bancária</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">3</td>
</tr>
<tr class="odd">
<td align="center"><strong>Dívida Bruta Bancária CP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">3</td>
</tr>
<tr class="even">
<td align="center"><strong>Passivos Financeiros Setoriais CP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">3</td>
</tr>
<tr class="odd">
<td align="center"><strong>Passivos Financeiros Setoriais LP</strong></td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">3</td>
</tr>
<tr class="even">
<td align="center"><strong>PMSO Caixa Ajst</strong></td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">3</td>
</tr>
<tr class="odd">
<td align="center"><strong>OUTROS - Conselho Consum</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Outros Correntes + Administradores</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Pessoal + Adm</strong></td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>(-) Créditos de Tributos Recuperáveis</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>(-) Tributos e Contribuições sobre Receitas Não Operacionais</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>(-) Tributos sobre a Receita</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Administradores</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Ano Civil Anterior</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Caixa e Equivalentes de Caixa</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Contribuição Social</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>CUSTOS DA PARCELA B</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Custos Perdas Excesso</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Desp. Cxa Ajst da Geração s/ Arrend/Alug</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Despesa Caixa Ajst Geração s/ Arrend/Alug</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Despesa Cxa s/ Geração e s/ Arrend</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Disponibilidades</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>DL / EBITDA Ajst2</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>DL / EBITDA Ajst2 - QRR</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>DLB / EBITDA Ajst2</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>DLB / EBITDA Ajst2 - QRR</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>DLR / EBITDA Ajst2</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>DLR / EBITDA Ajst2 - QRR</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>EBITDA Ajst Sem Aluguéis</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>EBITDA Sem Aluguéis</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Encargos</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Energia Elétrica de Curto Prazo</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Estaduais</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Federais</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Fornecimento</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Imposto de Renda</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Instrumentos Financeiros Derivativos</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Municipais</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Outras Receitas 6111+671</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Outras Receitas Operacionais</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Outros Benefícios - Corrente</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Participações e Contribuições</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Período Anterior</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Pessoal</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>PMSO Ajst</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>PMSO Ajst Sem Aluguéis</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>PMSO Cxa Ajst</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>PMSO Cxa Ajst s/ Ger/Aluguéis/Provisões</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>PMSO Cxa Ajst s/ Geração/ Arrend/Alug</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>PMSO Cxa Ajst Sem Provisões</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Previdência Privada - Corrente</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>RB 6101</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>RB 6101 (-) Trib 6101.X.30</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Receita - Ativos e Passivos Financeiros Setoriais</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Receita de Uso da Rede de Transmissão</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Remuneração</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Resultado Líquido</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Reversão dos Juros sobre o Capital Próprio</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>ROLg + VPB Reg (Δ GWh) +Orec - Perdas Excesso - PMSO Cxa Ajst</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Suprimento</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>Tarifa de Uso do Sistema de Distribuição - TUSD</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Trib 6101.X.30</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>VPB Reg x (Δ Mercado), se Δ &gt; 0</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>VPB s/ Orec</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="odd">
<td align="center"><strong>VPB s/ Orec Reg + ORec + VPB Reg x Δ Mercado +/- Perdas</strong></td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">0</td>
<td align="center">1</td>
<td align="center">1</td>
<td align="center">2</td>
</tr>
<tr class="even">
<td align="center"><strong>Total</strong></td>
<td align="center">241</td>
<td align="center">471</td>
<td align="center">471</td>
<td align="center">496</td>
<td align="center">496</td>
<td align="center">2175</td>
</tr>
</tbody>
</table>

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
# dt <- read.csv("dados_last_not_na.csv")
```

-   Histogramas das variáveis.
-   Correlograma - Elipse.
-   Série temporal das variáveis selecionadas para a Cemig.
