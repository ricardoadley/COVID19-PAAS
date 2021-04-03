#essa analise utiliza o pacote tydiverse caso não o tenha instalado
#execute a linha abaixo
#install.packages("tidyverse")

#bibliotecas utilizadas
library(dplyr)
library(ggplot2)
library(readr)

#importação dados covid-19 nacionais
#os dados estão disponiveis no repositorio covid19br de wcota 
#nessa analise são utilizados os dados do inicio da pandemia ate 02/04/2021

covidNacional <- read_csv("cases-brazil-cities-time.csv")

#regulação dos dados para remover atualizações de casos negativas
#casos negativos foram substituidos por 0

covidNacional <- covidNacional %>%
  mutate_if(is.numeric,function(x){x[x < 0 ] <- 0;x})

#separação dos dados do estado do Rio grande do Norte

covidRN <- covidNacional %>%
  filter(stringr::str_detect(state,"RN"))

#separação dos dados do municipio de parelhas

covidPAAS <- covidRN %>%
  filter(stringr::str_detect(city,"Parelhas/RN"))

#separação dados mes de março 2021

#paasMarco21 <- covidPAAS %>%
  
  
