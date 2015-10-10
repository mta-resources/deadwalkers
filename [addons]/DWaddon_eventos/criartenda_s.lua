-- Lista de itens
arsenal = {
	{"M16A2", 5, 10},
	{"Munição p/ M16A2", 15, 25},
	{"AK-47", 5, 10},
	{"Munição p/ AK-47", 15, 25},
	{"Sniper", 5, 10},
	{"Munição p/ Sniper", 8, 15},
	{"Country Rifle", 5, 10},
	{"Munição p/ Country", 15, 20},
	{"MP5", 5, 10},
	{"Munição p/ MP5", 35, 45},
	{"SPAS-12", 5, 10},
	{"Munição p/ SPAS-12", 25, 35},
	{"Granada", 5, 12}
}

medic = {
	{"Kit Médico", 10, 30},
	{"Morfina", 10, 20},
	{"Curativo", 10, 20},
	{"Analgésico", 10, 20},
	{"Bolsa de Sangue", 10, 20},
	{"Bolsa c/ Água Quente", 10, 20}
}

food = {
	{"Pizza", 15, 25},
	{"Hambúrguer", 15, 25},
	{"Garrafa D'água", 10, 20},
	{"Lata de Suco", 15, 25}
}

utils = {
	{"Mapa", 15, 25},
	{"GPS", 10, 20},
	{"Ferramentas", 10, 20},
	{"Visão Noturna", 4, 8},
	{"Visão de Calor", 4, 8},
	{"Relógio", 10, 20},
	{"Caixa de Fósforos", 10, 20},
	{"Rádio", 10, 20}
}



function createEventTent(thePlayer, commandName, typeOfTent)
	accountname = getAccountName(getPlayerAccount(thePlayer))
	if isObjectInACLGroup("user." .. accountname, aclGetGroup("DW-Administrador")) then
		if typeOfTent ~= "armas" and typeOfTent ~= "medicos" and typeOfTent ~= "comidas" and typeOfTent ~= "uteis" then
			setTimer(outputChatBox, 50, 1, "#6002B1[Dead Walkers] #FFFFFFErro! Use um dos argumentos: armas, medicos, comidas ou uteis. Exemplo: /criartenda armas", thePlayer, 171, 205, 239, true)
		
		else
			local x, y, z = getElementPosition(thePlayer)
			tent = createObject(3243, x + 5, y, z - 1)
			setObjectScale(tent, 1.5)
			tentCol = createColSphere(x + 5, y, z, 4)
			attachElements(tentCol, tent, 0, 0, 0)
			setElementData(tentCol, "parent", tent)
			setElementData(tent, "parent", tentCol)
			setElementData(tentCol, "tent", true)
			setElementData(tentCol, "vehicle", true)
			setElementData(tentCol, "MAX_Slots", 0)
			
			if typeOfTent == "armas" then
				for i, v in ipairs(arsenal) do
					setElementData(tentCol, v[1], math.random(v[2], v[3]))
				end
				setTimer(outputChatBox, 50, 1, "#6002B1[Dead Walkers] #FFFFFFUma tenda com armas foi criada.", thePlayer, 171, 205, 239, true)
				
			elseif typeOfTent == "medicos" then
				for i, v in ipairs(medic) do
					setElementData(tentCol, v[1], math.random(v[2], v[3]))
				end
				setTimer(outputChatBox, 50, 1, "#6002B1[Dead Walkers] #FFFFFFUma tenda com ítens médicos foi criada.", thePlayer, 171, 205, 239, true)
			
			elseif typeOfTent == "comidas" then
				for i, v in ipairs(food) do
					setElementData(tentCol, v[1], math.random(v[2], v[3]))
				end
				setTimer(outputChatBox, 50, 1, "#6002B1[Dead Walkers] #FFFFFFUma tenda com comidas foi criada.", thePlayer, 171, 205, 239, true)
			
			elseif typeOfTent == "uteis" then
				for i, v in ipairs(utils) do
					setElementData(tentCol, v[1], math.random(v[2], v[3]))
				end
				setTimer(outputChatBox, 50, 1, "#6002B1[Dead Walkers] #FFFFFFUma tenda com ítens úteis foi criada.", thePlayer, 171, 205, 239, true)
			end
		end
	else
		outputChatBox("#6002B1[Dead Walkers] #FF0000Você não tem permissões o suficiente para spawnar uma tenda.", thePlayer, 171, 205, 239, true)
	end
end
addCommandHandler("criartenda", createEventTent)

