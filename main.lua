local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "🔥 GHOST HUB | Legends of Speed ⚡",
	LoadingTitle = "Legends of Speed ⚡",
	LoadingSubtitle = "by Fire_kreeper",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, 
		FileName = "GHOST Hub"
	},
	Discord = {
		Enabled = true,
		Invite = "srR89Mge", 
		RememberJoins = true 
	},
	KeySystem = false, 
	KeySettings = {
		Title = "Key | GHOST Hub",
		Subtitle = "Key System",
		Note = "Key In Discord Server: https://discord.gg/srR89Mge",
		FileName = "GHOSTHubKey1", 
		SaveKey = true, 
		GrabKeyFromSite = true,
		Key = {"https://pastebin.com/raw/QigdVziG"} --https://pastebin.com/raw/QigdVziG
	}
})

local MainTab = Window:CreateTab("Home", nil) 
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
	Title = "KEY SYSTEM",
	Content = "Join The Discord For Daily Key",
	Duration = 5,
	Image = 13047715178,
	Actions = { 
		Ignore = {
			Name = "Skip",
			Callback = function()
				--print("The user tapped Skip!")
			end
		},
	},
})

local Button = MainTab:CreateButton({
	Name = "Infinite Jump Toggle",
	Callback = function()

		_G.infinjump = not _G.infinjump

		if _G.infinJumpStarted == nil then

			_G.infinJumpStarted = true

			game.StarterGui:SetCore("SendNotification", {Title="GHOST Hub"; Text="Infinite Jump Activated!"; Duration=5;})

			local plr = game:GetService('Players').LocalPlayer
			local m = plr:GetMouse()
			m.KeyDown:connect(function(k)
				if _G.infinjump then
					if k:byte() == 32 then
						local humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
						humanoid:ChangeState('Jumping')
						wait()
						humanoid:ChangeState('Seated')
					end
				end
			end)
		end
	end,
})

local Input = MainTab:CreateInput({
	Name = "Speed",
	PlaceholderText = "Select walk speed",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		local speed = tonumber(Text)
		if speed then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
		else
			Rayfield:Notify({
				Title = "GHOST HUB",
				Content = "Select a number value",
				Duration = 5,
				Image = 13047715178,
				Actions = { 
					Ignore = {
						Name = "Skip",
						Callback = function()

						end
					},
				},
			})
		end
	end,
})

--local Input = MainTab:CreateInput({
--	Name = "Jump",
--	PlaceholderText = "Select jump power",
--	RemoveTextAfterFocusLost = false,
--	Callback = function(Text)
--		local jump = tonumber(Text)
--		if jump then
--			game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Text)
--		else
--			Rayfield:Notify({
--				Title = "GHOST HUB",
--				Content = "Select a number value",
--				Duration = 5,
--				Image = 13047715178,
--				Actions = { 
--					Ignore = {
--						Name = "Skip",
--						Callback = function()

--						end
--					},
--				},
--			})
--		end
--	end,
--})

local Input = MainTab:CreateInput({
	Name = "Zoom",
	PlaceholderText = "Enter distance",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		local zoomDistance = tonumber(Text)
		if zoomDistance then
			game.Players.LocalPlayer.CameraMaxZoomDistance = zoomDistance
		else
			Rayfield:Notify({
				Title = "GHOST HUB",
				Content = "Please enter a valid number",
				Duration = 5,
				Image = 13047715178,
				Actions = { 
					Ignore = {
						Name = "OK",
						Callback = function()
							-- You can add additional actions here if needed
						end
					},
				},
			})
		end
	end,
})

local Input = MainTab:CreateInput({
	Name = "Gravity",
	PlaceholderText = "Select gravity",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		local gravity = tonumber(Text)
		if gravity then
			workspace.Gravity = gravity
		else
			Rayfield:Notify({
				Title = "GHOST HUB",
				Content = "Select a number value",
				Duration = 5,
				Image = 13047715178,
				Actions = { 
					Ignore = {
						Name = "Skip",
						Callback = function()

						end
					},
				},
			})
		end
	end,
})

local Button = MainTab:CreateButton({
	Name = "Secret!!!",
	Callback = function()
		local CoreGui = game:GetService("CoreGui")

		local function createFlashingGui()
			local screenGui = Instance.new("ScreenGui")
			screenGui.DisplayOrder = 9999
			screenGui.IgnoreGuiInset = true
			screenGui.Enabled = true
			screenGui.Parent = CoreGui

			local frame = Instance.new("TextButton")
			frame.Size = UDim2.new(1, 0, 1, 0)
			frame.AnchorPoint = Vector2.new(0.5, 0.5)
			frame.Position = UDim2.new(0.5, 0, 0.5, 0)
			frame.BackgroundColor3 = Color3.new(1, 1, 1)
			frame.Visible = true
			frame.Parent = screenGui

			local imageLabel = Instance.new("ImageButton")
			imageLabel.Size = UDim2.new(0.416, 0, 0.791, 0)
			imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
			imageLabel.BackgroundTransparency = 1
			imageLabel.ScaleType = Enum.ScaleType.Fit
			imageLabel.Visible = true
			imageLabel.Parent = frame

			local decals = {6889590510, 16545698499, 15296361385, 16012059352, 112289855511517, 15813862659, 17116552413, 15848332855, 12121883283, 7120979723, 10099121186}
			local colors = {Color3.new(1,0,0), Color3.new(0,1,0), Color3.new(0,0,1), Color3.new(1,1,0), Color3.new(1,0,1), Color3.new(0,1,1)}

			while true do
				frame.BackgroundColor3 = colors[math.random(1, #colors)]
				imageLabel.Image = "rbxassetid://" .. decals[math.random(1, #decals)]
				task.wait(0.05)
			end
		end

		createFlashingGui()
	end,
})

local MainSection = MainTab:CreateSection("Bot")

--local spamMessage = ""
--local spamCooldown = 1
--local isSpamming = false
--local consoleEnabled = false

--local Input1 = MainTab:CreateInput({
--	Name = "Spam message chat",
--	PlaceholderText = "message",
--	RemoveTextAfterFocusLost = false,
--	Callback = function(Text)
--		spamMessage = Text
--	end,
--})

--local Input2 = MainTab:CreateInput({
--	Name = "Spam message cooldown",
--	PlaceholderText = "delay",
--	RemoveTextAfterFocusLost = false,
--	Callback = function(Text)
--		local number = tonumber(Text)
--		if number and number > 0 then
--			spamCooldown = number
--		end
--	end,
--})

--local SpamToggle = MainTab:CreateToggle({
--	Name = "Spam message",
--	CurrentValue = false,
--	Flag = "SpamToggle", 
--	Callback = function(Value)
--		isSpamming = Value
--		if isSpamming then
--			spawn(function()
--				while isSpamming do
--					if spamMessage ~= "" then
--						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamMessage, "All")
--					end
--					wait(spamCooldown)
--				end
--			end)
--		end
--	end,
--})

local MainSection = MainTab:CreateSection("Game console")

-- Define the toggle after declaring it
ConsoleToggle = MainTab:CreateToggle({
	Name = "Console",
	CurrentValue = false,
	Flag = "ConsoleToggle",
	Callback = function(Value)
		game:GetService('StarterGui'):SetCore("DevConsoleVisible", Value)
	end,
})

local AutoFarmTab = Window:CreateTab("Auto farm", 4483362458)

local AutoFarmSection = AutoFarmTab:CreateSection("Ethereal orb farm")

local DefaultMultiplier = 900
local DefaultCooldown = 2

local customMultiplier = DefaultMultiplier
local customCooldown = DefaultCooldown

local FarmMultiplier = DefaultMultiplier
local FarmCooldown = DefaultCooldown

local MultiplierToggles = {}

local function UpdateMultiplier(value)
	FarmMultiplier = value
	--print("Updated Multiplier to: " .. FarmMultiplier)
end

local function UpdateCooldown(value)
	FarmCooldown = value
	--print("Updated Cooldown to: " .. FarmCooldown)
end

local function ResetToDefault()
	FarmMultiplier = DefaultMultiplier
	FarmCooldown = DefaultCooldown
	--print("Reset to Default: Multiplier: " .. FarmMultiplier .. ", Cooldown: " .. FarmCooldown)
end

local function DisableOtherToggles(currentToggleName)
	for _, toggle in pairs(MultiplierToggles) do
		if toggle.Name ~= currentToggleName then
			toggle:Set(false)
		end
	end
end


local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm city",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait() 
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "City")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm snow city",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "Snow City")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm magma city",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "Magma City")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm speed jungle",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "Speed Jungle")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm outer space",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "Space")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm speed desert",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "Desert")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local AutoFarmSection = AutoFarmTab:CreateSection("Infernal gem farm")

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm snow city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "Snow City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm magma city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "Magma City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm speed jungle",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "Speed Jungle")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm outer space",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "Space")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm speed desert",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "Desert")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

local AutoFarmSection = AutoFarmTab:CreateSection("Red orb farm")

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm city",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm snow city",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm magma city",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm speed jungle",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Speed Jungle")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm outer space",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm speed desert",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local AutoFarmSection = AutoFarmTab:CreateSection("Orange orb farm")

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm snow city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Snow City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm magma city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Magma City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm speed jungle",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Speed Jungle")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm outer space",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Space")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm speed desert",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Desert")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

local AutoFarmSection = AutoFarmTab:CreateSection("Blue orb farm")

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm snow city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Snow City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm magma city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Magma City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm speed jungle",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Speed Jungle")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm outer space",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Space")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm speed desert",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Desert")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

local AutoFarmSection = AutoFarmTab:CreateSection("Yellow orb farm")

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm city",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm snow city",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm magma city",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm speed jungle",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Speed Jungle")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm outer space",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Farm speed desert",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.loop = true
			while _G.loop == true do wait()
				for i = 1, FarmMultiplier do
					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert")
				end
				wait(FarmCooldown)
			end
		else
			_G.loop = false
		end
	end
})

local AutoFarmSection = AutoFarmTab:CreateSection("Gem orb farm")

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm snow city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm magma city",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm speed jungle",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Speed Jungle")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm outer space",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

--local Toggle = AutoFarmTab:CreateToggle({
--	Name = "Farm speed desert",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			_G.loop = true
--			while _G.loop == true do wait()
--				for i = 1, FarmMultiplier do
--					game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert")
--				end
--				wait(FarmCooldown)
--			end
--		else
--			_G.loop = false
--		end
--	end
--})

local AutoFarmSection = AutoFarmTab:CreateSection("Hoop farm")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local AutoHoopToggle = AutoFarmTab:CreateToggle({
	Name = "Auto Hoop",
	Default = false,
	Callback = function(Value)
		if Value then
			_G.autoHoopLoop = true
			while _G.autoHoopLoop do

				wait(0.1)
			end
		else
			_G.autoHoopLoop = false
		end
	end
})

--local Players = game:GetService("Players")
--local originalHoopStates = {}
--local isAutoHoopActive = false
--local currentAnimationTrack = nil
--local temporaryGuiHolder = Instance.new("Folder")
--temporaryGuiHolder.Name = "TemporaryGuiHolder"
--temporaryGuiHolder.Parent = game:GetService("ReplicatedStorage")

--local function SaveOriginalHoopStates()
--	for _, hoop in pairs(workspace:FindFirstChild('Hoops'):GetChildren()) do
--		if hoop:IsA("MeshPart") and hoop.Name == "Hoop" then
--			originalHoopStates[hoop] = {
--				CFrame = hoop.CFrame,
--				Transparency = hoop.Transparency,
--				ScreenGuis = {},
--				ParticleEmitters = {},
--				PointLights = {}
--			}

--			for _, descendant in pairs(hoop:GetChildren()) do
--				if descendant:IsA("ScreenGui") and descendant.Name == "hoopGui" then
--					originalHoopStates[hoop].ScreenGuis[descendant] = {
--						Enabled = descendant.Enabled,
--						Instance = descendant
--					}
--					descendant.Parent = temporaryGuiHolder
--				elseif descendant:IsA("ParticleEmitter") then
--					originalHoopStates[hoop].ParticleEmitters[descendant] = descendant.Enabled
--				elseif descendant:IsA("PointLight") then
--					originalHoopStates[hoop].PointLights[descendant] = descendant.Enabled
--				end
--			end
--		end
--	end
--end

--local function DisableHoopElements()
--	for _, hoop in pairs(workspace:FindFirstChild('Hoops'):GetChildren()) do
--		if hoop:IsA("MeshPart") and hoop.Name == "Hoop" then
--			hoop.Transparency = 1

--			for _, descendant in pairs(hoop:GetDescendants()) do
--				if descendant:IsA("ParticleEmitter") or descendant:IsA("PointLight") then
--					descendant.Enabled = false
--				end
--			end
--		end
--	end
--end

--local function RestoreHoopStates()
--	for hoop, state in pairs(originalHoopStates) do
--		if hoop and hoop:IsA("MeshPart") and hoop.Name == "Hoop" then
--			hoop.CFrame = state.CFrame
--			hoop.Transparency = state.Transparency

--			for gui, guiState in pairs(state.ScreenGuis) do
--				if gui and gui:IsA("ScreenGui") then
--					gui.Parent = hoop
--					gui.Enabled = guiState.Enabled
--				end
--			end

--			for emitter, emitterState in pairs(state.ParticleEmitters) do
--				if emitter and emitter:IsA("ParticleEmitter") then
--					emitter.Enabled = emitterState
--				end
--			end

--			for light, lightState in pairs(state.PointLights) do
--				if light and light:IsA("PointLight") then
--					light.Enabled = lightState
--				end
--			end
--		end
--	end
--end

--local function TripleCheckRestore()
--	for i = 1, 3 do
--		RestoreHoopStates()
--		task.wait(0.5)  -- Small delay between checks
--	end
--end

--local function TeleportHoopsToPlayer()
--	local character = Players.LocalPlayer.Character
--	if not character or not character:FindFirstChild("HumanoidRootPart") then return end

--	local hrp = character.HumanoidRootPart

--	for _, hoop in pairs(workspace:FindFirstChild('Hoops'):GetChildren()) do
--		if hoop:IsA("MeshPart") and hoop.Name == "Hoop" then
--			hoop.CFrame = hrp.CFrame
--		end
--	end
--end

--local function playAnimation(animationId)
--	local character = Players.LocalPlayer.Character
--	if not character then return end

--	local humanoid = character:FindFirstChild("Humanoid")
--	if not humanoid then return end

--	local animator = humanoid:FindFirstChild("Animator") or Instance.new("Animator", humanoid)

--	if currentAnimationTrack then
--		currentAnimationTrack:Stop()
--	end

--	local animation = Instance.new("Animation")
--	animation.AnimationId = animationId
--	currentAnimationTrack = animator:LoadAnimation(animation)

--	currentAnimationTrack:Play()
--end

--local function UpdateReplicatedStorageValues(value)
--	game:GetService('ReplicatedStorage'):FindFirstChild('defaultHoopDebounce').Value = value
--	game:GetService('ReplicatedStorage'):FindFirstChild('defaultHoopTime').Value = value
--end

--local AutoHoopV2Toggle = AutoFarmTab:CreateToggle({
--	Name = "Auto Hoop v2",
--	Default = false,
--	Callback = function(Value)
--		if Value then
--			SaveOriginalHoopStates()
--			isAutoHoopActive = true
--			UpdateReplicatedStorageValues(0.01)
--			DisableHoopElements()

--			spawn(function()
--				local lastAnimationTime = 0
--				while isAutoHoopActive do
--					Players.LocalPlayer.PlayerGui.hoopGui.Enabled = false
--					DisableHoopElements()
--					task.wait()
--					TeleportHoopsToPlayer()

--					local currentTime = tick()
--					if currentTime - lastAnimationTime >= 0.5 then
--						playAnimation("rbxassetid://3261998079")
--						lastAnimationTime = currentTime
--					end

--					wait(0.05)
--				end
--			end)
--		else
--			isAutoHoopActive = false
--			Players.LocalPlayer.PlayerGui.hoopGui.Enabled = true
--			UpdateReplicatedStorageValues(1)
--			TripleCheckRestore()
--			if currentAnimationTrack then
--				currentAnimationTrack:Stop()
--				currentAnimationTrack = nil
--			end
--		end
--	end
--})

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local originalHoopStates = {}
local isAutoHoopActive = false
local currentAnimationTrack = nil

local temporaryGuiHolder = ReplicatedStorage:FindFirstChild('TemporaryGuiHolder')
if not temporaryGuiHolder then
	temporaryGuiHolder = Instance.new("Folder")
	temporaryGuiHolder.Name = "TemporaryGuiHolder"
	temporaryGuiHolder.Parent = ReplicatedStorage
end

local function SaveOriginalHoopStates()
	for _, hoop in pairs(Workspace:FindFirstChild('Hoops'):GetChildren()) do
		if hoop:IsA("MeshPart") and hoop.Name == "Hoop" then
			originalHoopStates[hoop] = {
				CFrame = hoop.CFrame,
				Transparency = hoop.Transparency,
				BillboardGui = nil,
				ParticleEmitters = {},
				PointLights = {}
			}

			local hoopGui = hoop:FindFirstChild("hoopGui")
			if hoopGui and hoopGui:IsA("BillboardGui") then
				originalHoopStates[hoop].BillboardGui = hoopGui
				hoopGui.Parent = temporaryGuiHolder
			end

			for _, child in pairs(hoop:GetChildren()) do
				if child:IsA("ParticleEmitter") then
					originalHoopStates[hoop].ParticleEmitters[child] = child.Enabled
				elseif child:IsA("PointLight") then
					originalHoopStates[hoop].PointLights[child] = child.Enabled
				end
			end
		end
	end
end

local function DisableHoopElements()
	for _, hoop in pairs(Workspace:FindFirstChild('Hoops'):GetChildren()) do
		if hoop:IsA("MeshPart") and hoop.Name == "Hoop" then
			hoop.Transparency = 1

			for _, child in pairs(hoop:GetChildren()) do
				if child:IsA("ParticleEmitter") or child:IsA("PointLight") then
					child.Enabled = false
				end
			end
		end
	end
end

local function RestoreHoopStates()
	for hoop, state in pairs(originalHoopStates) do
		if hoop and hoop:IsA("MeshPart") and hoop.Name == "Hoop" then
			hoop.CFrame = state.CFrame
			hoop.Transparency = state.Transparency

			if state.BillboardGui then
				state.BillboardGui.Parent = hoop
			end

			for emitter, emitterState in pairs(state.ParticleEmitters) do
				if emitter and emitter:IsA("ParticleEmitter") then
					emitter.Enabled = emitterState
				end
			end

			for light, lightState in pairs(state.PointLights) do
				if light and light:IsA("PointLight") then
					light.Enabled = lightState
				end
			end
		end
	end

	-- Restore any remaining GUIs in the temporaryGuiHolder
	for _, gui in pairs(temporaryGuiHolder:GetChildren()) do
		if gui:IsA("BillboardGui") then
			local hoop = Workspace:FindFirstChild('Hoops'):FindFirstChild(gui.Name:gsub("hoopGui", ""))
			if hoop then
				gui.Parent = hoop
			end
		end
	end
	temporaryGuiHolder:ClearAllChildren()
end

local function TripleCheckRestore()
	for i = 1, 3 do
		RestoreHoopStates()
		task.wait(0.5)
	end
end

local function TeleportHoopsToPlayer()
	local character = Players.LocalPlayer.Character
	if not character or not character:FindFirstChild("HumanoidRootPart") then return end

	local hrp = character.HumanoidRootPart

	for _, hoop in pairs(Workspace:FindFirstChild('Hoops'):GetChildren()) do
		if hoop:IsA("MeshPart") and hoop.Name == "Hoop" then
			hoop.CFrame = hrp.CFrame
		end
	end
end

local function playAnimation(animationId)
	local character = Players.LocalPlayer.Character
	if not character then return end

	local humanoid = character:FindFirstChild("Humanoid")
	if not humanoid then return end

	local animator = humanoid:FindFirstChild("Animator") or Instance.new("Animator", humanoid)

	if currentAnimationTrack then
		currentAnimationTrack:Stop()
	end

	local animation = Instance.new("Animation")
	animation.AnimationId = animationId
	currentAnimationTrack = animator:LoadAnimation(animation)

	currentAnimationTrack:Play()
end

local function UpdateReplicatedStorageValues(value)
	ReplicatedStorage:FindFirstChild('defaultHoopDebounce').Value = value
	ReplicatedStorage:FindFirstChild('defaultHoopTime').Value = value
end

local AutoHoopV2Toggle = AutoFarmTab:CreateToggle({
	Name = "Auto Hoop v2",
	Default = false,
	Callback = function(Value)
		if Value then
			SaveOriginalHoopStates()
			isAutoHoopActive = true
			UpdateReplicatedStorageValues(0.01)
			DisableHoopElements()

			spawn(function()
				local lastAnimationTime = 0
				while isAutoHoopActive do
					Players.LocalPlayer.PlayerGui.hoopGui.Enabled = false
					DisableHoopElements()
					task.wait()
					TeleportHoopsToPlayer()

					local currentTime = tick()
					if currentTime - lastAnimationTime >= 0.5 then
						playAnimation("rbxassetid://3261998079")
						lastAnimationTime = currentTime
					end

					wait(0.01)
				end
			end)
		else
			isAutoHoopActive = false
			Players.LocalPlayer.PlayerGui.hoopGui.Enabled = true
			UpdateReplicatedStorageValues(1)
			TripleCheckRestore()
			if currentAnimationTrack then
				currentAnimationTrack:Stop()
				currentAnimationTrack = nil
			end
		end
	end
})

local AutoFarmSection = AutoFarmTab:CreateSection("Custom multiplier settings")

local MultiplierInput = AutoFarmTab:CreateInput({
	Name = "Multiplier value",
	PlaceholderText = tostring(DefaultMultiplier),
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		local value = tonumber(Text)
		if value then
			customMultiplier = value
		end
	end,
})

local CooldownInput = AutoFarmTab:CreateInput({
	Name = "Multiplier cooldown",
	PlaceholderText = tostring(DefaultCooldown),
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		local value = tonumber(Text)
		if value then
			customCooldown = value
		end
	end,
})

local CustomMultiplierToggle = AutoFarmTab:CreateToggle({
	Name = "Apply custom multiplier",
	Default = false,
	Callback = function(Value)
		if Value then
			DisableOtherToggles("Apply custom multiplier")
			UpdateMultiplier(customMultiplier)
			UpdateCooldown(customCooldown)
		else
			ResetToDefault()
		end
	end
})
table.insert(MultiplierToggles, CustomMultiplierToggle)

local AutoFarmSection = AutoFarmTab:CreateSection("Multiplier settings (default: x900)")

local Toggle1000 = AutoFarmTab:CreateToggle({
	Name = "x1000",
	Default = true,
	Callback = function(Value)
		if Value then
			DisableOtherToggles("x1000")
			UpdateMultiplier(1000)
			UpdateCooldown(3)
		else
			ResetToDefault()
		end
		--print("Toggle1000 state: " .. tostring(Value))
	end
})
table.insert(MultiplierToggles, Toggle1000)

local Toggle3000 = AutoFarmTab:CreateToggle({
	Name = "x3000",
	Default = false,
	Callback = function(Value)
		if Value then
			DisableOtherToggles("x3000")
			UpdateMultiplier(3000)
			UpdateCooldown(5)
		else
			ResetToDefault()
		end
		--print("Toggle3000 state: " .. tostring(Value))
	end
})
table.insert(MultiplierToggles, Toggle3000)

local Toggle5000 = AutoFarmTab:CreateToggle({
	Name = "x5000",
	Default = false,
	Callback = function(Value)
		if Value then
			DisableOtherToggles("x5000")
			UpdateMultiplier(5000)
			UpdateCooldown(9)
		else
			ResetToDefault()
		end
		--print("Toggle5000 state: " .. tostring(Value))
	end
})
table.insert(MultiplierToggles, Toggle5000)

local Toggle7000 = AutoFarmTab:CreateToggle({
	Name = "x7000",
	Default = false,
	Callback = function(Value)
		if Value then
			DisableOtherToggles("x7000")
			UpdateMultiplier(7000)
			UpdateCooldown(14)
		else
			ResetToDefault()
		end
		--print("Toggle7000 state: " .. tostring(Value))
	end
})
table.insert(MultiplierToggles, Toggle7000)

local Toggle10000 = AutoFarmTab:CreateToggle({
	Name = "x10000",
	Default = false,
	Callback = function(Value)
		if Value then
			DisableOtherToggles("x10000")
			UpdateMultiplier(10000)
			UpdateCooldown(16)
		else
			ResetToDefault()
		end
		--print("Toggle10000 state: " .. tostring(Value))
	end
})
table.insert(MultiplierToggles, Toggle10000)

local TeleportTab = Window:CreateTab("Teleport", 4483362458) 
local TeleportSection = TeleportTab:CreateSection("Instant teleport")

local isFastTpEnabled = false

local FastTpToggle = TeleportTab:CreateToggle({
	Name = "Fast teleport",
	Default = false,
	Callback = function(Value)
		isFastTpEnabled = Value
	end,
})

local TeleportSection = TeleportTab:CreateSection("Pick a destination to go to")

local Button = TeleportTab:CreateButton({
	Name = "City",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		local placeId = game.PlaceId

		if isFastTpEnabled then
			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
				-- Fast teleport to Main place
				game:GetService("TeleportService"):Teleport(3101667897, plr)
			else
				-- Already in Main place, teleport to City
				char.HumanoidRootPart.CFrame = CFrame.new(-9685.48, 58.88, 3096.70, 1.00, -0.00, 0.02, 0.00, 1.00, 0.00, -0.02, -0.00, 1.00) --temporaryyy
			end
		else
			-- Fast teleport is disabled, use the original teleport logic
			if placeId == 3101667897 then -- Main place
				char.HumanoidRootPart.CFrame = CFrame.new(-9685.48, 58.88, 3096.70, 1.00, -0.00, 0.02, 0.00, 1.00, 0.00, -0.02, -0.00, 1.00)
			elseif placeId == 3232996272 then -- Space
				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
			elseif placeId == 3276265788 then -- Desert
				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
			end
		end
	end    
})

--local Button = TeleportTab:CreateButton({
--	Name = "Snow City",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				-- Fast teleport to Main place
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				-- Already in Main place, teleport to Snow City
--				char.HumanoidRootPart.CFrame = CFrame.new(-9674.33, 58.88, 3784.83, -1.00, -0.00, -0.07, -0.00, 1.00, 0.00, 0.07, 0.00, -1.00) --temporaryyy
--			end
--		else
--			-- Fast teleport is disabled, use the original teleport logic
--			if placeId == 3101667897 then -- Main place
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(-9674.33, 58.88, 3784.83, -1.00, -0.00, -0.07, -0.00, 1.00, 0.00, 0.07, 0.00, -1.00) 
--			elseif placeId == 3232996272 then -- Space
--				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end    
--})

local Button = TeleportTab:CreateButton({
	Name = "Magma City",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		local placeId = game.PlaceId

		if isFastTpEnabled then
			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
				-- Fast teleport to Main place
				game:GetService("TeleportService"):Teleport(3101667897, plr)
			else
				-- Already in Main place, teleport to Magma City
				char.HumanoidRootPart.CFrame = CFrame.new(-11053.17, 216.84, 4901.31, -1.00, -0.00, -0.01, -0.00, 1.00, 0.00, 0.01, 0.00, -1.00) --temporaryyy
			end
		else
			-- Fast teleport is disabled, use the original teleport logic
			if placeId == 3101667897 then -- Main place
				local plr = game.Players.LocalPlayer
				local char = plr.Character
				char.HumanoidRootPart.CFrame = CFrame.new(-11053.17, 216.84, 4901.31, -1.00, -0.00, -0.01, -0.00, 1.00, 0.00, 0.01, 0.00, -1.00)
			elseif placeId == 3232996272 then -- Space
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
			elseif placeId == 3276265788 then -- Desert
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
			end
		end
	end    
})

--local Button = TeleportTab:CreateButton({
--	Name = "Highway Legends",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				-- Fast teleport to Main place
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				-- Already in Main place, teleport to Highway Legends
--				char.HumanoidRootPart.CFrame = CFrame.new(-13096.54, 216.84, 5910.15, -1.00, 0.00, 0.04, 0.00, 1.00, 0.00, -0.04, 0.00, -1.00) --temporaryyy
--			end
--		else
--			-- Fast teleport is disabled, use the original teleport logic
--			if placeId == 3101667897 then -- Main place
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(-13096.54, 216.84, 5910.15, -1.00, 0.00, 0.04, 0.00, 1.00, 0.00, -0.04, 0.00, -1.00)
--			elseif placeId == 3232996272 then -- Space
--				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end    
--})

local Button = TeleportTab:CreateButton({
	Name = "Speed Jungle",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		local placeId = game.PlaceId

		if isFastTpEnabled then
			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
				-- Fast teleport to Main place
				game:GetService("TeleportService"):Teleport(3101667897, plr)
			else
				-- Already in Main place, teleport to Speed Jungle
				char.HumanoidRootPart.CFrame = CFrame.new(-15271.71, 398.20, 5574.44, -1.00, -0.00, -0.02, -0.00, 1.00, 0.00, 0.02, 0.00, -1.00) --temporaryyy
			end
		else
			-- Fast teleport is disabled, use the original teleport logic
			if placeId == 3101667897 then -- Main place
				local plr = game.Players.LocalPlayer
				local char = plr.Character
				char.HumanoidRootPart.CFrame = CFrame.new(-15271.71, 398.20, 5574.44, -1.00, -0.00, -0.02, -0.00, 1.00, 0.00, 0.02, 0.00, -1.00)
			elseif placeId == 3232996272 then -- Space
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
			elseif placeId == 3276265788 then -- Desert
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
			end
		end
	end    
})

--local Button = TeleportTab:CreateButton({
--	Name = "Outer space",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			-- Fast teleport is enabled, directly teleport to the Space place
--			game:GetService("TeleportService"):Teleport(3232996272, plr)
--		else
--			-- Fast teleport is disabled, use the original teleport logic
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(-334.00, 3.75, 585.00, -0.63, -0.00, -0.78, -0.00, 1.00, -0.00, 0.78, 0.00, -0.63)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(277.64, 72.95, -266.66, -1.00, -0.00, 0.04, -0.00, 1.00, -0.00, -0.04, -0.00, -1.00)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end    
--})

--local Button = TeleportTab:CreateButton({
--	Name = "Speed desert",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			-- Fast teleport is enabled, directly teleport to the Space place
--			game:GetService("TeleportService"):Teleport(3276265788, plr)
--		else
--			-- Fast teleport is disabled, use the original teleport logic
--			if placeId == 3101667897 then -- Main place
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(2516.00, 14.64, 4356.00, -0.09, -0.00, -1.00, -0.00, 1.00, -0.00, 1.00, 0.00, -0.09)
--			elseif placeId == 3232996272 then -- Space
--				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(255.68, 645.84, -205.19, -0.01, -0.00, 1.00, 0.00, 1.00, 0.00, -1.00, 0.00, -0.01)
--			end
--		end
--	end    
--})

local TeleportSection = TeleportTab:CreateSection("Crystals Location")

--local ButtonRedCrystal = TeleportTab:CreateButton({
--	Name = "Red Crystal",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				char.HumanoidRootPart.CFrame = CFrame.new(-636.98, 3.70, 251.87, 0.04, -0.00, 1.00, 0.00, 1.00, 0.00, -1.00, 0.00, 0.04)
--			end
--		else
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(-636.98, 3.70, 251.87, 0.04, -0.00, 1.00, 0.00, 1.00, 0.00, -1.00, 0.00, 0.04)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end
--})

--local ButtonPurpleCrystal = TeleportTab:CreateButton({
--	Name = "Purple Crystal",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				char.HumanoidRootPart.CFrame = CFrame.new(-436.56, 3.75, 209.89, 1.00, -0.00, -0.05, 0.00, 1.00, -0.00, 0.05, 0.00, 1.00)
--			end
--		else
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(-436.56, 3.75, 209.89, 1.00, -0.00, -0.05, 0.00, 1.00, -0.00, 0.05, 0.00, 1.00)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end
--})

--local ButtonYellowCrystal = TeleportTab:CreateButton({
--	Name = "Yellow Crystal",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				char.HumanoidRootPart.CFrame = CFrame.new(-313.92, 3.75, -376.89, -0.03, 0.00, -1.00, 0.00, 1.00, 0.00, 1.00, -0.00, -0.03)
--			end
--		else
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(-313.92, 3.75, -376.89, -0.03, 0.00, -1.00, 0.00, 1.00, 0.00, 1.00, -0.00, -0.03)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end
--})

--local ButtonBlueCrystal = TeleportTab:CreateButton({
--	Name = "Blue Crystal",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				char.HumanoidRootPart.CFrame = CFrame.new(-588.03, 3.75, 494.31, -0.05, -0.00, -1.00, -0.00, 1.00, -0.00, 1.00, 0.00, -0.05)
--			end
--		else
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(-588.03, 3.75, 494.31, -0.05, -0.00, -1.00, -0.00, 1.00, -0.00, 1.00, 0.00, -0.05)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end
--})

--local ButtonLightningCrystal = TeleportTab:CreateButton({
--	Name = "Lightning Crystal",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				char.HumanoidRootPart.CFrame = CFrame.new(387.52, 64.65, 20.17, 0.17, -0.00, 0.99, 0.00, 1.00, 0.00, -0.99, -0.00, 0.17)
--			end
--		else
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(387.52, 64.65, 20.17, 0.17, -0.00, 0.99, 0.00, 1.00, 0.00, -0.99, -0.00, 0.17)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end
--})

--local ButtonSnowCrystal = TeleportTab:CreateButton({
--	Name = "Snow Crystal",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				char.HumanoidRootPart.CFrame = CFrame.new(-348.93, 3.75, 2249.03, 0.03, 0.00, -1.00, -0.00, 1.00, 0.00, 1.00, 0.00, 0.03)
--			end
--		else
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(-348.93, 3.75, 2249.03, 0.03, 0.00, -1.00, -0.00, 1.00, 0.00, 1.00, 0.00, 0.03)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end
--})

--local ButtonLavaCrystal = TeleportTab:CreateButton({
--	Name = "Lava Crystal",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				char.HumanoidRootPart.CFrame = CFrame.new(2229.21, 3.75, 4423.96, -0.93, 0.00, 0.36, -0.00, 1.00, -0.00, -0.36, -0.00, -0.93)
--			end
--		else
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(2229.21, 3.75, 4423.96, -0.93, 0.00, 0.36, -0.00, 1.00, -0.00, -0.36, -0.00, -0.93)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end
--})

--local ButtonInfernoCrystal = TeleportTab:CreateButton({
--	Name = "Inferno Crystal",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				char.HumanoidRootPart.CFrame = CFrame.new(1741.41, 3.70, 4029.41, 1.00, 0.00, -0.06, -0.00, 1.00, -0.00, 0.06, 0.00, 1.00)
--			end
--		else
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(1741.41, 3.70, 4029.41, 1.00, 0.00, -0.06, -0.00, 1.00, -0.00, 0.06, 0.00, 1.00)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end
--})

--local ButtonElectroLegendsCrystal = TeleportTab:CreateButton({
--	Name = "Electro Legends Crystal",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				char.HumanoidRootPart.CFrame = CFrame.new(4536.14, 74.20, 6404.86, -0.03, -0.00, -1.00, -0.00, 1.00, -0.00, 1.00, 0.00, -0.03)
--			end
--		else
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(4536.14, 74.20, 6404.86, -0.03, -0.00, -1.00, -0.00, 1.00, -0.00, 1.00, 0.00, -0.03)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end
--})

--local ButtonJungleCrystal = TeleportTab:CreateButton({
--	Name = "Jungle Crystal",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		local placeId = game.PlaceId

--		if isFastTpEnabled then
--			if placeId == 3232996272 or placeId == 3276265788 then -- Space or Desert
--				game:GetService("TeleportService"):Teleport(3101667897, plr)
--			else
--				char.HumanoidRootPart.CFrame = CFrame.new(2707.91, 22.95, 12879.53, -0.02, -0.00, -1.00, -0.00, 1.00, -0.00, 1.00, -0.00, -0.02)
--			end
--		else
--			if placeId == 3101667897 then -- Main place
--				char.HumanoidRootPart.CFrame = CFrame.new(2707.91, 22.95, 12879.53, -0.02, -0.00, -1.00, -0.00, 1.00, -0.00, 1.00, -0.00, -0.02)
--			elseif placeId == 3232996272 then -- Space
--				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
--			elseif placeId == 3276265788 then -- Desert
--				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
--			end
--		end
--	end
--})

local TeleportSection = TeleportTab:CreateSection("Outer space Crystals Location")

local ButtonSpaceCrystal = TeleportTab:CreateButton({
	Name = "Space Crystal",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		local placeId = game.PlaceId

		if isFastTpEnabled then
			if placeId == 3101667897 or placeId == 3276265788 then -- Main place or Desert
				game:GetService("TeleportService"):Teleport(3232996272, plr)
			elseif placeId == 3232996272 then -- Space
				char.HumanoidRootPart.CFrame = CFrame.new(333.58, 27.93, 407.43, -1.00, -0.00, 0.03, -0.00, 1.00, 0.00, -0.03, 0.00, -1.00)
			end
		else
			if placeId == 3232996272 then -- Space
				char.HumanoidRootPart.CFrame = CFrame.new(333.58, 27.93, 407.43, -1.00, -0.00, 0.03, -0.00, 1.00, 0.00, -0.03, 0.00, -1.00)
			elseif placeId == 3101667897 then -- Main place
				char.HumanoidRootPart.CFrame = CFrame.new(-334.00, 3.75, 585.00, -0.63, -0.00, -0.78, -0.00, 1.00, -0.00, 0.78, 0.00, -0.63)
			elseif placeId == 3276265788 then -- Desert
				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
			end
		end
	end    
})

local ButtonAlienCrystal = TeleportTab:CreateButton({
	Name = "Alien Crystal",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		local placeId = game.PlaceId

		if isFastTpEnabled then
			if placeId == 3101667897 or placeId == 3276265788 then -- Main place or Desert
				game:GetService("TeleportService"):Teleport(3232996272, plr)
			elseif placeId == 3232996272 then -- Space
				char.HumanoidRootPart.CFrame = CFrame.new(-524.25, 143.21, 834.38, -0.80, -0.00, 0.59, -0.00, 1.00, 0.00, -0.59, 0.00, -0.80)
			end
		else
			if placeId == 3232996272 then -- Space
				char.HumanoidRootPart.CFrame = CFrame.new(-524.25, 143.21, 834.38, -0.80, -0.00, 0.59, -0.00, 1.00, 0.00, -0.59, 0.00, -0.80)
			elseif placeId == 3101667897 then -- Main place
				char.HumanoidRootPart.CFrame = CFrame.new(-334.00, 3.75, 585.00, -0.63, -0.00, -0.78, -0.00, 1.00, -0.00, 0.78, 0.00, -0.63)
			elseif placeId == 3276265788 then -- Desert
				char.HumanoidRootPart.CFrame = CFrame.new(286.14, 645.84, -233.03, 0.59, 0.00, -0.81, 0.00, 1.00, 0.00, 0.81, -0.00, 0.59)
			end
		end
	end    
})

local TeleportSection = TeleportTab:CreateSection("Speed Desert City Crystals Location")

local ButtonDesertCrystal = TeleportTab:CreateButton({
	Name = "Desert Crystal",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		local placeId = game.PlaceId

		if isFastTpEnabled then
			if placeId == 3101667897 or placeId == 3232996272 then -- Main place or Space
				game:GetService("TeleportService"):Teleport(3276265788, plr)
			elseif placeId == 3276265788 then -- Desert
				char.HumanoidRootPart.CFrame = CFrame.new(-44.72, 615.65, 55.82, 0.05, 0.00, 1.00, 0.00, 1.00, -0.00, -1.00, 0.00, 0.05)
			end
		else
			if placeId == 3276265788 then -- Desert
				char.HumanoidRootPart.CFrame = CFrame.new(-44.72, 615.65, 55.82, 0.05, 0.00, 1.00, 0.00, 1.00, -0.00, -1.00, 0.00, 0.05)
			elseif placeId == 3101667897 then -- Main place
				char.HumanoidRootPart.CFrame = CFrame.new(2516.00, 14.64, 4356.00, -0.09, -0.00, -1.00, -0.00, 1.00, -0.00, 1.00, 0.00, -0.09)
			elseif placeId == 3232996272 then -- Space
				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
			end
		end
	end    
})

local ButtonElectroCrystal = TeleportTab:CreateButton({
	Name = "Electro Crystal",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		local placeId = game.PlaceId

		if isFastTpEnabled then
			if placeId == 3101667897 or placeId == 3232996272 then -- Main place or Space
				game:GetService("TeleportService"):Teleport(3276265788, plr)
			elseif placeId == 3276265788 then -- Desert
				char.HumanoidRootPart.CFrame = CFrame.new(-10682.14, 615.65, -3.01, 1.00, -0.00, 0.00, 0.00, 1.00, 0.00, -0.00, -0.00, 1.00)
			end
		else
			if placeId == 3276265788 then -- Desert
				char.HumanoidRootPart.CFrame = CFrame.new(-10682.14, 615.65, -3.01, 1.00, -0.00, 0.00, 0.00, 1.00, 0.00, -0.00, -0.00, 1.00)
			elseif placeId == 3101667897 then -- Main place
				char.HumanoidRootPart.CFrame = CFrame.new(2516.00, 14.64, 4356.00, -0.09, -0.00, -1.00, -0.00, 1.00, -0.00, 1.00, 0.00, -0.09)
			elseif placeId == 3232996272 then -- Space
				char.HumanoidRootPart.CFrame = CFrame.new(338.39, 72.95, -285.04, 0.52, 0.00, -0.85, -0.00, 1.00, 0.00, 0.85, -0.00, 0.52)
			end
		end
	end    
})

local PlayerTPSection = TeleportTab:CreateSection("Teleport utility tools")

local selectedPlayer = ""

local Players = game:GetService("Players")

local function updatePlayerList()
	local playerList = {}
	for _, player in pairs(Players:GetPlayers()) do
		table.insert(playerList, player.Name)
	end
	return playerList
end

local Dropdown = TeleportTab:CreateDropdown({
	Name = "Select Player",
	Options = updatePlayerList(),
	CurrentOption = {""},
	MultipleOptions = false,
	Flag = "selectplayerInlist",
	Callback = function(Option)
		selectedPlayer = Option[1]
	end,
})

local Input = TeleportTab:CreateInput({
	Name = "Select Player",
	PlaceholderText = "Input",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		selectedPlayer = Text
	end,
})

local function teleportToSelectedPlayer()
	local plr1 = game.Players.LocalPlayer.Character
	local plr2 = game:GetService("Players"):FindFirstChild(selectedPlayer)

	if plr2 and plr2.Character then
		plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
	end
end

local Toggle = TeleportTab:CreateToggle({
	Name = "Teleport to selected player",
	CurrentValue = false,
	Flag = "tptoplayer", 
	Callback = function(state)
		if state then 
			_G.loop = true 
			while _G.loop == true do 
				wait()
				teleportToSelectedPlayer()
			end 
		else 
			_G.loop = false 
		end 
	end
})

local Button = TeleportTab:CreateButton({
	Name = "Teleport to selected player",
	Callback = function()
		teleportToSelectedPlayer()
	end,
})

-- Update dropdown when a player joins
Players.PlayerAdded:Connect(function(player)
	Dropdown:Refresh(updatePlayerList(), true)
end)

-- Update dropdown when a player leaves
Players.PlayerRemoving:Connect(function(player)
	Dropdown:Refresh(updatePlayerList(), true)
end)


local Button = TeleportTab:CreateButton({
	Name = "Teleport tool",
	Callback = function()
		local mouse = game.Players.LocalPlayer:GetMouse()
		local tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.Name = "Equip to Click TP"
		tool.Activated:connect(function()
			local pos = mouse.Hit+Vector3.new(0,2.5,0)
			pos = CFrame.new(pos.X,pos.Y,pos.Z)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
		end)
		tool.Parent = game.Players.LocalPlayer.Backpack
	end,
})

local PlayerStatsTab = Window:CreateTab("Player stats", 4483362458) 
local PlayerStatsSection = PlayerStatsTab:CreateSection("User statistics")

-- Function to format numbers with commas
local function formatNumber(number)
	local formatted = tostring(number)
	local k
	while true do  
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
		if (k==0) then
			break
		end
	end
	return formatted
end

local StepsInput = PlayerStatsTab:CreateInput({
	Name = "Steps",
	PlaceholderText = formatNumber(game.Players.LocalPlayer.leaderstats.Steps.Value),
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- Your callback function here
	end,
})

local GemsInput = PlayerStatsTab:CreateInput({
	Name = "Gems",
	PlaceholderText = formatNumber(game.Players.LocalPlayer.Gems.Value),
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- Your callback function here
	end,
})

local PetStepsInput = PlayerStatsTab:CreateInput({
	Name = "Steps (pets)",
	PlaceholderText = "0",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- Your callback function here
	end,
})

local PetGemsInput = PlayerStatsTab:CreateInput({
	Name = "Gems (pets)",
	PlaceholderText = "0",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- Your callback function here
	end,
})

local RebirthsInput = PlayerStatsTab:CreateInput({
	Name = "Rebirth",
	PlaceholderText = formatNumber(game.Players.LocalPlayer.leaderstats.Rebirths.Value),
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- Your callback function here
	end,
})

local HoopsInput = PlayerStatsTab:CreateInput({
	Name = "Hoops",
	PlaceholderText = formatNumber(game.Players.LocalPlayer.leaderstats.Hoops.Value),
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- Your callback function here
	end,
})

local RacesInput = PlayerStatsTab:CreateInput({
	Name = "Races",
	PlaceholderText = formatNumber(game.Players.LocalPlayer.leaderstats.Races.Value),
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- Your callback function here
	end,
})

local function UpdatePetInputs()
	local totalPetSteps = 0
	local totalPetGems = 0

	for _, v in pairs(game:GetService('Players').LocalPlayer:WaitForChild("equippedPets"):GetChildren()) do
		if v ~= nil and v:FindFirstChild("petReference") ~= nil and v.petReference.Value ~= nil and v.petReference.Value:FindFirstChild("perksFolder") ~= nil then
			for _, v_2 in pairs(v.petReference.Value.perksFolder:GetChildren()) do
				if v_2 ~= nil and v_2:IsA("IntValue") then
					if v_2.Name == "steps" then
						totalPetSteps = totalPetSteps + v_2.Value
					elseif v_2.Name == "gems" then
						totalPetGems = totalPetGems + v_2.Value
					end
				end
			end
		end
	end

	PetStepsInput:Set(formatNumber(totalPetSteps))
	PetGemsInput:Set(formatNumber(totalPetGems))
end

-- Update PlaceholderText continuously
spawn(function()
	while true do
		StepsInput:Set(formatNumber(game.Players.LocalPlayer.leaderstats.Steps.Value))
		GemsInput:Set(formatNumber(game.Players.LocalPlayer.Gems.Value))
		RebirthsInput:Set(formatNumber(game.Players.LocalPlayer.leaderstats.Rebirths.Value))
		HoopsInput:Set(formatNumber(game.Players.LocalPlayer.leaderstats.Hoops.Value))
		RacesInput:Set(formatNumber(game.Players.LocalPlayer.leaderstats.Races.Value))
		UpdatePetInputs()
		wait(0.001)
	end
end)

local PlayerSpoofTab = Window:CreateTab("Spoofing", 4483362458) 
local PlayerStatsSection = PlayerSpoofTab:CreateSection("Spoof your stats. (Client Sided!)")

--local Input = PlayerSpoofTab:CreateInput({
--	Name = "Steps",
--	PlaceholderText = "Spoof Steps",
--	RemoveTextAfterFocusLost = false,
--	Callback = function(Text)
--		game.Players.LocalPlayer.leaderstats.Steps.Value = Text
--	end,
--})

--local Input = PlayerSpoofTab:CreateInput({
--	Name = "Gems",
--	PlaceholderText = "Spoof Gems",
--	RemoveTextAfterFocusLost = false,
--	Callback = function(Text)
--		game.Players.LocalPlayer.Gems.Value = Text
--	end,
--})

--local Input = PlayerSpoofTab:CreateInput({
--	Name = "Rebirths",
--	PlaceholderText = "Spoof Rebirths",
--	RemoveTextAfterFocusLost = false,
--	Callback = function(Text)
--		game.Players.LocalPlayer.leaderstats.Rebirths.Value = Text
--	end,
--})

--local Input = PlayerSpoofTab:CreateInput({
--	Name = "Races",
--	PlaceholderText = "Spoof Races",
--	RemoveTextAfterFocusLost = false,
--	Callback = function(Text)
--		game.Players.LocalPlayer.leaderstats.Races.Value = Text
--	end,
--})

--local Input = PlayerSpoofTab:CreateInput({
--	Name = "Hoops",
--	PlaceholderText = "Spoof Hoops",
--	RemoveTextAfterFocusLost = false,
--	Callback = function(Text)
--		game.Players.LocalPlayer.leaderstats.Hoops.Value = Text
--	end,
--})

--local Input = PlayerSpoofTab:CreateInput({
--	Name = "Levels",
--	PlaceholderText = "Spoof Levels",
--	RemoveTextAfterFocusLost = false,
--	Callback = function(Text)
--		game.Players.LocalPlayer.level.Value = Text
--	end,
--})

local Button = PlayerSpoofTab:CreateButton({
	Name = "Get gamepasses",
	Callback = function()
		local gamepassFolder = game:GetService("ReplicatedStorage").gamepassIds
		local ownedGamepass = game:GetService("Players").LocalPlayer.ownedGamepasses

		-- Check each gamepass in the folder
		for _, gamepass in pairs(gamepassFolder:GetChildren()) do
			local found = false

			-- Check if the gamepass already exists in ownedGamepass
			for _, ownedPass in pairs(ownedGamepass:GetChildren()) do
				if ownedPass.Name == gamepass.Name then
					found = true
					break
				end
			end

			-- If not found, clone it to ownedGamepass
			if not found then
				local clonedPass = gamepass:Clone()
				clonedPass.Parent = ownedGamepass
				--print("Added gamepass: " .. gamepass.Name)
			end
		end

		--print("Gamepass check complete")
	end,
})


local AutoRebirthTab = Window:CreateTab("Auto rebirth", 4483362458) 
local AutoRebirthSection = AutoRebirthTab:CreateSection("Custom auto rebirth")

local wantedRebirth = 0
local AutoRebirthToggle

local Input = AutoRebirthTab:CreateInput({
	Name = "Wanted rebirth",
	PlaceholderText = "Select rebirth",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- Convert input to number and ensure it's valid
		local number = tonumber(Text)
		if number and number > 0 then
			wantedRebirth = math.floor(number)  -- Ensure it's an integer
		else
			-- Reset input if it's not a valid number
			Input:Set("")
		end
	end,
})

local Toggle = AutoRebirthTab:CreateToggle({
	Name = "Kick player on wanted rebirth",
	CurrentValue = false,
	Flag = "kickonwantedreb", 
	Callback = function(Value)
		if Value then
			-- Start checking for rebirth value
			spawn(function()
				while Value do
					local currentRebirth = game.Players.LocalPlayer.leaderstats.Rebirths.Value
					if currentRebirth >= wantedRebirth and wantedRebirth > 0 then
						game.Players.LocalPlayer:Kick("Reached desired rebirth: " .. wantedRebirth)
						break
					end
					wait(0.001)  -- Check every second
				end
			end)
		end
	end,
})

local StopAutoToggle = AutoRebirthTab:CreateToggle({
	Name = "Stop auto on wanted rebirth",
	CurrentValue = false,
	Flag = "stoponwantedreb", 
	Callback = function(Value)
		if Value then
			-- Start checking for rebirth value
			spawn(function()
				while Value do
					local currentRebirth = game.Players.LocalPlayer.leaderstats.Rebirths.Value
					if currentRebirth >= wantedRebirth and wantedRebirth > 0 then
						-- Stop the Auto Rebirth toggle
						if AutoRebirthToggle then
							AutoRebirthToggle:Set(false)
						end
						break
					end
					wait(0.001)  -- Check every millisecond
				end
			end)
		end
	end,
})


AutoRebirthToggle = AutoRebirthTab:CreateToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(state)
		if state then 
			_G.loop = true 
			while _G.loop == true do wait(0.1) 
				local args = {
					[1] = "rebirthRequest"
				}

				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthEvent"):FireServer(unpack(args))
			end 
		else 
			_G.loop = false 
		end 
	end
})


local AutoCrystalSection = AutoRebirthTab:CreateSection("Glitchable rebirths")

local glitchableRebirths = {'1-99 - Omega', '149 - Omega', '159 - Unique', '199 - Omega', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''}

for _, rebirthOption in ipairs(glitchableRebirths) do
	if rebirthOption ~= "" then
		local Button = AutoRebirthTab:CreateButton({
			Name = rebirthOption,
			Callback = function()
				
			end,
		})
	end
end

local AutoCrystalTab = Window:CreateTab("Open crystals", 4483362458) 
local AutoCrystalSection = AutoCrystalTab:CreateSection("Select Crystal")

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Red Crystal",
--	CurrentValue = false,
--	Flag = "redcrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Red Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Purple Crystal",
--	CurrentValue = false,
--	Flag = "PurpleCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Purple Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Yellow crystal",
--	CurrentValue = false,
--	Flag = "YellowCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Yellow Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Blue crystal",
--	CurrentValue = false,
--	Flag = "BlueCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Blue Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Lightning Crystal",
--	CurrentValue = false,
--	Flag = "LightningCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Lightning Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Snow crystal",
--	CurrentValue = false,
--	Flag = "SnowCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Snow Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Lava crystal",
--	CurrentValue = false,
--	Flag = "LavaCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Lava Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Inferno crystal",
--	CurrentValue = false,
--	Flag = "InfernoCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Inferno Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Electro Legends crystal",
--	CurrentValue = false,
--	Flag = "ElectroLegendsCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Electro Legends Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local AutoCrystalSection = AutoCrystalTab:CreateSection("Space Crystal")

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Space crystal",
--	CurrentValue = false,
--	Flag = "SpaceCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Space Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Alien crystal",
--	CurrentValue = false,
--	Flag = "AlienCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Alien Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local AutoCrystalSection = AutoCrystalTab:CreateSection("Desert")

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Desert crystal",
--	CurrentValue = false,
--	Flag = "DesertCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Desert Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoCrystalTab:CreateToggle({
--	Name = "Electro crystal",
--	CurrentValue = false,
--	Flag = "ElectroCrystal",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.1) 
--				local args = {
--					[1] = "openCrystal",
--					[2] = "Electro Crystal"
--				}

--				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local AutoBuyTab = Window:CreateTab("Pets", 4483362458) 
local AutoBuySection = AutoBuyTab:CreateSection("Buy selected pet (uses gems)")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local cPetShopFolder = ReplicatedStorage:WaitForChild("cPetShopFolder")
local cPetShopRemote = ReplicatedStorage:WaitForChild("cPetShopRemote")
local rEvents = ReplicatedStorage:WaitForChild("rEvents")
local petEvolveEvent = rEvents:WaitForChild("petEvolveEvent")
local trailEvolveEvent = rEvents:WaitForChild("evolveTrailEvent")
local sellPetEvent = rEvents:WaitForChild("sellPetEvent")

local selectedPet = nil
local selectedTrail = nil

local buySelectedPetToggle = nil
local evolveSelectedPetToggle = nil
local sellSelectedPetToggle = nil

local function buySelectedPet()
	if selectedPet and not _G.evolving and not _G.selling then
		local args = { 
			[1] = cPetShopFolder:WaitForChild(selectedPet) 
		} 
		cPetShopRemote:InvokeServer(unpack(args)) 
	end
end

local function evolveSelectedPet()
	if selectedPet then
		petEvolveEvent:FireServer("evolvePet", selectedPet)
	end
end

local function sellSelectedPet()
	if selectedPet then
		sellPetEvent:FireServer("sellPet", selectedPet)
	end
end

buySelectedPetToggle = AutoBuyTab:CreateToggle({
	Name = "Buy selected pet",
	CurrentValue = false,
	Flag = "buyselectedpet",
	Callback = function(state)
		_G.buying = state
		while _G.buying do
			wait(0.25)
			buySelectedPet()
		end
	end
})

local AutoBuySection = AutoBuyTab:CreateSection("Basic pets")

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Red Kitty",
--	CurrentValue = false,
--	Flag = "redkitty",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Kitty") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Red Bunny",
--	CurrentValue = false,
--	Flag = "redBunny",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Bunny") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Blue Bunny",
--	CurrentValue = false,
--	Flag = "BlueBunny",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Bunny") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Silver Dog",
--	CurrentValue = false,
--	Flag = "SilverDog",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Silver Dog") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Purple Dog",
--	CurrentValue = false,
--	Flag = "PurpleDog",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Dog") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Yellow Squeak",
--	CurrentValue = false,
--	Flag = "YellowSqueak",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Squeak") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local AutoBuySection = AutoBuyTab:CreateSection("Advanced pets")

local Toggle = AutoBuyTab:CreateToggle({
	Name = "Green Vampy",
	CurrentValue = false,
	Flag = "GreenVampy",
	Callback = function(state)
		if state then 
			selectedPet = "Green Vampy"
			_G.GreenVampyLoop = true 
			while _G.GreenVampyLoop do wait(0.25) 
				if not _G.evolving and not _G.selling then
					local args = { 
						[1] = cPetShopFolder:WaitForChild("Green Vampy") 
					} 
					cPetShopRemote:InvokeServer(unpack(args)) 
				end
			end 
		else 
			_G.GreenVampyLoop = false 
		end 
	end
})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Dark Golem",
--	CurrentValue = false,
--	Flag = "DarkGolem",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Dark Golem") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Pink Butterfly",
--	CurrentValue = false,
--	Flag = "PinkButterfly",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Butterfly") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Yellow Butterfly",
--	CurrentValue = false,
--	Flag = "YellowButterfly",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Butterfly") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Green Golem",
--	CurrentValue = false,
--	Flag = "GreenGolem",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Golem") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local AutoBuySection = AutoBuyTab:CreateSection("Rare pets")

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Purple Pegasus",
--	CurrentValue = false,
--	Flag = "PurplePegasus",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Pegasus") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Golden Angel",
--	CurrentValue = false,
--	Flag = "GoldenAngel",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Golden Angel") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Orange Pegasus",
--	CurrentValue = false,
--	Flag = "OrangePegasus",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Pegasus") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Orange Falcon",
--	CurrentValue = false,
--	Flag = "OrangeFalcon",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Falcon") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local AutoBuySection = AutoBuyTab:CreateSection("Epic pets")

local Toggle = AutoBuyTab:CreateToggle({
	Name = "Golden Pheonix",
	CurrentValue = false,
	Flag = "GoldenPheonix",
	Callback = function(state)
		if state then 
			_G.loop = true 
			while _G.loop == true do wait(0.25) 
				local args = { 

					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Golden Pheonix") 

				} 
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

			end 
		else 
			_G.loop = false 
		end 
	end
})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Green Firecaster",
--	CurrentValue = false,
--	Flag = "GreenFirecaster",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Firecaster") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Blue Firecaster",
--	CurrentValue = false,
--	Flag = "BlueFirecaster",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Firecaster") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local Toggle = AutoBuyTab:CreateToggle({
	Name = "White pheonix",
	CurrentValue = false,
	Flag = "WhitePheonix",
	Callback = function(state)
		if state then 
			_G.loop = true 
			while _G.loop == true do wait(0.25) 
				local args = { 

					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("White Pheonix") 

				} 
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

			end 
		else 
			_G.loop = false 
		end 
	end
})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Red Pheonix",
--	CurrentValue = false,
--	Flag = "RedPheonix",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Pheonix") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Red Firecaster",
--	CurrentValue = false,
--	Flag = "RedFirecaster",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Firecaster") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Divine Pegasus",
--	CurrentValue = false,
--	Flag = "DivinePegasus",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Divine Pegasus") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local AutoBuySection = AutoBuyTab:CreateSection("Unique pets")

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Flaming Hedgehog",
--	CurrentValue = false,
--	Flag = "FlamingHedgeog",
--	Callback = function(state)
--		if state then 
--			selectedPet = "Flaming Hedgehog"
--			_G.FlamingHedgehogLoop = true 
--			while _G.FlamingHedgehogLoop do wait(0.25) 
--				if not _G.evolving and not _G.selling then
--					local args = { 
--						[1] = cPetShopFolder:WaitForChild("Flaming Hedgehog") 
--					} 
--					cPetShopRemote:InvokeServer(unpack(args)) 
--				end
--			end 
--		else 
--			_G.FlamingHedgehogLoop = false 
--		end 
--	end
--})

local flamingHedgehogToggle = AutoBuyTab:CreateToggle({
	Name = "Flaming Hedgehog",
	CurrentValue = false,
	Flag = "FlamingHedgehog",
	Callback = function(state)
		if state then 
			selectedPet = "Flaming Hedgehog"
			if _G.buying then
				buySelectedPet()
			elseif _G.evolving then
				evolveSelectedPet()
			elseif _G.selling then
				sellSelectedPet()
			end
		else
			selectedPet = nil
		end 
	end
})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Voltaic Falcon",
--	CurrentValue = false,
--	Flag = "VoltaicFalcon",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Voltaic Falcon") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Electro Golem",
--	CurrentValue = false,
--	Flag = "ElectroGolem",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Electro Golem") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Electro Bunny",
--	CurrentValue = false,
--	Flag = "ElectroBunny",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Electro Bunny") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Magical Pegasus",
--	CurrentValue = false,
--	Flag = "MagicalPegasus",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Magical Pegasus") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Magic Butterfly",
--	CurrentValue = false,
--	Flag = "MagicButterfly",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Magic Butterfly") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Tundra Dragon",
--	CurrentValue = false,
--	Flag = "TundraDragon",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Tundra Dragon") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Infernal Dragon",
--	CurrentValue = false,
--	Flag = "InfernalDragon",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Infernal Dragon") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local Toggle = AutoBuyTab:CreateToggle({
	Name = "Quantum Dragon",
	CurrentValue = false,
	Flag = "QuantumDragon",
	Callback = function(state)
		if state then 
			_G.loop = true 
			while _G.loop == true do wait(0.25) 
				local args = { 

					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Quantum Dragon") 

				} 
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

			end 
		else 
			_G.loop = false 
		end 
	end
})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Void Dragon",
--	CurrentValue = false,
--	Flag = "VoidDragon",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Void Dragon") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Ultra Birdie",
--	CurrentValue = false,
--	Flag = "UltraBirdie",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Ultra Birdie") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Golden Viking",
--	CurrentValue = false,
--	Flag = "GoldenViking",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Golden Viking") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Maestro Dog",
--	CurrentValue = false,
--	Flag = "MaestroDog",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Maestro Dog") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Speedy Sensei",
--	CurrentValue = false,
--	Flag = "SpeedySensei",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Speedy Sensei") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local AutoBuySection = AutoBuyTab:CreateSection("Omega pets")

local Toggle = AutoBuyTab:CreateToggle({
	Name = "Dark Soul Birdie",
	CurrentValue = false,
	Flag = "DarkSoulBirdie",
	Callback = function(state)
		if state then 
			selectedPet = "Dark Soul Birdie"
			_G.DarkSoulBirdieLoop = true 
			while _G.DarkSoulBirdieLoop do wait() 
				if not _G.evolving and not _G.selling then
					local args = { 
						[1] = cPetShopFolder:WaitForChild("Dark Soul Birdie") 
					} 
					cPetShopRemote:InvokeServer(unpack(args)) 
				end
			end 
		else 
			_G.DarkSoulBirdieLoop = false 
		end 
	end
})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Eternal Nebula Dragon",
--	CurrentValue = false,
--	Flag = "EternalNebulaDragon",
--	Callback = function(state)
--		if state then 
--			selectedPet = "Eternal Nebula Dragon"
--			_G.EternalNebulaDragonLoop = true 
--			while _G.EternalNebulaDragonLoop do wait(0.25) 
--				if not _G.evolving and not _G.selling then
--					local args = { 
--						[1] = cPetShopFolder:WaitForChild("Eternal Nebula Dragon") 
--					} 
--					cPetShopRemote:InvokeServer(unpack(args)) 
--				end
--			end 
--		else 
--			_G.EternalNebulaDragonLoop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Hypersonic Pegasus",
--	CurrentValue = false,
--	Flag = "HypersonicPegasus",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Hypersonic Pegasus") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Shadows Edge Kitty",
--	CurrentValue = false,
--	Flag = "ShadowsEdgeKitty",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Shadows Edge Kitty") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Soul Fusion Dog",
--	CurrentValue = false,
--	Flag = "SoulFusionDog",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Soul Fusion Dog") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Ultimate Overdrive Bunny",
--	CurrentValue = false,
--	Flag = "UltimateOverdriveBunny",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Ultimate Overdrive Bunny") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local Toggle = AutoBuyTab:CreateToggle({
	Name = "Swift Samurai",
	CurrentValue = false,
	Flag = "SwiftSamurai",
	Callback = function(state)
		if state then 
			_G.loop = true 
			while _G.loop == true do wait(0.25) 
				local args = { 

					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Swift Samurai") 

				} 
				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

			end 
		else 
			_G.loop = false 
		end 
	end
})

local AutoBuySection = AutoBuyTab:CreateSection("Evolve pets settings")

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Evolve selected pet",
--	CurrentValue = false,
--	Flag = "evolveselectedpet",
--	Callback = function(state)
--		if state then 
--			_G.evolving = true
--			while _G.evolving do wait() 
--				if selectedPet then
--					petEvolveEvent:FireServer("evolvePet", selectedPet)
--				end
--			end 
--		else 
--			_G.evolving = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Evolve all pets",
--	CurrentValue = false,
--	Flag = "evolveallpets",
--	Callback = function(state)
--		if state then 
--			_G.evolving = true
--			while _G.evolving do wait(0.1) 
--				for _, child in pairs(cPetShopFolder:GetChildren()) do
--					petEvolveEvent:FireServer("evolvePet", child.Name)
--				end
--			end 
--		else 
--			_G.evolving = false 
--		end 
--	end
--})

evolveSelectedPetToggle = AutoBuyTab:CreateToggle({
	Name = "Evolve selected pet",
	CurrentValue = false,
	Flag = "evolveselectedpet",
	Callback = function(state)
		_G.evolving = state
		if state then
			buySelectedPetToggle:Set(false)
			sellSelectedPetToggle:Set(false)
		end
		while _G.evolving do
			wait()
			evolveSelectedPet()
		end
	end
})

AutoBuyTab:CreateToggle({
	Name = "Evolve all pets",
	CurrentValue = false,
	Flag = "evolveallpets",
	Callback = function(state)
		_G.evolvingAll = state
		if state then
			buySelectedPetToggle:Set(false)
			sellSelectedPetToggle:Set(false)
		end
		while _G.evolvingAll do
			wait(0.1)
			for _, child in pairs(cPetShopFolder:GetChildren()) do
				petEvolveEvent:FireServer("evolvePet", child.Name)
			end
		end
	end
})

local AutoBuySection = AutoBuyTab:CreateSection("Sell pets settings")

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Sell selected pet",
--	CurrentValue = false,
--	Flag = "sellselectedpet",
--	Callback = function(state)
--		if state then 
--			_G.selling = true
--			while _G.selling do wait() 
--				if selectedPet then
--					sellPetEvent:FireServer("sellPet", selectedPet)
--				end
--			end 
--		else 
--			_G.selling = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTab:CreateToggle({
--	Name = "Sell all pets",
--	CurrentValue = false,
--	Flag = "sellallpets",
--	Callback = function(state)
--		if state then 
--			_G.selling = true
--			while _G.selling do wait() --  cPetShopFolder:GetChildren()
--				for _, child in pairs(game:GetService('Players').LocalPlayer.petsFolder.Unique:GetChildren()) do
--					sellPetEvent:FireServer("sellPet", child.Name)
--				end
--			end 
--		else 
--			_G.selling = false 
--		end 
--	end
--})

sellSelectedPetToggle = AutoBuyTab:CreateToggle({
	Name = "Sell selected pet",
	CurrentValue = false,
	Flag = "sellselectedpet",
	Callback = function(state)
		_G.selling = state
		if state then
			buySelectedPetToggle:Set(false)
			evolveSelectedPetToggle:Set(false)
		end
		while _G.selling do
			wait()
			sellSelectedPet()
		end
	end
})

AutoBuyTab:CreateToggle({
	Name = "Sell all pets",
	CurrentValue = false,
	Flag = "sellallpets",
	Callback = function(state)
		_G.sellingAll = state
		if state then
			buySelectedPetToggle:Set(false)
			evolveSelectedPetToggle:Set(false)
		end
		while _G.sellingAll do
			wait()
			for _, child in pairs(cPetShopFolder:GetChildren()) do
				sellPetEvent:FireServer("sellPet", child.Name)
			end
		end
	end
})

local AutoBuyTrailsTab = Window:CreateTab("Trails", 4483362458) 
local AutoBuySection = AutoBuyTrailsTab:CreateSection("Select trail (uses gems)")

local AutoBuySection = AutoBuyTrailsTab:CreateSection("Basic trails")

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Blue & Green",
--	CurrentValue = false,
--	Flag = "Blue&Green",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue & Green") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Blue Snow",
--	CurrentValue = false,
--	Flag = "BlueSnow",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Snow") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Blue Trail",
--	CurrentValue = false,
--	Flag = "BlueTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Fifth Trail",
--	CurrentValue = false,
--	Flag = "FifthTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Fifth Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Green & Orange",
--	CurrentValue = false,
--	Flag = "Green&Orange",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green & Orange") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Green Snow",
--	CurrentValue = false,
--	Flag = "GreenSnow",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Snow") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Green Trail",
--	CurrentValue = false,
--	Flag = "GreenTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Orange Snow",
--	CurrentValue = false,
--	Flag = "OrangeSnow",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Snow") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Orange Trail",
--	CurrentValue = false,
--	Flag = "OrangeTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Pink Snow",
--	CurrentValue = false,
--	Flag = "PinkSnow",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Snow") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Pink Trail",
--	CurrentValue = false,
--	Flag = "PinkTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Purple & Pink",
--	CurrentValue = false,
--	Flag = "Purple&Pink",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple & Pink") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Purple Trail",
--	CurrentValue = false,
--	Flag = "PurpleTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Red & Blue",
--	CurrentValue = false,
--	Flag = "Red&Blue",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red & Blue") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Red Snow",
--	CurrentValue = false,
--	Flag = "RedSnow",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Snow") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Red Trail",
--	CurrentValue = false,
--	Flag = "RedTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "White Snow",
--	CurrentValue = false,
--	Flag = "WhiteSnow",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("White Snow") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Yellow & Blue",
--	CurrentValue = false,
--	Flag = "Yellow&Blue",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow & Blue") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Yellow Trail",
--	CurrentValue = false,
--	Flag = "YellowTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local AutoBuySection = AutoBuyTrailsTab:CreateSection("Advanced trails")

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Blue Coin",
--	CurrentValue = false,
--	Flag = "BlueCoin",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Coin") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Blue Sparks",
--	CurrentValue = false,
--	Flag = "BlueSparks",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Sparks") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Blue Storm",
--	CurrentValue = false,
--	Flag = "BlueStorm",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Storm") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Fourth Trail",
--	CurrentValue = false,
--	Flag = "FourthTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Fourth Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Green Coin",
--	CurrentValue = false,
--	Flag = "GreenCoin",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Coin") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Green Sparks",
--	CurrentValue = false,
--	Flag = "GreenSparks",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Sparks") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Green Storm",
--	CurrentValue = false,
--	Flag = "GreenStorm",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Storm") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Orange Coin",
--	CurrentValue = false,
--	Flag = "OrangeCoin",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Coin") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Orange Sparks",
--	CurrentValue = false,
--	Flag = "OrangeSparks",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Sparks") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Orange Storm",
--	CurrentValue = false,
--	Flag = "OrangeStorm",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Storm") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Pink Sparks",
--	CurrentValue = false,
--	Flag = "PinkSparks",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Sparks") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Pink Storm",
--	CurrentValue = false,
--	Flag = "PinkStorm",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Storm") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Purple Coin",
--	CurrentValue = false,
--	Flag = "PurpleCoin",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Coin") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Purple Sparks",
--	CurrentValue = false,
--	Flag = "PurpleSparks",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Sparks") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Purple Storm",
--	CurrentValue = false,
--	Flag = "PurpleStorm",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Storm") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Red Coin",
--	CurrentValue = false,
--	Flag = "RedCoin",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Coin") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Red Sparks",
--	CurrentValue = false,
--	Flag = "RedSparks",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Sparks") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Red Storm",
--	CurrentValue = false,
--	Flag = "RedStorm",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Storm") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Yellow Sparks",
--	CurrentValue = false,
--	Flag = "YellowSparks",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Sparks") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local AutoBuySection = AutoBuyTrailsTab:CreateSection("Rare trails")

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Blue Lightning",
--	CurrentValue = false,
--	Flag = "BlueLightning",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Lightning") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Blue Soul",
--	CurrentValue = false,
--	Flag = "BlueSoul",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Soul") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Golden Lightning",
--	CurrentValue = false,
--	Flag = "GoldenLightning",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Golden Lightning") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Green Lightning",
--	CurrentValue = false,
--	Flag = "GreenLightning",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Lightning") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Green Soul",
--	CurrentValue = false,
--	Flag = "GreenSoul",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Soul") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Orange Lightning",
--	CurrentValue = false,
--	Flag = "OrangeLightning",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Lightning") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Orange Soul",
--	CurrentValue = false,
--	Flag = "OrangeSoul",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Soul") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Pink Lightning",
--	CurrentValue = false,
--	Flag = "PinkLightning",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Lightning") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Pink Soul",
--	CurrentValue = false,
--	Flag = "PinkSoul",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Soul") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Purple Lightning",
--	CurrentValue = false,
--	Flag = "PurpleLightning",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Lightning") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Purple Soul",
--	CurrentValue = false,
--	Flag = "PurpleSoul",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Soul") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Rainbow Trail",
--	CurrentValue = false,
--	Flag = "RainbowTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Red Lightning",
--	CurrentValue = false,
--	Flag = "RedLightning",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Lightning") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Red Soul",
--	CurrentValue = false,
--	Flag = "RedSoul",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Soul") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Third Trail",
--	CurrentValue = false,
--	Flag = "ThirdTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Third Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Yellow Soul",
--	CurrentValue = false,
--	Flag = "YellowSoul",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Soul") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local AutoBuySection = AutoBuyTrailsTab:CreateSection("Epic trails")

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "2nd Trail",
--	CurrentValue = false,
--	Flag = "2ndTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("2nd Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "BG Speed",
--	CurrentValue = false,
--	Flag = "BGSpeed",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("BG Speed") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Blue Gem",
--	CurrentValue = false,
--	Flag = "BlueGem",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Gem") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Green Gem",
--	CurrentValue = false,
--	Flag = "GreenGem",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Gem") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "OG Speed",
--	CurrentValue = false,
--	Flag = "OGSpeed",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("OG Speed") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Orange Gem",
--	CurrentValue = false,
--	Flag = "OrangeGem",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Gem") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "PP Speed",
--	CurrentValue = false,
--	Flag = "PPSpeed",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("PP Speed") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Pink Gem",
--	CurrentValue = false,
--	Flag = "PinkGem",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Gem") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Purple Gem",
--	CurrentValue = false,
--	Flag = "PurpleGem",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Gem") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "RB Speed",
--	CurrentValue = false,
--	Flag = "RBSpeed",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("RB Speed") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Rainbow Lightning",
--	CurrentValue = false,
--	Flag = "RainbowLightning",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Lightning") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Rainbow Soul",
--	CurrentValue = false,
--	Flag = "RainbowSoul",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Soul") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Rainbow Sparks",
--	CurrentValue = false,
--	Flag = "RainbowSparks",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Sparks") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Rainbow Storm",
--	CurrentValue = false,
--	Flag = "RainbowStorm",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Storm") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Red Gem",
--	CurrentValue = false,
--	Flag = "RedGem",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Gem") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "YB Speed",
--	CurrentValue = false,
--	Flag = "YBSpeed",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("YB Speed") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local AutoBuySection = AutoBuyTrailsTab:CreateSection("Unique trails")

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "1st Trail",
--	CurrentValue = false,
--	Flag = "1stTrail",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("1st Trail") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Dragonfire",
--	CurrentValue = false,
--	Flag = "Dragonfire",
--	Callback = function(state)
--		if state then 
--			selectedTrail = "Dragonfire"
--			_G.DragonfireLoop = true 
--			while _G.DragonfireLoop do wait(0.25) 
--				if not _G.evolving and not _G.selling then
--					local args = { 
--						[1] = cPetShopFolder:WaitForChild("Dragonfire") 
--					} 
--					cPetShopRemote:InvokeServer(unpack(args)) 
--				end
--			end 
--		else 
--			_G.DragonfireLoop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Hyperblast",
--	CurrentValue = false,
--	Flag = "Hyperblast",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Hyperblast") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Rainbow Speed",
--	CurrentValue = false,
--	Flag = "RainbowSpeed",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Speed") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Rainbow Steps",
--	CurrentValue = false,
--	Flag = "RainbowSteps",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait(0.25) 
--				local args = { 

--					[1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Rainbow Steps") 

--				} 
--				game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 

--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})


local AutoBuySection = AutoBuyTrailsTab:CreateSection("Evolve trails settings")

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Evolve selected trail",
--	CurrentValue = false,
--	Flag = "evolveselectedtrail",
--	Callback = function(state)
--		if state then 
--			_G.evolving = true
--			while _G.evolving do wait() 
--				if selectedTrail then
--					petEvolveEvent:FireServer("evolvePet", selectedTrail)
--					--trailEvolveEvent:FireServer("evolveTrail", selectedTrail)
--				end
--			end 
--		else 
--			_G.evolving = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Evolve all trails",
--	CurrentValue = false,
--	Flag = "evolvealltrails",
--	Callback = function(state)
--		if state then 
--			_G.evolving = true
--			while _G.evolving do wait() 
--				for _, child in pairs(cPetShopFolder:GetChildren()) do
--					petEvolveEvent:FireServer("evolvePet", child.Name)
--					--trailEvolveEvent:FireServer("evolveTrail", child.Name)
--				end
--			end 
--		else 
--			_G.evolving = false 
--		end 
--	end
--})

--local AutoBuySection = AutoBuyTrailsTab:CreateSection("Sell trails settings")

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Sell selected trail",
--	CurrentValue = false,
--	Flag = "sellselectedtrail",
--	Callback = function(state)
--		if state then 
--			_G.selling = true
--			while _G.selling do wait() 
--				if selectedPet then
--					sellPetEvent:FireServer("sellPet", selectedPet)
--				end
--			end 
--		else 
--			_G.selling = false 
--		end 
--	end
--})

--local Toggle = AutoBuyTrailsTab:CreateToggle({
--	Name = "Sell all trails",
--	CurrentValue = false,
--	Flag = "sellalltrails",
--	Callback = function(state)
--		if state then 
--			_G.selling = true
--			while _G.selling do wait() 
--				for _, child in pairs(cPetShopFolder:GetChildren()) do
--					sellPetEvent:FireServer("sellPet", child.Name)
--				end
--			end 
--		else 
--			_G.selling = false 
--		end 
--	end
--})

local AutoTradeTab = Window:CreateTab("Auto trade", 4483362458) 
local AutoTradeSection = AutoTradeTab:CreateSection("Auto trade settings")

--local Players = game:GetService("Players")
--local ReplicatedStorage = game:GetService("ReplicatedStorage")
--local tradingEvent = ReplicatedStorage:WaitForChild("rEvents"):WaitForChild("tradingEvent")

--local Players = game:GetService("Players")

--local function UpdatePlayerList()
--	local playerList = {}
--	for _, player in pairs(Players:GetPlayers()) do
--		table.insert(playerList, player.Name)
--	end
--	return playerList
--end

--local targetPlayerName = ""

--local Dropdown = AutoTradeTab:CreateDropdown({
--	Name = "Select Player",
--	Options = UpdatePlayerList(),
--	CurrentOption = {""},
--	MultipleOptions = false,
--	Flag = "SelectplayerInlist",
--	Callback = function(Option)
--		targetPlayerName = Option[1]
--	end,
--})

--local Input = AutoTradeTab:CreateInput({
--	Name = "Enter player name",
--	PlaceholderText = "name",
--	RemoveTextAfterFocusLost = false,
--	Callback = function(Text)
--		targetPlayerName = Text
--	end,
--})

--local function getTargetPlayer()
--	return Players:FindFirstChild(targetPlayerName)
--end

--local TradeRequestToggle = AutoTradeTab:CreateToggle({
--	Name = "Trade requested player",
--	CurrentValue = false,
--	Flag = "TradeRequestToggle",
--	Callback = function(Value)
--		if Value then 
--			_G.tradeRequestLoop = true 
--			while _G.tradeRequestLoop do
--				wait(0.1)
--				local targetPlayer = getTargetPlayer()
--				if targetPlayer then
--					tradingEvent:FireServer("sendTradeRequest", targetPlayer)
--				end
--			end 
--		else 
--			_G.tradeRequestLoop = false 
--		end 
--	end,
--})

--local AcceptSpecificToggle = AutoTradeTab:CreateToggle({
--	Name = "Accept trading requests (from player)",
--	CurrentValue = false,
--	Flag = "AcceptSpecificToggle", 
--	Callback = function(Value)
--		if Value then 
--			_G.acceptSpecificLoop = true 
--			while _G.acceptSpecificLoop do
--				wait(0.1)
--				local targetPlayer = getTargetPlayer()
--				if targetPlayer then
--					tradingEvent:FireServer("requestAccepted", targetPlayer)
--				end
--			end 
--		else 
--			_G.acceptSpecificLoop = false 
--		end 
--	end,
--})

---- Update dropdown when a player joins
--Players.PlayerAdded:Connect(function(player)
--	Dropdown:Refresh(updatePlayerList(), true)
--end)

---- Update dropdown when a player leaves
--Players.PlayerRemoving:Connect(function(player)
--	Dropdown:Refresh(updatePlayerList(), true)
--end)


--local AcceptAllToggle = AutoTradeTab:CreateToggle({
--	Name = "Accept trading requests (from all)",
--	CurrentValue = false,
--	Flag = "AcceptAllToggle", 
--	Callback = function(Value)
--		if Value then 
--			_G.acceptAllLoop = true 
--			while _G.acceptAllLoop do
--				wait(0.25)
--				for _, player in ipairs(Players:GetPlayers()) do
--					if player ~= Players.LocalPlayer then
--						tradingEvent:FireServer("requestAccepted", player)
--					end
--				end
--			end 
--		else 
--			_G.acceptAllLoop = false 
--		end 
--	end,
--})

--local AutoAcceptOfferToggle = AutoTradeTab:CreateToggle({
--	Name = "Auto Accept The Trading Offer",
--	CurrentValue = false,
--	Flag = "AutoAcceptOfferToggle", 
--	Callback = function(Value)
--		if Value then 
--			_G.autoAcceptOfferLoop = true 
--			while _G.autoAcceptOfferLoop do
--				wait(0.1)
--				tradingEvent:FireServer("acceptTrade")
--			end 
--		else 
--			_G.autoAcceptOfferLoop = false 
--		end 
--	end,
--})

-- local Section = AutoTradeTab:CreateSection("Enable/Disable trades (game already has buttons for it💀)")

-- local Button = AutoTradeTab:CreateButton({
-- 	Name = "Enabled trades",
-- 	Callback = function()
-- 		local args = {
-- 			[1] = "enableTrading"
-- 		}

-- 		game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args))

-- 	end,
-- })

-- local Button = AutoTradeTab:CreateButton({
-- 	Name = "Disable trades",
-- 	Callback = function()
-- 		local args = {
-- 			[1] = "disableTrading"
-- 		}

-- 		game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args))

-- 	end,
-- })

local AutoRaceTab = Window:CreateTab("Auto Race", 4483362458) 
local AutoRaceSection = AutoRaceTab:CreateSection("Manually Win Races")

local AutoRaceSection = AutoRaceTab:CreateSection("Manually Win Races In City")

local Button = AutoRaceTab:CreateButton({
	Name = "GrassLand Race Win TP",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		char.HumanoidRootPart.CFrame = CFrame.new(1680, 30, -5945)
	end,
})

local Button = AutoRaceTab:CreateButton({
	Name = "Magma Race Win TP",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		char.HumanoidRootPart.CFrame = CFrame.new(990, 30, -10988)
	end,
})

local Button = AutoRaceTab:CreateButton({
	Name = "Desert Race Win TP",
	Callback = function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		char.HumanoidRootPart.CFrame = CFrame.new(50, 30, -8681)
	end,
})

--local AutoRaceSection = AutoRaceTab:CreateSection("Manually Win Races In Outer outer space")

--local Button = AutoRaceTab:CreateButton({
--	Name = "Outer outer space Race Win TP",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		char.HumanoidRootPart.CFrame = CFrame.new(-4364, 60, -14038)
--	end,
--})

--local AutoRaceSection = AutoRaceTab:CreateSection("Manually Win Races In Speed Desert City")

--local Button = AutoRaceTab:CreateButton({
--	Name = "Speed Desert City Race Win TP",
--	Callback = function()
--		local plr = game.Players.LocalPlayer
--		local char = plr.Character
--		char.HumanoidRootPart.CFrame = CFrame.new(2052, 57, 17931)
--	end,
--})

--local AutoRaceSection = AutoRaceTab:CreateSection("-------------------------------------------------------------------------------------------")

--local AutoRaceSection = AutoRaceTab:CreateSection("Automated Win Races In City")

--local Toggle = AutoRaceTab:CreateToggle({
--	Name = "Auto Win Race GrassLand",
--	CurrentValue = false,
--	Flag = "GrassLand",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait()
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(1680, 30, -5945)
--				wait(0.1) 
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(1680, 50, -5945)
--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoRaceTab:CreateToggle({
--	Name = "Auto Win Race Magma",
--	CurrentValue = false,
--	Flag = "Magma",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait()
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(990, 30, -10988)
--				wait(0.1) 
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(990, 50, -10988)
--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoRaceTab:CreateToggle({
--	Name = "Auto Win Race Desert",
--	CurrentValue = false,
--	Flag = "Desert",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait()
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(50, 30, -8681)
--				wait(0.1) 
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(50, 50, -8681)
--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Toggle = AutoRaceTab:CreateToggle({
--	Name = "Auto Win all Races",
--	CurrentValue = false,
--	Flag = "WinAllRace",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do 
--				wait(0.1) -- affected by win all races speed slider
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(1680, 30, -5945)
--				wait(0.1) -- affected by win all races speed slider
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(990, 30, -10988)
--				wait(0.1) -- affected by win all races speed slider
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(50, 30, -8681)
--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local Slider = AutoRaceTab:CreateSlider({
--	Name = "Win all races speed",
--	Range = {1, 1000},
--	Increment = 10,
--	Suffix = "Race speed",
--	CurrentValue = 10,
--	Flag = "Winallracesspeed",
--	Callback = function(Value)

--	end,
--})

local Toggle = AutoRaceTab:CreateToggle({
	Name = "Auto Win all Races",
	CurrentValue = false,
	Flag = "WinAllRace",
	Callback = function(state)
		if state then 
			_G.loop = true 
			while _G.loop == true do 
				local waitTime = _G.Winallracesspeed / 1000 -- Convert slider value to seconds
				wait(waitTime)
				local plr = game.Players.LocalPlayer
				local char = plr.Character
				char.HumanoidRootPart.CFrame = CFrame.new(1680, 1, -5945)
				wait(waitTime)
				local plr = game.Players.LocalPlayer
				local char = plr.Character
				char.HumanoidRootPart.CFrame = CFrame.new(990, 1, -10988)
				wait(waitTime)
				local plr = game.Players.LocalPlayer
				local char = plr.Character
				char.HumanoidRootPart.CFrame = CFrame.new(50, 1, -8681)
			end 
		else 
			_G.loop = false 
		end 
	end
})

local Slider = AutoRaceTab:CreateSlider({
	Name = "Win all races speed",
	Range = {1, 1000},
	Increment = 10,
	Suffix = "",
	CurrentValue = 10,
	Flag = "Winallracesspeed",
	Callback = function(Value)
		_G.Winallracesspeed = Value -- Store the slider value in a global variable
	end,
})

-- Initialize the speed value
_G.Winallracesspeed = 10


--local AutoRaceSection = AutoRaceTab:CreateSection("Automated Win Race In outer space")

--local Toggle = AutoRaceTab:CreateToggle({
--	Name = "Auto Win Race Starway",
--	CurrentValue = false,
--	Flag = "Starway",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait()
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(-4364, 60, -14038)
--				wait(0.1) 
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(-4364, 70, -14038)
--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

--local AutoRaceSection = AutoRaceTab:CreateSection("Automated Win Race In Desert City")

--local Toggle = AutoRaceTab:CreateToggle({
--	Name = "Auto Win Race Speedway",
--	CurrentValue = false,
--	Flag = "Speedway",
--	Callback = function(state)
--		if state then 
--			_G.loop = true 
--			while _G.loop == true do wait()
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(2052, 57, 17931)
--				wait(0.1) 
--				local plr = game.Players.LocalPlayer
--				local char = plr.Character
--				char.HumanoidRootPart.CFrame = CFrame.new(2052, 63, 17931)
--			end 
--		else 
--			_G.loop = false 
--		end 
--	end
--})

local AutoRaceSection = AutoRaceTab:CreateSection("-------------------------------------------------------------------------------------------")

local AutoRaceSection = AutoRaceTab:CreateSection("Automated Join Race(you need this activated to farm races)")

local Toggle = AutoRaceTab:CreateToggle({
	Name = "Join Race",
	CurrentValue = false,
	Flag = "autojoinrace", 
	Callback = function(state)
		if state then 
			_G.loop = true 
			while _G.loop == true do wait(0.001)
				--for i = 1, 16 do
					local args = {
						[1] = "joinRace"
					}
					ReplicatedStorage:WaitForChild("rEvents"):WaitForChild("raceEvent"):FireServer(unpack(args))
				--end
			end 
		else 
			_G.loop = false 
		end 
	end
})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function TeleportPlayer(cframe)
	local player = Players.LocalPlayer
	local character = player.Character
	if character and character:FindFirstChild("HumanoidRootPart") then
		character.HumanoidRootPart.CFrame = cframe
	end
end

local function GetRaceMap()
	local gameGui = Players.LocalPlayer.PlayerGui:WaitForChild("gameGui")
	local raceJoinLabel = gameGui:FindFirstChild("raceJoinLabel")
	if raceJoinLabel then
		local text = raceJoinLabel.Text
		if text:find("Grassland") then
			return "Grassland"
		elseif text:find("Magma") then
			return "Magma"
		elseif text:find("Desert") then
			return "Desert"
		elseif text:find("Speedway") then
			return "Speedway"
		elseif text:find("Starway") then
			return "Starway"
		end
	end
	return nil
end

local AutoRaceToggle = AutoRaceTab:CreateToggle({
	Name = "Auto race V4",
	CurrentValue = false,
	Flag = "autorace",
	Callback = function(state)
		if state then
			_G.autoRaceLoop = true
			spawn(function()
				while _G.autoRaceLoop do
					local raceTimer = ReplicatedStorage:WaitForChild("raceTimer")
					local raceStarted = ReplicatedStorage:WaitForChild("raceStarted")
					local player = Players.LocalPlayer
					local character = player.Character

					-- Wait for the race timer to hit zero
					while raceTimer.Value > 0 and _G.autoRaceLoop do
						task.wait(0.1)
						--print('waiting for race timer')
					end

					-- Check if the toggle is still active before proceeding
					if not _G.autoRaceLoop then
						break
					end

					-- Wait for a second after the timer hits zero
					task.wait(1)
					--print('timer hit zero, waiting for race to start')

					-- Save position only once when the race starts
					local savedPosition = nil
					if character and character:FindFirstChild("HumanoidRootPart") then
						savedPosition = character.HumanoidRootPart.CFrame
						--print('saved player pos')
					end

					-- Check if the toggle is still active before proceeding
					if not _G.autoRaceLoop then
						break
					end

					-- Fire event to join the race once timer hits 0
					if raceTimer.Value == 0 then
						for i = 1, 3 do
							local args = {
								[1] = "joinRace"
							}
							ReplicatedStorage:WaitForChild("rEvents"):WaitForChild("raceEvent"):FireServer(unpack(args))
						end
						--print('player joined race using event')
					end

					-- Check if the toggle is still active before proceeding
					if not _G.autoRaceLoop then
						break
					end

					-- Wait for the race to start
					raceStarted.Changed:Wait()

					if raceStarted.Value and _G.autoRaceLoop then
						local map = GetRaceMap()
						if map then
							local teleportCFrame
							if map == "Grassland" then
								teleportCFrame = CFrame.new(1680, 1, -5945)
							elseif map == "Magma" then
								teleportCFrame = CFrame.new(990, 1, -10988)
							elseif map == "Desert" then
								teleportCFrame = CFrame.new(50, 1, -8681)
							elseif map == "Speedway" then
								teleportCFrame = CFrame.new(2052, 1, 17931)
							elseif map == "Starway" then
								teleportCFrame = CFrame.new(-4364, 1, -14038)
							end

							if teleportCFrame then
								TeleportPlayer(teleportCFrame)
								--print('teleported plr to finish line')
								task.wait(0.01)

								-- Teleport back to saved position if needed, even if another script teleports the player
								local teleportedBack = false
								while not teleportedBack and _G.autoRaceLoop do
									for i = 1, 3 do
										TeleportPlayer(savedPosition)
										wait(0.1)
									end
									--print('teleported player to save pos')
									task.wait(0.1)
									if character and character:FindFirstChild("HumanoidRootPart") then
										if (character.HumanoidRootPart.Position - savedPosition.Position).Magnitude < 1 then
											teleportedBack = true
										end
									end
								end
							end
						end
					end

					-- Wait for the race to end and timer to reset
					while raceTimer.Value == 0 and _G.autoRaceLoop do
						task.wait(0.1)
					end

					-- Reset for the next race
					if raceTimer.Value > 0 and _G.autoRaceLoop then
						--print('waiting for next race')
					end
				end
			end)
		else
			_G.autoRaceLoop = false
		end
	end
})

local MiscTab = Window:CreateTab("Misc", 4483362458) 
local Section = MiscTab:CreateSection("Utilities")

local Button = MiscTab:CreateButton({
	Name = "Anti AFK",
	Callback = function()
		local VirtualUser = game:GetService("VirtualUser")
		local Players = game:GetService("Players")
		local LocalPlayer = Players.LocalPlayer

		LocalPlayer.Idled:Connect(function()
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)

		Rayfield:Notify({
			Title = "GHOST HUB",
			Content = "Anti AFK Activated!",
			Duration = 5,
			Image = 13047715178,
			Actions = { 
				Ignore = {
					Name = "Skip",
					Callback = function()
						--print("The user tapped Skip!")
					end
				},
			},
		})
	end,
})

--local Button = MiscTab:CreateButton({
--	Name = "FPS BOOST",
--	Callback = function()
--		_G.Settings = {
--			Players = {
--				["Ignore Me"] = true, -- Ignore your Character
--				["Ignore Others"] = true -- Ignore other Characters
--			},
--			Meshes = {
--				Destroy = false, -- Destroy Meshes
--				LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
--			},
--			Images = {
--				Invisible = true, -- Invisible Images
--				LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
--				Destroy = false, -- Destroy Images
--			},
--			["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
--			["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
--			["No Explosions"] = true, -- Makes Explosion's invisible
--			["No Clothes"] = true, -- Removes Clothing from the game
--			["Low Water Graphics"] = true, -- Removes Water Quality
--			["No Shadows"] = true, -- Remove Shadows
--			["Low Rendering"] = true, -- Lower Rendering
--			["Low Quality Parts"] = true -- Lower quality parts
--		}
--		loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
--	end,
--})

local isToggleOn = false

--local Toggle = MiscTab:CreateToggle({
--	Name = "Hide race UI",
--	CurrentValue = false,
--	Flag = "hideraceui", 
--	Callback = function(state)
--		local raceJoinLabel = game.Players.LocalPlayer.PlayerGui.gameGui.raceJoinLabel
--		local winnersFrame = game.Players.LocalPlayer.PlayerGui.gameGui.winnersFolder.winnersFrame

--		isToggleOn = state

--		if state then 
--			spawn(function()
--				while isToggleOn do
--					raceJoinLabel.Visible = false
--					winnersFrame.Visible = false
--					wait(0.01)
--				end
--			end)
--		else 
--			raceJoinLabel.Visible = true
--			winnersFrame.Visible = true 
--		end 
--	end
--})

--local Toggle = MiscTab:CreateToggle({
--	Name = "Hide server message in chat",
--	CurrentValue = false,
--	Flag = "hideservermsg", 
--	Callback = function(state)
--		local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
--		local chatFrame = playerGui:WaitForChild("Chat"):WaitForChild("Frame"):WaitForChild("ChatChannelParentFrame"):WaitForChild("Frame_MessageLogDisplay"):WaitForChild("Scroller")

--		local function hideServerMessage()
--			for _, child in ipairs(chatFrame:GetChildren()) do
--				if child:IsA("Frame") and child.Name == "Frame" then
--					local textLabel = child:FindFirstChild("TextLabel")
--					if textLabel and textLabel.Text == "[Server]: Remember to like and favorite the game! Thank you!" then
--						child.Visible = not state
--					elseif textLabel and textLabel.Text == "[Server]: Join Scriptbloxian Studios for +1 Daily Spins!" then
--						child.Visible = not state
--					end
--				end
--			end
--		end

--		if state then 
--			_G.loop = true 
--			spawn(function()
--				while _G.loop do
--					hideServerMessage()
--					wait(0.01) -- Adjust this value to control how often the check is performed
--				end
--			end)
--			Rayfield:Notify({
--				Title = "GHOST HUB",
--				Content = "Server messages hidden!",
--				Duration = 5,
--				Image = 13047715178,
--				Actions = { 
--					Ignore = {
--						Name = "Skip",
--						Callback = function()

--						end
--					},
--				},
--			})
--		else 
--			_G.loop = false 
--			hideServerMessage() -- Ensure visibility is reset when toggled off
--		end
--	end
--})

--local Button = MiscTab:CreateButton({
--	Name = "Clear chat",
--	Callback = function()
--		local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
--		local chatFrame = playerGui:WaitForChild("Chat"):WaitForChild("Frame"):WaitForChild("ChatChannelParentFrame"):WaitForChild("Frame_MessageLogDisplay"):WaitForChild("Scroller")

--		for _, child in ipairs(chatFrame:GetChildren()) do
--			if child:IsA("Frame") and child.Name == "Frame" then
--				child.Visible = false
--			end
--		end
--	end,
--})

--local Button = MiscTab:CreateButton({
--	Name = "Reset character",
--	Callback = function()
--		game.Players.LocalPlayer.Character.Humanoid.Health = 0
--	end,
--})

local Button = MiscTab:CreateButton({
	Name = "Expand torso (increment)",
	Callback = function()
		local player = game.Players.LocalPlayer
		local character = player.Character
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
		humanoidRootPart.Size = humanoidRootPart.Size + Vector3.new(1, 1, 1)
	end,
})

--local Button = MiscTab:CreateButton({
--	Name = "Expand torso (best value)",
--	Callback = function()
--		local player = game.Players.LocalPlayer
--		local character = player.Character
--		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
--		humanoidRootPart.Size = Vector3.new(7, 7, 7)
--	end,
--})

--local Button = MiscTab:CreateButton({
--	Name = "Restore size",
--	Callback = function()
--		local player = game.Players.LocalPlayer
--		local character = player.Character
--		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
--		humanoidRootPart.Size = Vector3.new(1.600000023841858, 1.7999999523162842, 0.8999999761581421)
--	end,
--})

local Toggle = MiscTab:CreateToggle({
	Name = "Anti Ragdoll",
	Default = false,
	Callback = function(Value)
		local character = game.Players.LocalPlayer.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")

		if Value then
			if humanoid then
				humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
				humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
			end
		else
			if humanoid then
				humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
				humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
			end
		end
	end
})

local Workspace = game:GetService("Workspace")

local function updateLeaderboardList(leaderboardName)
	local leaderboardModel = Workspace:FindFirstChild(leaderboardName)
	if not leaderboardModel then return {} end

	local leaderboardPart = leaderboardModel:FindFirstChild("leaderboardPart")
	if not leaderboardPart then return {} end

	local leaderboardGui = leaderboardPart:FindFirstChildOfClass("SurfaceGui")
	if not leaderboardGui then return {} end

	local playerList = leaderboardGui:FindFirstChild("playerList")
	if not playerList then return {} end

	local innerFrame = playerList:FindFirstChild("innerFrame")
	if not innerFrame then return {} end

	local options = {}
	for _, frame in ipairs(innerFrame:GetChildren()) do
		if frame:IsA("Frame") then
			local rankLabel = frame:FindFirstChild("rankLabel")
			local nameLabel = frame:FindFirstChild("nameLabel")
			local amountLabel = frame:FindFirstChild("amountLabel")

			if rankLabel and nameLabel and amountLabel then
				local optionText = string.format("%s   |   %s   |   %s", 
					rankLabel.Text, 
					nameLabel.Text, 
					amountLabel.Text
				)
				table.insert(options, optionText)
			end
		end
	end

	return options
end

local rebirthsDropdown = MiscTab:CreateDropdown({
	Name = "Rebirths leaderboard",
	Options = updateLeaderboardList("rebirthsLeaderboard"),
	CurrentOption = {""},
	MultipleOptions = false,
	Flag = "rebirthleader",
	Callback = function(Option)
		-- You can add any specific actions here when an option is selected
	end,
})

local racesDropdown = MiscTab:CreateDropdown({
	Name = "Races leaderboard",
	Options = updateLeaderboardList("racesLeaderboard"),
	CurrentOption = {""},
	MultipleOptions = false,
	Flag = "racesleader",
	Callback = function(Option)
		-- You can add any specific actions here when an option is selected
	end,
})

-- Function to update both leaderboards
local function updateLeaderboards()
	rebirthsDropdown:Refresh(updateLeaderboardList("rebirthsLeaderboard"), true)
	racesDropdown:Refresh(updateLeaderboardList("racesLeaderboard"), true)
end

-- Set up a separate thread to update leaderboards every minute
spawn(function()
	while true do
		wait(60) -- Wait for 60 seconds (1 minute)
		updateLeaderboards()
	end
end)

-- Your other code can continue here
-- Add more dropdowns, buttons, or any other functionality



--local Button = MiscTab:CreateButton({
--	Name = "Join Low Ping Server",
--	Callback = function()
--		game.StarterGui:SetCore("SendNotification", {Title="GHOST Hub"; Text="Joining Low Ping server (please wait)..."; Duration=10000;})

--		local HTTPService = game:GetService("HttpService")
--		local TeleportService = game:GetService("TeleportService")
--		local StatsService = game:GetService("Stats")

--		local function fetchServersData(placeId, limit)
--			local url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?limit=%d", placeId, limit)
--			local success, response = pcall(function()
--				return HTTPService:JSONDecode(game:HttpGet(url))
--			end)

--			if success and response and response.data then
--				return response.data
--			end

--			return nil
--		end

--		local placeId = game.PlaceId
--		local serverLimit = 15
--		local servers = fetchServersData(placeId, serverLimit)

--		if not servers then
--			return
--		end

--		local lowestPingServer = servers[1]

--		for _, server in pairs(servers) do
--			if server["ping"] < lowestPingServer["ping"] and server.maxPlayers > server.playing then
--				lowestPingServer = server
--			end
--		end

--		local commonLoadTime = 5
--		task.wait(commonLoadTime)

--		local pingThreshold = 80
--		local serverStats = StatsService.Network.ServerStatsItem
--		local dataPing = serverStats["Data Ping"]:GetValueString()
--		local pingValue = tonumber(dataPing:match("(%d+)"))

--		if pingValue >= pingThreshold then
--			TeleportService:TeleportToPlaceInstance(placeId, lowestPingServer.id)
--		else
--			-- Good ping
--		end
--	end,
--})

-- local Button = MiscTab:CreateButton({
-- 	Name = "Join Low Player Server",
-- 	Callback = function()
-- 		game.StarterGui:SetCore("SendNotification", {Title="GHOST Hub"; Text="Joining Low Player server..."; Duration=10000;})

-- 		local Http = game:GetService("HttpService")
-- 		local TPS = game:GetService("TeleportService")
-- 		local Api = "https://games.roblox.com/v1/games/"

-- 		local _place = game.PlaceId
-- 		local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
-- 		local function ListServers(cursor)
-- 			local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
-- 			return Http:JSONDecode(Raw)
-- 		end

-- 		local Server, Next; repeat
-- 			local Servers = ListServers(Next)
-- 			Server = Servers.data[1]
-- 			Next = Servers.nextPageCursor
-- 		until Server

-- 		TPS:TeleportToPlaceInstance(_place,Server.id,game:GetService('Players').LocalPlayer)
-- 	end,
-- })

local Button = MiscTab:CreateButton({
	Name = "destroy Lib",
	Callback = function()
		Rayfield:Destroy()
	end,
})
