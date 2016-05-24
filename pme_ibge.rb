#!/usr/bin/env ruby
# encoding: UTF-8

require 'date'
require "selenium-webdriver"
require "ibge"
require "hash_datas"

# Tabela 2189 - Rendimento m�dio e mediano nominal do trabalho principal, habitualmente recebido por m�s, 
# pelas pessoas de 10 anos ou mais de idade, ocupadas no trabalho principal da semana de refer�ncia

def pme_rendimento_nominal()
	
	site = "http://www.sidra.ibge.gov.br/bda/tabela/listabl.asp?c=2189&z=t&o=16"
	
	b = Selenium::WebDriver.for :firefox
	b.navigate.to site

	# m�dia, coeficiente de varia��o e mediana
	nome = 'opv'
	pos = 'Tudo'
	b = selecao(b,nome,pos)

	# m�s: tudo
	nome = 'opp'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	# m�s: na linha
	nome = 'pop'
	pos = 'Na linha'
	b = selecao(b,nome,pos)

	# regi�es metropolitanas
	nome = 'opn7'
	pos = 'Tudo'
	b = selecao(b,nome,pos)

	# gravar
	gravar(b)
	
	# nome do arquivo
	nome_de_arquivo(b,"pme_rendimento_nominal")
	
	# modalidade
	modalidade(b,"envie")
	
	# ok
	b.find_element(:name, "frmOpcao").submit

	b.close
end

# Tabela 2190 - 	Rendimento m�dio e mediano real do trabalho principal, habitualmente recebido por m�s, 
# pelas pessoas de 10 anos ou mais de idade, empregadas do setor p�blico, no trabalho principal da semana de refer�ncia

def pme_rendimento_real()
	
	site = "http://www.sidra.ibge.gov.br/bda/tabela/listabl.asp?c=2190&z=t&o=16"
	
	b = Selenium::WebDriver.for :firefox
	b.navigate.to site
	
	# m�dia, coeficiente de varia��o e mediana
	nome = 'opv'
	pos = 'Tudo'
	b = selecao(b,nome,pos)

	# m�s: tudo
	nome = 'opp'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	# m�s: na linha
	nome = 'pop'
	pos = 'Na linha'
	b = selecao(b,nome,pos)

	# regi�es metropolitanas
	nome = 'opn7'
	pos = 'Tudo'
	b = selecao(b,nome,pos)

	# gravar
	gravar(b)
	
	# nome do arquivo
	nome_de_arquivo(b,"pme_rendimento_real")
	
	# modalidade
	modalidade(b,"envie")
	
	# ok
	b.find_element(:name, "frmOpcao").submit
	
	b.close
		
end

# Tabela 2040 - 	Pessoas de 10 anos ou mais de idade, total , economicamente ativas e n�o economicamente ativas 
# na semana de refer�ncia por sexo

def pme_ativas_por_sexo()
	
	site = "http://www.sidra.ibge.gov.br/bda/tabela/listabl.asp?c=2040&z=t&o=16"
	
	b = Selenium::WebDriver.for :firefox
	b.navigate.to site
	
	# vari�veis: todas
	nome = 'opv'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	
	# homem ou mulher
	[0,1].each do |i|
	

		# m�s: tudo
		nome = 'opp'
		pos = 'Tudo'
		b = selecao(b,nome,pos)
		# m�s: na linha
		nome = 'pop'
		pos = 'Na linha'
		b = selecao(b,nome,pos)

		# regi�es metropolitanas
		nome = 'opn7'
		pos = 'Tudo'
		b = selecao(b,nome,pos)

		# gravar
		gravar(b)
		
		# nome do arquivo
		nome_de_arquivo(b,"pme_rendimento_real")
		
		# modalidade
		modalidade(b,"envie")
		
		# ok
		b.find_element(:name, "frmOpcao").submit
	
		end

	b.close

end

# +++++++
# RODA
# +++++++

pme_rendimento_nominal()
pme_rendimento_real()
pme_ativas_por_sexo()
