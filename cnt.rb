#!/usr/bin/env ruby
# encoding: UTF-8

require 'date'
require "headless"
require "selenium-webdriver"
require "ibge"
require "hash_datas"

# Tabela 1620 -	Série encadeada do índice de volume trimestral (Base: média 1995 = 100)

def cnt_sas()

	site = "http://www.sidra.ibge.gov.br/bda/tabela/listabl.asp?z=t&o=15&i=P&c=1620"
	
	b = Selenium::WebDriver.for :firefox
	b.navigate.to site

	# setores e subsetores: tudo na coluna
	nome = 'opc11255'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	
	nome = 'poc11255'
	pos = 'Na coluna'
	b = selecao(b,nome,pos)

	# trimestre: tudo na linha
	nome = 'opp'
	pos = 'Tudo'
	b = selecao(b,nome,pos)

	nome = 'pop'
	pos = 'Na linha'
	b = selecao(b,nome,pos)
	
	# gravar
	gravar(b)
	
	# nome de arquivo
	nome_de_arquivo(b,"cnt_sas")
	
	# modalidade
	modalidade(b,"envie")
	
	# ok
	b.find_element(:name, "frmOpcao").submit
	b.close
	
end

# Tabela 1621 - 	Série encadeada do índice de volume trimestral com ajuste sazonal (Base: média 1995 = 100)

def cnt_cas()

	site = "http://www.sidra.ibge.gov.br/bda/tabela/listabl.asp?z=t&o=15&i=P&c=1621"
	
	b = Selenium::WebDriver.for :firefox
	b.navigate.to site

	# setores e subsetores: tudo na coluna
	nome = 'opc11255'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	nome = 'poc11255'
	pos = 'Na coluna'
	b = selecao(b,nome,pos)
	
	# datas
	nome = 'opp'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	nome = 'pop'
	pos = 'Na linha'
	b = selecao(b,nome,pos)

	# gravar
	gravar(b)
	
	# nome de arquivo
	nome_de_arquivo(b,"cnt_cas")
	
	# modalidade
	modalidade(b,"envie")
	
	# ok
	b.find_element(:name, "frmOpcao").submit
	b.close
	
end

# Tabela 1846 - Valores a preços correntes

def cnt_precos_correntes()

	site = "http://www.sidra.ibge.gov.br/bda/tabela/listabl.asp?z=t&o=15&i=P&c=1846"

	b = Selenium::WebDriver.for :firefox
	b.navigate.to site

	# setores e subsetores: tudo na coluna
	nome = 'opc11255'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	nome = 'poc11255'
	pos = 'Na coluna'
	b = selecao(b,nome,pos)
	
	# datas
	nome = 'opp'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	nome = 'pop'
	pos = 'Na linha'
	b = selecao(b,nome,pos)

	# gravar
	gravar(b)
	
	# nome de arquivo
	nome_de_arquivo(b,"cnt_precos_correntes")
	
	# modalidade
	modalidade(b,"envie")
	
	# ok
	b.find_element(:name, "frmOpcao").submit
	b.close
	
end


# Tabela 2072 -	Contas econômicas trimestrais

def cnt_contas_economicas()

	site = "http://www.sidra.ibge.gov.br/bda/tabela/listabl.asp?z=t&o=15&i=P&c=2072"

	b = Selenium::WebDriver.for :firefox
	b.navigate.to site
	
	# contas
	nome = 'opv'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	nome = 'pov'
	pos = 'Na coluna'
	b = selecao(b,nome,pos)
	
	# datas
	nome = 'opp'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	nome = 'pop'
	pos = 'Na linha'
	b = selecao(b,nome,pos)

	# gravar
	gravar(b)
	
	# nome de arquivo
	nome_de_arquivo(b,"cnt_contas_economicas")
	
	# modalidade
	modalidade(b,"envie")
	
	# ok
	b.find_element(:name, "frmOpcao").submit
	b.close
	
end


def cnt_conta_financeira()

	site = "http://www.sidra.ibge.gov.br/bda/tabela/listabl.asp?z=t&o=15&i=P&c=2205"
	
	b = Selenium::WebDriver.for :firefox
	b.navigate.to site

	# contas
	nome = 'opv'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	nome = 'pov'
	pos = 'Na coluna'
	b = selecao(b,nome,pos)
	
	# instrumento financeiro
	nome = 'opc12116'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	nome = 'poc12116'
	pos = 'Na coluna'
	b = selecao(b,nome,pos)
	
	# datas
	nome = 'opp'
	pos = 'Tudo'
	b = selecao(b,nome,pos)
	nome = 'pop'
	pos = 'Na linha'
	b = selecao(b,nome,pos)

	# gravar
	gravar(b)
	
	# nome de arquivo
	nome_de_arquivo(b,"cnt_conta_financeira")
	
	# modalidade
	modalidade(b,"envie")
	
	# ok
	b.find_element(:name, "frmOpcao").submit
	b.close
	
end

# +++++++
# RODA
# +++++++

cnt_sas()
cnt_cas()
cnt_precos_correntes()
cnt_contas_economicas()
#cnt_conta_financeira()
