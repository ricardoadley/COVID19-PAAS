
#essa analise utiliza o pacote tydiverse caso não o tenha instalado
#execute a linha abaixo
#install.packages("tidyverse")

#bibliotecas utilizadas
library(dplyr)
library(ggplot2)
library(readr)

#importacao dados covid-19 nacionais
#os dados estao disponiveis no repositorio covid19br de wcota 
#nessa analise sao utilizados os dados do inicio da pandemia ate 02/04/2021

#arquivo com tamanho superior ao aceito pelo git, baixe a 
#versao mais recente no repositorio do wcota (https://github.com/wcota/covid19br)
#o arquivo esta como um .gz 'cases-brazil-cities-time.csv.gz'(https://github.com/wcota/covid19br/blob/master/cases-brazil-cities-time.csv.gz) apos o download
#descompacte e mova para a pasta do repositorio

#importacao dos dados nacionais a partir do arquivo baixado

covidNacional <- read_csv("cases-brazil-cities-time.csv") 

#regulacao dos dados para remover atualizacoes de casos negativas
#casos negativos foram substituidos por 0

covidNacional <- covidNacional %>%
  mutate_if(is.numeric,function(x){x[x < 0 ] <- 0;x})

#separacao dos dados do estado do Rio grande do Norte

covidRN <- covidNacional %>%
  filter(stringr::str_detect(state,"RN"))

covidRN <- covidRN %>%
  mutate(city=tolower(iconv(city,from="UTF-8",to="ASCII//TRANSLIT")))

#separacao dos dados do municipio de parelhas

covidPAAS <- covidRN %>%
  filter(stringr::str_detect(city,"parelhas/rn"))

#separacao ano de 2020 parelhas

covidPAAS2020 <- covidPAAS %>%
  filter(stringr::str_detect(date,"2020"))

#separacao ano de 2021 parelhas

covidPAAS2021 <- covidPAAS %>%
  filter(stringr::str_detect(date,"2021"))

#separacao dados mes de marco 2021

paasMarco21 <- covidPAAS %>%
  filter(stringr::str_detect(date,"2021-03"))

#separacao dados mes de marco 2020

paasfev21 <- covidPAAS %>%
  filter(stringr::str_detect(date,"2021-02"))





