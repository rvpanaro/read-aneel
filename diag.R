library(DiagrammeR)

# png('/img/diag.png')
grViz("
digraph boxes {
# add node statements
node[shape = box]
Type[label = ' Tipo de Dado ']; Categorical[label = 'Categórico'];Nominal; Ordinal; Numerical[label = 'Numérico'];

## add edge statements
edge[arrow = triangle]
Type -> Categorical; Type -> Numerical;Categorical -> Nominal; Categorical -> Ordinal

## add a graph statement
graph[nodestep = 1]
} 

[1]: 'Type'
[2]: 'Categorical'
[2]: 'Numerical'
")
# dev.off()
