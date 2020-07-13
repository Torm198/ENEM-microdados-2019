library(tidyverse)
library(readxl)



enem <-  read_xlsx('Dados/banco_enem.xlsx') %>% 
  mutate_at(vars(TP_SEXO:Q025),as.factor)


####
exploratoria <- function(x){
  if(is.numeric(x)){
    summary(x)
  }else{
    table(x)
  }
}



dados_exploratoria <- lapply(enem, summary)



openxlsx::write.xlsx(dados_exploratoria,'Exploratoria/Analise Exploratoria.xlsx')
