#criacao dos graficos

#grafico geral parelhas

ggplot(covidPAAS,aes(x=date,y=newCases)) + geom_line()

#mesmo grafico em barras

ggplot(covidPAAS,aes(x=date,y=newCases)) + geom_bar(stat = "identity")

#grafico casos totais parelhas

ggplot(covidPAAS,aes(x=date,y=totalCases)) + geom_bar(stat = "identity")

#grafico mortes totais parelhas

ggplot(covidPAAS,aes(x=date,y=deaths)) + geom_bar(stat = "identity")


#grafico casos totais para o ano de 2021

ggplot(covidPAAS2021,aes(x=date,y=totalCases))+geom_bar(stat = "identity")

#grafico casos totais para o ano de 2020

ggplot(covidPAAS2020,aes(x=date,y=totalCases))+geom_bar(stat = "identity")


#grafico ano de 2020 parelhas

ggplot(covidPAAS2020,aes(x=date,y=newCases)) + geom_line()

#grafico ano de 2021 parelhas

ggplot(covidPAAS2021,aes(x=date,y=newCases)) +geom_line()

#grafico mortes ano de 2021 parelhas

ggplot(covidPAAS2021,aes(x=date,y=deaths)) + geom_bar(stat = "identity")

#grafico novas mortes ano de 2021 parelhas

ggplot(covidPAAS2021,aes(x=date,y=newDeaths)) + geom_line()


#criacao grafico em linha novos casos mes de fevereiro 2021 parelhas

ggplot(paasfev21, aes(x =date,y= newCases)) + geom_line()

#criacao grafico em linha de novos casos mes de marco 2021 parelhas

ggplot(paasMarco21, aes(x =date,y= newCases)) + geom_line()

#mesmo grafico em barras

#ggplot(paasMarco21, aes(x =date,y= newCases)) + geom_bar(stat = "identity")

#criacao grafico em linha de novas mortes mes de marco 2021 parelhas
ggplot(paasMarco21, aes(x = date,y = newDeaths)) + geom_line()

#criacao grafico novos casos nacional
ggplot(covidNacional,aes(x=date,y=newCases))+geom_bar(stat = "identity")