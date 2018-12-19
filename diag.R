library(DiagrammeR)

# png('/img/diag.png')
grViz("
digraph boxes {
# add node statements
node[shape = box]
Type[label = ' Tipo de Variável ']; Categorical[label = ' Categórico '];
Nominal; Ordinal; Numerical[label = ' Numérico ']; 
Discrete[label = ' Discreto ']; Continuous[label = ' Contínuo '] 

## add edge statements
edge[arrow = triangle]
Type -> Categorical; Type -> Numerical;Categorical -> Nominal; 
Categorical -> Ordinal; Numerical -> Continuous; Numerical -> Discrete 

## add a graph statement
graph[nodestep = 1]
} 

[1]: 'Type'
[2]: 'Categorical'
[2]: 'Numerical'
")
# dev.off()
