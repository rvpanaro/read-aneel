read_aneel3 <- function(folder_path, sheet = "Base Dados", row = 6, col_names = NA, clean_names = T, distinct = T) {
  
  # Help! 
  ## folder_path : pasta que contém os arquivos em excel
  ## sheet : planilha que será lida
  ## row : linha referente ao cabeçalho (header) da tabela
  ## col_names : adiciona colunas - outras variáveis evenualmente desejadas - (se especificado)
  ## clean_names (TRUE/FALSE): transforma o nome das variáveis e atribui labels   
  ## distinct (TRUE/FALSE): Se TRUE elimina observações repetidas
  
  if(!require(readxl)){install.packages("readxl")}; 
  if(!require(dplyr)){install.packages("dplyr")}
  if(!require(janitor)){install.packages("janitor")}
  if(!require(data.table)){install.packages("data.table")}
  if(!require(zoo)){install.packages("zoo")}
  if(!require(sjlabelled)){install.packages("sjlabelled")}
  
  library(readxl); library(dplyr); library(janitor); library(sjlabelled)
  
  default_names <- c("Distribuidora - R$ Mil", "Período", "Referência", 
                     "Dívida Líquida + Regulatórios","EBITDA Ajst", "QRR",
                     "Fluxo do Acionista", "BRL Ajustada + IPCA", "% Dív Reg x BRL",
                     "DLR / EBITDA Ajst - QRR", "EBITDA Ajst / VPB Reg", "PMSO Ajustado / PMSO Regulatório",
                     "Capex U4/5A", "QRR U4/5A", "EBIT Ajst - EBIT Reg / BRL", 
                     "Setoriais Constituição / EBITDA Reg", "Fluxo Acionista / (BRL x Cap Próprio)",
                     "Perdas Realizadas", "DGC", "Perdas Regulatórias", "Mercado CAGR U5A",
                     "Nº CAGR U5A")
  
  ifelse(!is.na(col_names), col_names <- unique(c(col_names, default_names)), col_names <- default_names)
  
  # Get file path for all documents in the folder
  path_files <- list.files(folder_path, full.names = T, pattern = ".xlsx")
  
  # Read all files
  file_dump <- lapply(path_files, function(x) read_xlsx(path = x, sheet = sheet, skip = 5, col_names = T ))
  
  for(i in 1:length(path_files)){
    file_dump[[i]]$Arquivo <- path_files[i]
  }
  
  # Select columns in each dataframe
  selected_list <- lapply(file_dump, function(x) x[c("Arquivo", col_names)])
  result <- rbindlist(selected_list)
  
  # Date Handling
  yr <- substr(as.character(result$Período), 1, 4)
  mon <- substr(as.character(result$Período), 5, 6)
  result$Data <- as.yearmon(paste0(yr, "-", mon))           
  
  # Reorder columns
  order <- c(1, dim(result)[2], 2, 3:(dim(result)[2] - 1))
  setcolorder(result, order)
  
  # Clean column names (T/F)
  if(clean_names){
    labs <- names(result) 
    result <- clean_names(result) 
    colnames(result)[which(colnames(result) == "nº_cagr_u5a")] <- "n_cagr_u5a"
    result <- set_label(result, label = labs)
  }
  
  # Drops out repeated columns (T/F)
  if(distinct){
    result <- distinct(result, .keep_all = T)
  }
  
  # Remove duplicates
  return(result)
}
