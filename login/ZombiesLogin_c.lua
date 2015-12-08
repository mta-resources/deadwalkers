function createLoginScreen()
	local path = "images/" --saves the path directory for easy edition
	local scWidth, scHeight = guiGetScreenSize() --returns the screen size
	
	guiSetInputMode("no_binds_when_editing")
	
	mainSound			= playSound("sounds/login_sound1.mp3", true)
						  setSoundVolume(mainSound, 0.9)
	imgBackground 		= guiCreateStaticImage(0, 0, scWidth, scHeight, path.."background.jpg", false) --main background image
						  guiSetProperty(imgBackground, "ZOrderChangeEnabled", "False")
	imgLogotype			= guiCreateStaticImage(0, 100, 539, 93, path.."twd_logo.png", false) --main logotype ('the walking dead' text)
						  guiSetProperty(imgLogotype, "HorizontalAlignment", "Centre") --sets the logotype to center position
	imgWindow   		= guiCreateStaticImage(0, 0, 489, 348, path.."login-window-background.png", false) --main window background
						  guiSetProperty(imgWindow, "HorizontalAlignment", "Centre") --sets the main window background to center alignment
						  guiSetProperty(imgWindow, "VerticalAlignment", "Centre") --sets the main window background to center alignment
						  guiSetProperty(imgWindow, "ZOrderChangeEnabled", "False") --when "false", this prevents the window stay up images of zombies
	local btnLogin		= guiCreateStaticImage(0, 210, 373, 48, path.."btn_background.png", false, imgWindow) --creates the login button
						  guiSetProperty(btnLogin, "HorizontalAlignment", "Centre") --sets the login button to center alignment
	local lblLogin		= guiCreateLabel(0, 0, 35, 15, "Entrar", false, btnLogin) --creates the login label and add it on login button
						  guiSetProperty(lblLogin, "HorizontalAlignment", "Centre") --sets the login label to horizontal alignment
						  guiSetProperty(lblLogin, "VerticalAlignment", "Centre") --sets the login label to vertical alignment
						  guiSetFont(lblLogin, "default-bold-small") --sets the login label to bold font
	local btnRegister	= guiCreateStaticImage(0, 260, 373, 48, path.."btn_background.png", false, imgWindow) --creates the register button
						  guiSetProperty(btnRegister, "HorizontalAlignment", "Centre") --sets the register button to center position
	local lblRegister	= guiCreateLabel(0, 0, 55, 15, "Registrar", false, btnRegister) --creates the register label and add it on register button
						  guiSetProperty(lblRegister, "HorizontalAlignment", "Centre") --sets the register label to horizontal alignment
						  guiSetProperty(lblRegister, "VerticalAlignment", "Centre") --sets the register label to vertical alignment
						  guiSetFont(lblRegister, "default-bold-small") --sets the register label to bold font
	local edtUsername	= guiCreateEdit(0, 70, 373, 48, "Usuário", false, imgWindow) --creates the text field for username
						  guiSetProperty(edtUsername, "HorizontalAlignment", "Centre") --sets the text field to center position
	local edtPassword	= guiCreateEdit(0, 120, 373, 48, "Senha", false, imgWindow)
						  guiSetProperty(edtPassword, "HorizontalAlignment", "Centre")
						  guiEditSetMasked(edtPassword, true)
	local cbxRemember	= guiCreateCheckBox(315, 180, 130, 20, "Lembrar", false, false, imgWindow)
						  guiSetFont(cbxRemember, "default-bold-small")
	imgZombie1			= guiCreateStaticImage(scWidth*0.5 - 355, scHeight*0.5 - 200, 188, 414, path.."zombie_1.png", false)
	imgZombie2			= guiCreateStaticImage(scWidth*0.5 + 150, scHeight*0.5 - 200, 340, 402, path.."zombie_2.png", false)
	
	
	
	local username, password = loadLoginFromXML()
	if username ~= "" and password ~= "" then
		guiCheckBoxSetSelected(cbxRemember, true)
		guiSetText(edtUsername, username)
		guiSetText(edtPassword, password)
	end
	
	
	
	-- Below, some events to make the text (of edit texts) disappear when we click (making an effect)
	addEventHandler("onClientGUIClick", edtUsername, function (button)
		if button == "left" then
			if guiGetText(edtUsername) == "Usuário" then
				guiSetText(edtUsername, "")	
			end
		end
	end, false)
	addEventHandler("onClientGUIBlur", edtUsername, function ()
		if guiGetText(edtUsername) == "" then
			guiSetText(edtUsername, "Usuário")
		end
	end, false)
	
	addEventHandler("onClientGUIClick", edtPassword, function (button)
		if button == "left" then
			if guiGetText(edtPassword) == "Senha" then
				guiSetText(edtPassword, "")
			end
		end
	end, false)
	addEventHandler("onClientGUIBlur", edtPassword, function ()
		if guiGetText(edtPassword) == "" then
			guiSetText(edtPassword, "Senha")
		end
	end, false)
	
	addEventHandler("onClientGUIClick", btnLogin, function (button)
		if button == "left" then
			local username = guiGetText(edtUsername)
			local password = guiGetText(edtPassword)
			if not (tostring(username) == "") and not (tostring(password) == "") then
                triggerServerEvent("onClientSendLoginDataToServer", getLocalPlayer(), username, password)
				
				if guiCheckBoxGetSelected(cbxRemember) then
					saveLoginToXML(username, password)
				else
					saveLoginToXML("Usuário", "Senha")
				end
				
				hideLoginWindow()
            else
                outputChatBox("Nenhuma senha ou usuário foram digitados.",255,255,255,true)
            end
		end
	end, false)
	
	addEventHandler("onClientGUIClick", lblLogin, function (button)
		if button == "left" then
			local username = guiGetText(edtUsername)
			local password = guiGetText(edtPassword)
			if not (tostring(username) == "") and not (tostring(password) == "") then
                triggerServerEvent("onClientSendLoginDataToServer", getLocalPlayer(), username, password)
				hideLoginWindow()
            else
                outputChatBox("Nenhuma senha ou usuário foram digitados.",255,255,255,true)
            end
		end
	end, false)
	
	-- Below, more events to be called when the user clicks on something
	addEventHandler("onClientGUIClick", btnRegister, function (button)
		if button == "left" then
			local rWidth, rHeight = 350, 260
			local regWindow 	 	= guiCreateWindow(scWidth*0.5 - rWidth*0.5, scHeight*0.5 - rHeight*0.5, rWidth, rHeight, "Create a new account", false)
									guiSetAlpha(regWindow, 1)
			local regLblUsername 	= guiCreateLabel(0, 35, 60, 20, "Usuário", false, regWindow)
									guiSetProperty(regLblUsername, "HorizontalAlignment", "Centre")
									guiSetFont(regLblUsername, "default-bold-small")
			local regEdtUsername 	= guiCreateEdit(0, 55, 300, 25, "", false, regWindow)
									guiSetProperty(regEdtUsername, "HorizontalAlignment", "Centre")
			local regLblPassword 	= guiCreateLabel(0, 85, 60, 20, "Senha", false, regWindow)
									guiSetProperty(regLblPassword, "HorizontalAlignment", "Centre")
									guiSetFont(regLblPassword, "default-bold-small")
			local regEdtPassword 	= guiCreateEdit(0, 105, 300, 25, "", false, regWindow)
									guiSetProperty(regEdtPassword, "HorizontalAlignment", "Centre")
									guiEditSetMasked(regEdtPassword, true)
			local regLblPassword2	= guiCreateLabel(0, 135, 130, 20, "Redigite sua senha", false, regWindow)
									guiSetProperty(regLblPassword2, "HorizontalAlignment", "Centre")
									guiSetFont(regLblPassword2, "default-bold-small")
			local regEdtPassword2	= guiCreateEdit(0, 155, 300, 25, "", false, regWindow)
									guiSetProperty(regEdtPassword2, "HorizontalAlignment", "Centre")
									guiEditSetMasked(regEdtPassword2, true)
			local regBtnRegister	= guiCreateButton(0, 190, 300, 25, "Registrar", false, regWindow)
									guiSetProperty(regBtnRegister, "HorizontalAlignment", "Centre")
			local regBtnCancel		= guiCreateButton(0, 220, 300, 25, "Cancelar", false, regWindow)
									guiSetProperty(regBtnCancel, "HorizontalAlignment", "Centre")
									
			addEventHandler("onClientGUIClick", regBtnRegister, function (button)
				if button == "left" then
					if guiGetText(regEdtPassword) == guiGetText(regEdtPassword2) then
						local username  = guiGetText(regEdtUsername)
						local password  = guiGetText(regEdtPassword)
						local password2 = guiGetText(regEdtPassword2)
						local event = triggerServerEvent("onClientSendRegisterDataToServer", getLocalPlayer(), username, password)
						if event then
							destroyElement(regWindow)
							hideLoginWindow()
						end
					else
						outputChatBox("[Login]#FF9900As senhas não estão iguais. Redigite-as.", 255, 106, 0)
					end
				end
			end, false)
			
			addEventHandler("onClientGUIClick", regBtnCancel, function (button)
				if button == "left" then
					destroyElement(regWindow)
				end
			end)

								
		end
	end, false)
	
	addEventHandler("onClientGUIClick", lblRegister, function (button)
		if button == "left" then
			local rWidth, rHeight = 350, 260
			local regWindow 	 	= guiCreateWindow(scWidth*0.5 - rWidth*0.5, scHeight*0.5 - rHeight*0.5, rWidth, rHeight, "Create a new account", false)
									guiSetAlpha(regWindow, 1)
			local regLblUsername 	= guiCreateLabel(0, 35, 60, 20, "Usuário", false, regWindow)
									guiSetProperty(regLblUsername, "HorizontalAlignment", "Centre")
									guiSetFont(regLblUsername, "default-bold-small")
			local regEdtUsername 	= guiCreateEdit(0, 55, 300, 25, "", false, regWindow)
									guiSetProperty(regEdtUsername, "HorizontalAlignment", "Centre")
			local regLblPassword 	= guiCreateLabel(0, 85, 60, 20, "Senha", false, regWindow)
									guiSetProperty(regLblPassword, "HorizontalAlignment", "Centre")
									guiSetFont(regLblPassword, "default-bold-small")
			local regEdtPassword 	= guiCreateEdit(0, 105, 300, 25, "", false, regWindow)
									guiSetProperty(regEdtPassword, "HorizontalAlignment", "Centre")
									guiEditSetMasked(regEdtPassword, true)
			local regLblPassword2	= guiCreateLabel(0, 135, 130, 20, "Redigite sua senha", false, regWindow)
									guiSetProperty(regLblPassword2, "HorizontalAlignment", "Centre")
									guiSetFont(regLblPassword2, "default-bold-small")
			local regEdtPassword2	= guiCreateEdit(0, 155, 300, 25, "", false, regWindow)
									guiSetProperty(regEdtPassword2, "HorizontalAlignment", "Centre")
									guiEditSetMasked(regEdtPassword2, true)
			local regBtnRegister	= guiCreateButton(0, 190, 300, 25, "Registrar", false, regWindow)
									guiSetProperty(regBtnRegister, "HorizontalAlignment", "Centre")
			local regBtnCancel		= guiCreateButton(0, 220, 300, 25, "Cancelar", false, regWindow)
									guiSetProperty(regBtnCancel, "HorizontalAlignment", "Centre")
									
			addEventHandler("onClientGUIClick", regBtnRegister, function (button)
				if button == "left" then
					if guiGetText(regEdtPassword) == guiGetText(regEdtPassword2) then
						local username  = guiGetText(regEdtUsername)
						local password  = guiGetText(regEdtPassword)
						local password2 = guiGetText(regEdtPassword2)
						local event = triggerServerEvent("onClientSendRegisterDataToServer", getLocalPlayer(), username, password)
						if event then
							destroyElement(regWindow)
							hideLoginWindow()
						end
					else
						outputChatBox("[Login]#FF9900As senhas não estão iguais. Redigite-as.", 255, 106, 0)
					end
				end
			end, false)
			
			addEventHandler("onClientGUIClick", regBtnCancel, function (button)
				if button == "left" then
					destroyElement(regWindow)
				end
			end)

								
		end
	end, false)
	
	showCursor(true)

end
addEventHandler("onClientResourceStart", resourceRoot, createLoginScreen)

addEvent("onErrorOccurs", true)
function showErrorMessage(message)
	local lblError = guiCreateLabel(0, 320, 430, 20, tostring(message), false, imgWindow)
					 guiSetProperty(lblError, "HorizontalAlignment", "Centre")
					 guiSetFont(lblError, "default-bold-small")
					 guiLabelSetColor(lblError, 200, 0, 0)
					 guiLabelSetHorizontalAlign(lblError, "center")
end
addEventHandler("onErrorOccurs", resourceRoot, showErrorMessage)



-- This function destroy the login screen when player login
addEvent("hideLoginScreen", true)
function hideLoginWindow()
	local elementsToDestroy = {
								mainSound,
								imgBackground,
								imgLogotype,
								imgWindow,
								imgZombie1,
								imgZombie2
							  }
	
	for i, v in ipairs(elementsToDestroy) do
		destroyElement(v)
	end
	
	showCursor(false)
end
addEventHandler("hideLoginScreen", getRootElement(), hideLoginWindow)




-- This function load informations from XML file
function loadLoginFromXML() --Загрузка логина и пароля из XML
	local xml_save_log_File = xmlLoadFile ("userdata.xml")
    if not xml_save_log_File then
        xml_save_log_File = xmlCreateFile("userdata.xml", "login")
    end
    local usernameNode = xmlFindChild (xml_save_log_File, "username", 0)
    local passwordNode = xmlFindChild (xml_save_log_File, "password", 0)
    if usernameNode and passwordNode then
        return xmlNodeGetValue(usernameNode), xmlNodeGetValue(passwordNode)
    else
		return "", ""
    end
    xmlUnloadFile ( xml_save_log_File )
end



-- This function save informations in a XML file
function saveLoginToXML(username, password)
    local xml_save_log_File = xmlLoadFile ("userdata.xml")
    if not xml_save_log_File then
        xml_save_log_File = xmlCreateFile("userdata.xml", "login")
    end
	if (username ~= "") then
		local usernameNode = xmlFindChild (xml_save_log_File, "username", 0)
		if not usernameNode then
			usernameNode = xmlCreateChild(xml_save_log_File, "username")
		end
		xmlNodeSetValue (usernameNode, tostring(username))
	end
	if (password ~= "") then
		local passwordNode = xmlFindChild (xml_save_log_File, "password", 0)
		if not passwordNode then
			passwordNode = xmlCreateChild(xml_save_log_File, "password")
		end		
		xmlNodeSetValue (passwordNode, tostring(password))
	end
    xmlSaveFile(xml_save_log_File)
    xmlUnloadFile (xml_save_log_File)
end
addEvent("saveLoginToXML", true)
addEventHandler("saveLoginToXML", getRootElement(), saveLoginToXML) 