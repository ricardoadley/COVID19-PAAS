#essa analise utiliza o pacote tydiverse caso n�o o tenha instalado
#execute a linha abaixo
#install.packages("tidyverse")

#bibliotecas utilizadas
library(dplyr)
library(ggplot2)
library(readr)

#importa��o dados covid-19 nacionais
#os dados est�o disponiveis no repositorio covid19br de wcota 
#nessa analise s�o utilizados os dados do inicio da pandemia ate 02/04/2021

covidNacional <- read_csv("cases-brazil-cities-time.csv")

#regula��o dos dados para remover atualiza��es de casos negativas
#casos negativos foram substituidos por 0

covidNacional <- covidNacional %>%
  mutate_if(is.numeric,function(x){x[x < 0 ] <- 0;x})

#separa��o dos dados do estado do Rio grande do Norte

covidRN <- covidNacional %>%
  filter(stringr::str_detect(state,"RN"))

#separa��o dos dados do municipio de parelhas

covidPAAS <- covidRN %>%
  filter(stringr::str_detect(city,"Parelhas/RN"))

#separa��o dados mes de mar�o 2021

#paasMarco21 <- covidPAAS %>%
  
  