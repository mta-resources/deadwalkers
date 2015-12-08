
--------------------------------------------------------------------
-- Global constants & variables applied only to this file
--------------------------------------------------------------------
local IMAGES_PATH = "images"
local SOUNDS_PATH = "sounds"
local SCREEN_WIDTH, SCREEN_HEIGHT = guiGetScreenSize()
local DEFAULT_USERNAME_TEXT = "Username  " -- if you'll change this, keep the spaces
local DEFAULT_PASSWORD_TEXT = "Password  " -- if you'll change this, keep the spaces
local USER_INFO_FILE_NAME = "@dw_userdata.xml"
local oldFieldText = ""

--------------------------------------------------------------------
-- Global variables that is used to store CEGUI elements
--------------------------------------------------------------------
local backgroundSound
local imageBackground
local editUsername
local editPassword
local labelError
local chbxRemember

--------------------------------------------------------------------
-- Creates the background sound
--------------------------------------------------------------------
function createSound()
	backgroundSound = Sound.create(SOUNDS_PATH .. "/login_sound.mp3")
end

--------------------------------------------------------------------
-- Creates the GUI elements in the screen
--------------------------------------------------------------------
function createScreenUIElements()

	createSound()

	-- Creates the screen background
	imageBackground = GuiStaticImage.create(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, IMAGES_PATH.."/background.jpg", false)
				GuiElement.setProperty(imageBackground, "ZOrderChangeEnabled", "False")

	-- Creates the game brand in the screen
	local gameBrand	= GuiStaticImage.create(0, 100, 539, 93, IMAGES_PATH.."/game-brand.png", false, imageBackground)
				GuiElement.setProperty(gameBrand, "HorizontalAlignment", "Centre")

	-- Creates the window itself (with text fields and buttons)
	local imageWindow = GuiStaticImage.create(0, 0, 489, 348, IMAGES_PATH.."/login-window-background.png", false, imageBackground)
				GuiElement.setProperty(imageWindow, "HorizontalAlignment", "Centre")
				GuiElement.setProperty(imageWindow, "VerticalAlignment", "Centre")
				GuiElement.setProperty(imageWindow, "ZOrderChangeEnabled", "False")

  -- Creates the login button
	local buttonLogin = GuiStaticImage.create(0, 210, 373, 48,IMAGES_PATH.."/btn_background.png", false, imageWindow)
				GuiElement.setProperty(buttonLogin, "HorizontalAlignment", "Centre")

	-- Crates the label to be applied to login button, since login button isn't a real button but an image
	local labelLogin = GuiLabel.create(0, 0, 373, 48, "Connect", false, buttonLogin)
				GuiElement.setProperty(labelLogin, "HorzFormatting", "HorzCentred")
				GuiElement.setProperty(labelLogin, "VertFormatting", "VertCentred")
				GuiElement.setFont(labelLogin, "default-bold-small")

  -- Creates the register button
	local buttonRegister = GuiStaticImage.create(0, 260, 373, 48, IMAGES_PATH.."/btn_background.png", false, imageWindow)
				GuiElement.setProperty(buttonRegister, "HorizontalAlignment", "Centre")

	-- Crates the label to be applied to register button, since register button isn't a real button but an image
	local labelRegister = GuiLabel.create(0, 0, 373, 48, "Register", false, buttonRegister)
				GuiElement.setProperty(labelRegister, "HorzFormatting", "HorzCentred")
				GuiElement.setProperty(labelRegister, "VertFormatting", "VertCentred")
				GuiElement.setFont(labelRegister, "default-bold-small")

  -- Creates the text field for username insertion
	editUsername = GuiEdit.create(0, 70, 373, 48, DEFAULT_USERNAME_TEXT, false, imageWindow)
				GuiElement.setProperty(editUsername, "HorizontalAlignment", "Centre")

  -- Creates the text field for password insertion
	editPassword = GuiEdit.create(0, 120, 373, 48, DEFAULT_PASSWORD_TEXT, false, imageWindow)
				GuiElement.setProperty(editPassword, "HorizontalAlignment", "Centre")
				GuiEdit.setMasked(editPassword, true)

	-- Creates the error label which will shows error messages
	labelError = GuiLabel.create(0, 180, 373, 20, "", false, imageWindow)
				GuiElement.setProperty(labelError, "HorizontalAlignment", "Centre")
				GuiElement.setProperty(labelError, "HorzFormatting", "LeftAligned")
				GuiElement.setFont(labelError, "default-bold-small")
				GuiLabel.setColor(labelError, 255, 0, 0)

  -- Creates the checkbox for save password and username
	chbxRemember = GuiCheckBox.create(315, 180, 130, 20, "Remember", false, false, imageWindow)
				GuiElement.setFont(chbxRemember, "default-bold-small")

  -- Creates those two zombies in the screen, just for make it better :)
	local imageZombieOne = GuiStaticImage.create(SCREEN_WIDTH*0.5 - 355, SCREEN_HEIGHT*0.5 - 200, 188, 414, IMAGES_PATH.."/zombie_1.png", false, imageBackground)
	local imageZombieTwo = GuiStaticImage.create(SCREEN_WIDTH*0.5 + 150, SCREEN_HEIGHT*0.5 - 200, 340, 402, IMAGES_PATH.."/zombie_2.png", false, imageBackground)

	-- Gets saved username and password from XML
	local savedUsername, savedPassword = loadUserXML()
	if(savedUsername ~= "" and savedPassword ~= "") then
		GuiElement.setText(editUsername, savedUsername)
		GuiElement.setText(editPassword, savedPassword)
		GuiCheckBox.setSelected(chbxRemember, true)
	end

	addEventHandler("onClientGUIFocus", editUsername, 	createPlaceholderOnClick, false)
	addEventHandler("onClientGUIFocus", editPassword, 	createPlaceholderOnClick, false)
	addEventHandler("onClientGUIBlur", 	editUsername, 	createPlaceholderOnBlur, false)
	addEventHandler("onClientGUIBlur", 	editPassword, 	createPlaceholderOnBlur, false)
	addEventHandler("onClientGUIClick", labelLogin, 		login, false)
	addEventHandler("onClientGUIClick", labelRegister, 	register, false)

  -- Shows the cursor on the screen
	showCursor(true)

end
addEventHandler("onClientResourceStart", resourceRoot, createScreenUIElements)

--------------------------------------------------------------------
-- Checks if login information is valid
-- @param string user: 	text that comes from username field
-- @param string pass:	text that comes from password field
--------------------------------------------------------------------
function validateLogin(user, pass)
	if user ~= DEFAULT_USERNAME_TEXT and user ~= "" and pass ~= DEFAULT_PASSWORD_TEXT and pass ~= "" then
		return true
	end
	setLoginMessage("User/password can not be empty.", 255, 0, 0)
end

--------------------------------------------------------------------
-- Registers a new player
-- @params: default from onClientGUIClick event
--------------------------------------------------------------------
function register(button, state, absoluteX, absoluteY)
	local currUser = GuiElement.getText(editUsername)
	local currPass = GuiElement.getText(editPassword)
	saveUserdataIfRememberIsChecked(currUser, currPass)
	if(validateLogin(currUser, currPass)) then
		setLoginMessage("")
		triggerServerEvent("dwRegisterServerEvent", resourceRoot, getLocalPlayer(), currUser, currPass)
	end
end

--------------------------------------------------------------------
-- Sets an error message
-- @param string message:		a text containing a message
-- @param integer r, g, b: 	red, green and blue (0-255)
--------------------------------------------------------------------
function setLoginMessage(message, r, g, b)
	r = r or 255
	g = g or 255
	b = b or 255
	GuiElement.setText(labelError, message)
	GuiLabel.setColor(labelError, r, g, b)
end

--------------------------------------------------------------------
-- Saves into .xml file if checkbox is selected
-- @param string username:	the player's username
-- @param string password: 	the player's password
--------------------------------------------------------------------
function saveUserdataIfRememberIsChecked(username, password)
	if GuiCheckBox.getSelected(chbxRemember) then
		saveUserXML(username, password)
	end
end

--------------------------------------------------------------------
-- Does login in the game
--------------------------------------------------------------------
function login(button, state, absoluteX, absoluteY)
	local currUser = GuiElement.getText(editUsername)
	local currPass = GuiElement.getText(editPassword)

	saveUserdataIfRememberIsChecked(currUser, currPass)

	-- If fields are filled properly
	if validateLogin(currUser, currPass) then
		setLoginMessage("")
		triggerServerEvent("dwLoginServerEvent", resourceRoot, getLocalPlayer(), currUser, currPass)
	end
end

--------------------------------------------------------------------
-- Destroys login screen
--------------------------------------------------------------------
function hideLoginScreen()
	Element.destroy(backgroundSound)
	Element.destroy(imageBackground)
	showCursor(false)
end

--------------------------------------------------------------------
-- Gets the login response from Deadwalkers
-- @param bool logged: 	indicates if user was logged or not
--------------------------------------------------------------------
function loginClientResponse(logged)
	local r = 0
	local g = 0
	local b = 0
	if not logged then
		r = 255
		setLoginMessage("Invalid username and/or password.", r, g, b)
	else
		hideLoginScreen()
	end
end
addEvent("dwLoginClientEvent", true)
addEventHandler("dwLoginClientEvent", resourceRoot, loginClientResponse)

--------------------------------------------------------------------
-- Gets the register response from Deadwalkers
-- @param bool registered:	indicates if user was registered or not
--------------------------------------------------------------------
function registerClientResponse(registered)
	local r = 0
	local g = 0
	local b = 0
	if not registered then
		r = 255
		setLoginMessage("User could not be registered. Try another.", r, g, b)
	else
		hideLoginScreen()
	end
end
addEvent("dwRegisterClientEvent", true)
addEventHandler("dwRegisterClientEvent", resourceRoot, registerClientResponse)

--------------------------------------------------------------------
-- Creates the placeholder effect when focus on field
--------------------------------------------------------------------
function createPlaceholderOnClick()
	local currentText = GuiElement.getText(source)
	if currentText == DEFAULT_USERNAME_TEXT or currentText == DEFAULT_PASSWORD_TEXT then
		oldFieldText = currentText
		GuiElement.setText(source, "")
	end
end

--------------------------------------------------------------------
-- Creates the placeholder effect when blur on field
--------------------------------------------------------------------
function createPlaceholderOnBlur()
	local currentText = GuiElement.getText(source)
	if currentText == "" then
		GuiElement.setText(source, oldFieldText)
	end
end

--------------------------------------------------------------------
-- Creates user XML file
-- @param string user:	player's username
-- @param string pass:	player's password
--------------------------------------------------------------------
function createUserXML(user, pass)
	local xmlFile  = XML.create(USER_INFO_FILE_NAME, "deadwalkers")
	local userNode = XML.createChild(xmlFile, "username")
	local passNode = XML.createChild(xmlFile, "password")
	XML.setValue(userNode, user)
	XML.setValue(passNode, pass)
	XML.saveFile(xmlFile)
	XML.unload(xmlFile)
	return xmlFile, userNode, passNode
end	

--------------------------------------------------------------------
-- Saves information inside XML file
-- @param string user:	player's username
-- @param string pass:	player's password
--------------------------------------------------------------------
function saveUserXML(user, pass)
	local xmlFile  = XML.load(USER_INFO_FILE_NAME)
	local userNode = ""
	local passNode = ""
	if not xmlFile then
		createUserXML(user, pass)
	else
		userNode = XML.findChild(xmlFile, "username", 0)
		passNode = XML.findChild(xmlFile, "password", 0)
		XML.setValue(userNode, user)
		XML.setValue(passNode, pass)
		XML.saveFile(xmlFile)
		XML.unload(xmlFile)
	end
end

--------------------------------------------------------------------
-- Loads information from XML file
--------------------------------------------------------------------
function loadUserXML()
	local xmlFile   = XML.load(USER_INFO_FILE_NAME)
	local userNode  = nil
	local passNode  = nil
	if not xmlFile then
		outputDebugString("not xmlfile")
		xmlFile, userNode, passNode = createUserXML("", "")
	end
	local userNode	= XML.findChild(xmlFile, "username", 0)
	local passNode 	= XML.findChild(xmlFile, "password", 0)
	local userValue = XML.getValue(userNode)
	local passValue = XML.getValue(passNode)
	XML.unload(xmlFile)
	return userValue, passValue
end