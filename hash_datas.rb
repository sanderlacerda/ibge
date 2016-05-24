#!/usr/local/bin/ruby
# encoding: ISO-8859-1

def mes_nomes
	meses = ["Janeiro","Fevereiro","Mar.*o","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"]
end

# ------------------------------------------------------------------------------------------------
#                                       HASH DE TRImesesTRES
# ------------------------------------------------------------------------------------------------

def trimestres
	
	tri={}
	tri["janeiro-março"]      = "I."
	tri["abril-junho"]         = "II."
	tri["julho-setembro"]    = "III."
	tri["outubro-dezembro"] = "IV."
	
	tri["I"] = "1T"
	tri["II"] = "2T"
	tri["III"] = "3T"
	tri["IV"] = "4T"
	
	return tri
	
end

# ------------------------------------------------------------------------------------------------
#                                       HASH DE mesesES
# ------------------------------------------------------------------------------------------------

def meses
	meses={}
	meses["janeiro"]      = 1
	meses["fevereiro"]  = 2
	meses["marÃ¾o"] = 3
	meses["marþo"] = 3
	meses["marÃ§o"] = 3
	meses["março"]         = 3
	meses["abril"]         = 4
	meses["maio"]           = 5
	meses["junho"]         = 6
	meses["julho"]         = 7
	meses["agosto"]       = 8
	meses["setembro"]    = 9
	meses["outubro"]     = 10
	meses["novembro"]   = 11
	meses["dezembro"]   = 12

	meses["Janeiro"]     = "01"
	meses["Fevereiro"]  = "02"
	meses["Março"]         = "03"
	meses["MarÃ§o"]       = "03"
	meses["Abril"]         = "04"
	meses["Maio"]           = "05"
	meses["Junho"]         = "06"
	meses["Julho"]         = "07"
	meses["Agosto"]       = "08"
	meses["Setembro"]    = "09"
	meses["Outubro"]     = "10"
	meses["Novembro"]   = "11"
	meses["Dezembro"]   = "12"

	meses["JANEIRO"]      = 1
	meses["FEVEREIRO"]   = 2
	meses["MARÇO"]          = 3
	meses["ABRIL"]          = 4
	meses["MAIO"]            = 5
	meses["JUNHO"]          = 6
	meses["JULHO"]          = 7
	meses["AGOSTO"]        = 8
	meses["SETEMBRO"]     = 9
	meses["OUTUBRO"]       = 10
	meses["NOVEMBRO"]     = 11
	meses["DEZEMBRO"]     = 12

	meses["jan"]  = 1
	meses["fev"]  = 2
	meses["mar"]  = 3
	meses["abr"]  = 4
	meses["mai"]  = 5
	meses["jun"]  = 6
	meses["jul"]  = 7
	meses["ago"]  = 8
	meses["set"]  = 9
	meses["out"]  = 10
	meses["nov"]  = 11
	meses["dez"]  = 12

	meses["Jan"]  = 1
	meses["Fev"]  = 2
	meses["Mar"]  = 3
	meses["Abr"]  = 4
	meses["Mai"]  = 5
	meses["Jun"]  = 6
	meses["Jul"]  = 7
	meses["Ago"]  = 8
	meses["Set"]  = 9
	meses["Out"]  = 10
	meses["Nov"]  = 11
	meses["Dez"]  = 12

	meses["1"]  = "janeiro"
	meses["2"]  = "fevereiro"
	meses["3"]  = "março"
	meses["4"]  = "abril"
	meses["5"]  = "maio"
	meses["6"]  = "junho"
	meses["7"]  = "julho"
	meses["8"]  = "agosto"
	meses["9"]  = "setembro"
	meses["10"] = "outubro"
	meses["11"] = "novembro"
	meses["12"] = "dezembro"
	
	return meses
	
end
