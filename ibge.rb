#!/usr/bin/env ruby
# encoding: ISO-8859-1

require 'date'
require "selenium-webdriver"

# seleção básica

def selecao(b,nome,pos)
	b.find_element(:xpath, "//select[@name='#{nome}']/option[contains(text(),'#{pos}')]").click	
	return b
end

# radio buttom: gravar

def gravar(b)
	b.find_element(:xpath, "//input[@name='proc' and @value='2']").click
	return b
end

# nome de arquivo

def nome_de_arquivo(b,nome_arquivo)
	b.find_element(:name,'arquivo').send_keys nome_arquivo
	return b
end

# modalidade: "Imediata", "A posteriori (", "A posteriori e notifique-me","A posteriori e envie-me",

def modalidade(b,modalidade)
	b.find_element(:xpath, "//select[@name='modalidade']/option[contains(text(),'#{modalidade}')]").click
	if modalidade =~ /notifique|envie/
		b.find_element(:name, "email").send_keys 'grafitiapp@gmail.com'
	end
	return b
end

# --------------------------------------------------------------------------------
#                               funções específicas para cada série
# --------------------------------------------------------------------------------

def pme()
	
	sites = [
		["http://www.sidra.ibge.gov.br/bda/tabela/listabl.asp?c=2181&z=t&o=16","_real_do_trabalho"],
		["http://www.sidra.ibge.gov.br/bda/tabela/listabl.asp?c=2189&z=t&o=16","_nominal_do_trabalho"]
	]
	
	b = Selenium::WebDriver.for :firefox
	
	(0..sites.size-1).each do |i|
		
		b.navigate.to sites[i][0]
		# variável
		b = selecao(b,'opv','Tudo')	
		# datas
		b = selecao(b,'opp','Tudo')	
		b = selecao(b,'pop','Na linha')	
		# regiões metropolitanas
		b = selecao(b,'opn7','Tudo')	
		# gravar			
		b = gravar(b)
		# nome de arquivo
		nome = 'pme_rendimento' + sites[i][1]
		b = nome_de_arquivo(b,nome)
		# modalidade
		b = modalidade(b,"envie") #A posteriori ( #notifique
		# ok
		b.find_element(:name, "frmOpcao").submit
	end
end

