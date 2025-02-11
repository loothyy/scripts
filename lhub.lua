local KeyGuardians = loadstring(game:HttpGet("https://raw.githubusercontent.com/HoyoGey/Script/refs/heads/main/src/libs/PublicKeyUI.luau"))()
local settings = {
    publicToken = "60f783fda33c455f9366396dabe81b8e",
    privateToken = "fec834b05c55422a9023202d5e054e89",
    trueData = "ce4aa820cded4ff1ade396b5c6db2bcf",
    falseData = "3a80eaa529424c6c98d35abbf7eea509",
}

local subsettings = {
   onlyPremium = false,
    filesave = "nextkey.txt",
}

repeat wait() until KeyGuardians:Init(settings, subsettings) == true
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local function STU()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://6228337171" -- Change this to any sound ID
    sound.Volume = 1
    sound.Parent = game:GetService("SoundService") -- Parent to SoundService
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 5) -- Remove sound after 5 seconds
end

-- Play sound when script starts
STU()

-- Function to play a tab switch sound
local function playTabSwitchSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://92876108656319" -- Change this to any sound ID
    sound.Volume = 1
    sound.Parent = game:GetService("SoundService") -- Parent to SoundService
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 2) -- Remove sound after 2 seconds
end

local Window = Fluent:CreateWindow({
    Title = "LHUB",
    SubTitle = "Welcome to LHub",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
})

local Tabs = {
    Home = Window:AddTab({ Title = "Home" }),
    Player = Window:AddTab({ Title = "Player" }),
    UniTab = Window:AddTab({ Title = "Universal" }),
    SRB = Window:AddTab({ Title = "ScriptBlox" }),
    HubsTab = Window:AddTab({ Title = "Hubs" }),
    FE = Window:AddTab({ Title = "FE" }),
    AM = Window:AddTab({ Title = "Adopt Me" }),
    ATD = Window:AddTab({ Title = "Anime Tower Defense" }),
    AR = Window:AddTab({ Title = "Arsenal" }),
    AW = Window:AddTab({ Title = "Ability Wars" }),
    AWS = Window:AddTab({ Title = "Arm Wrestling Simulator" }),
    BABFT = Window:AddTab({ Title = "Build A Boat For Treasure" }),
    BD = Window:AddTab({ Title = "Baddies" }),
    BB = Window:AddTab({ Title = "Blade Ball" }),
    BF = Window:AddTab({ Title = "Blox Fruits" }),
    BI2 = Window:AddTab({ Title = "Break In 2" }),
    BLB = Window:AddTab({ Title = "Bloxburg" }),
    BLR = Window:AddTab({ Title = "Blue Lock Rivals" }),
    BSS = Window:AddTab({ Title = "Bee Swarm Simulator" }),
    BUB = Window:AddTab({ Title = "Busy Business" }),
    BW = Window:AddTab({ Title = "BedWars" }),
    CC2 = Window:AddTab({ Title = "Car Crushers 2" }),
    CB = Window:AddTab({ Title = "Counter Blox" }),
    CRI = Window:AddTab({ Title = "Criminality" }),
    CO = Window:AddTab({ Title = "Grow Your Country!" }),
    CR = Window:AddTab({ Title = "Cart Ride" }),
    CSTW = Window:AddTab({ Title = "Can't Say The Word" }),
    DH = Window:AddTab({ Title = "Da Hood" }),
    DO = Window:AddTab({ Title = "Doors" }),
    DTI = Window:AddTab({ Title = "Dress To Impress" }),
    EV = Window:AddTab({ Title = "Evade" }),
    FI = Window:AddTab({ Title = "Fisch" }),
    FL = Window:AddTab({ Title = "Frontlines" }),
    FPS = Window:AddTab({ Title = "Flex Your FPS And Ping!" }),
    JA = Window:AddTab({ Title = "JailBreak" }),
    JI = Window:AddTab({ Title = "Jujutsu Infinite" }),
    JS = Window:AddTab({ Title = "Jujutsu Shenanigans" }),
    LO = Window:AddTab({ Title = "Locofficial" }),
    LT2 = Window:AddTab({ Title = "Lumber Tycoon 2" }),
    MM2 = Window:AddTab({ Title = "Murder Mystery 2" }),
    MP = Window:AddTab({ Title = "MIDI Piano Player" }),
    MR = Window:AddTab({ Title = "My Restaurant" }),
    NDS = Window:AddTab({ Title = "Natural Disaster Survival" }),
    PD = Window:AddTab({ Title = "PLS DONATE" }),
    PG = Window:AddTab({ Title = "Pets Go!" }),
    PI = Window:AddTab({ Title = "Piggy" }),
    PL = Window:AddTab({ Title = "Prison Life" }),
    PS99 = Window:AddTab({ Title = "Pet Simulator 99!" }),
    RI = Window:AddTab({ Title = "Rivals" }),
    RT2 = Window:AddTab({ Title = "Restaurant Tycoon 2" }),
    SA = Window:AddTab({ Title = "Starving Artists" }),
    SB = Window:AddTab({ Title = "Spelling Bee!" }),
    SG = Window:AddTab({ Title = "Shrimp Game" }),
    SL = Window:AddTab({ Title = "Shindo Life" }),
    SS = Window:AddTab({ Title = "Supermarket Simulator" }),
    TB = Window:AddTab({ Title = "Taxi Boss" }),
    TDS = Window:AddTab({ Title = "Tower Defense Simulator" }),
    TH = Window:AddTab({ Title = "Therapy" }),
    TSB = Window:AddTab({ Title = "The Strongest Battlegrounds" }),
    WAAPP = Window:AddTab({ Title = "Work At A Pizza Place" }),
    WO = Window:AddTab({ Title = "1% Win Obby" }),
    WSD = Window:AddTab({ Title = "Weird Strict Dad" })
}

local UIS = game:GetService("UserInputService")

-- Function to play sound on click
function BC()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://92876108656319" -- Change this to your sound ID
    sound.Volume = 1
    sound.Parent = game:GetService("SoundService") -- Parent to SoundService
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 2) -- Remove sound after 2 seconds
end

-- Function to play a sound
local function ER()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://5188022160" -- Change this to any sound ID you want
    sound.Volume = 1
    sound.Parent = game:GetService("SoundService") -- Parent it to SoundService
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 2) -- Remove sound after 2 seconds
end

local player = game.Players.LocalPlayer

local HttpService = game:GetService("HttpService")
local webhookURL = "https://discord.com/api/webhooks/1337770672314908816/c6d_M31iR1vGirtIoTXjI9VHQDnsXWxfcbxc8BTItSu1uIF9Iucaq3mu2hJQRTXoboPL" -- 🔴 Replace with your actual webhook

-- Store input text for each category
local suggestionText = ""
local feedbackText = ""
local bugReportText = ""

local function sendToWebhook(category, text)
    if not text or text == "" then
        Fluent:Notify({ Title = "Error", Content = category .. " cannot be empty", Duration = 5 })
        return
    end

    local playerName = game.Players.LocalPlayer.Name -- Get the player's username

    local requestData = {
        ["content"] = "**New " .. category .. " Submitted by " .. playerName .. ":**\n" .. text .. "\n<@975027873872240661>"
    }

    local encodedData = HttpService:JSONEncode(requestData)

    local httpRequest = (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request) or request

    if httpRequest then
        local success, response = pcall(function()
            return httpRequest({
                Url = webhookURL,
                Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = encodedData
            })
        end)

        if success then
            Fluent:Notify({ Title = category .. " Sent", Content = "Your " .. category .. " was successfully submitted", Duration = 5 })
        else
            Fluent:Notify({ Title = "Error", Content = "Failed to send " .. category .. ". Check executor", Duration = 5 })
            warn("Webhook Error: " .. tostring(response))
        end
    else
        Fluent:Notify({ Title = "Error", Content = "Your executor does not support HTTP requests", Duration = 5 })
    end
end

Tabs.Home:AddParagraph({
     Title = "PLEASE SAY IN DETAIL",
    Content = "please say in detail cause i dont understand the bug when you guys just say 2 words"
    })

-- ✅ Suggestions Input & Button
Tabs.Home:AddInput("SuggestionsBox", {
    Title = "Submit a Suggestion",
    Default = "",
    Placeholder = "PLEASE SPECIFY GAME",
    Numeric = false,
    Callback = function(text)
        BC()
        suggestionText = text -- Store input without sending
    end
})

Tabs.Home:AddButton({
    Title = "Submit Suggestion",
    Callback = function()
        BC()
        sendToWebhook("Suggestion", suggestionText)
    end
})

-- ✅ Feedback Input & Button
Tabs.Home:AddInput("FeedbackBox", {
    Title = "Submit Feedback",
    Default = "",
    Placeholder = "PLEASE SPECIFY GAME",
    Numeric = false,
    Callback = function(text)
        BC()
        feedbackText = text
    end
})

Tabs.Home:AddButton({
    Title = "Submit Feedback",
    Callback = function()
        BC()
        sendToWebhook("Feedback", feedbackText)
    end
})

-- ✅ Bug Reports Input & Button
Tabs.Home:AddInput("BugReportBox", {
    Title = "Report a Bug",
    Default = "",
    Placeholder = "PLEASE SPECIFY GAME",
    Numeric = false,
    Callback = function(text)
        BC()
        bugReportText = text
    end
})

Tabs.Home:AddButton({
    Title = "Submit Bug Report",
    Callback = function()
        BC()
        sendToWebhook("Bug Report", bugReportText)
    end
})

Tabs.CR:AddParagraph({
     Title = "Credits", 
     Content = "Credits to reall on Scriptblox"
     })

Tabs.DO:AddButton({
    Title = "DOORS: Esp, Player Features",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
    end
})

Tabs.UniTab:AddButton({
    Title = "Universal Syn SaveInstance GUI",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/24rr/tmpignore/refs/heads/main/32423sadf133"))()
    end
})

Tabs.UniTab:AddButton({
    Title = "Subplaces Spy",
    Callback = function()
        BC()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/loothyy/scripts/refs/heads/main/subplaces%20spy.lua'),true))()
    end
})

Tabs.SB:AddButton({
    Title = "AUTO TYPE AND COPY WORDS",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/decryp1/Herkle-Hub/refs/heads/main/game%20redirect"))()
    end
})

Tabs.SB:AddButton({
    Title = "op script auto type show word",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/decryp1/Herkle-Hub/refs/heads/main/game%20redirect"))()
    end
})

Tabs.FE:AddButton({
    Title = "Jerk Off",
    Description = "For R6 and R15",
    Callback = function()
        BC()
        local G = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bwhw827g29wh/Scripts/refs/heads/main/FetchAndExecute.lua"))()

        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        
        if char then
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            
            if humanoid and humanoid.RigType == Enum.HumanoidRigType.R15 then
                G:fetchAndExecute("https://pastefy.app/YZoglOyJ/raw") -- R15 script URL
            else
                G:fetchAndExecute("https://pastefy.app/wa3v2Vgm/raw") -- Non-R15 script URL
            end
        end
    end
})

local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local API = "https://scriptblox.com/api/script/search?q="
local searchResults = {}
local lastQuery = ""
local currentPage = 1

local function clearResults()
    for _, element in pairs(searchResults) do
        if element and element.Destroy then
            element:Destroy()
        end
    end
    table.clear(searchResults)
end

local function searchScriptBlox(query, page, max, paid)
    page = page or 1
    max = max or 5
    paid = paid and "paid" or "free"
    local url = API .. tostring(query):gsub(" ", "+") .. "&page=" .. tostring(page) .. "&max=" .. tostring(max) .. "&mode=" .. paid

    local success, response = pcall(function()
        return game:HttpGet(url, true)
    end)

    if success then
        local data = HttpService:JSONDecode(response)
        return data.result and data.result.scripts or {}
    else
        warn("Failed to fetch data from ScriptBlox API")
        return nil
    end
end

local function displayResults(query, page)
    clearResults()
    
    lastQuery = query
    currentPage = page

    table.insert(searchResults, Tabs.SRB:AddParagraph({ Title = "Loading...", Content = "Fetching results for: " .. query .. " (Page " .. page .. ")" }))

    task.spawn(function()
        local scripts = searchScriptBlox(query, page, 5, false)
        clearResults()

        if not scripts or #scripts == 0 then
            table.insert(searchResults, Tabs.SRB:AddParagraph({ Title = "Results", Content = "No scripts found for: " .. query .. " (Page " .. page .. ")" }))
            return
        end

        table.insert(searchResults, Tabs.SRB:AddParagraph({ Title = "Results", Content = "Showing results for: " .. query .. " (Page " .. page .. ")" }))

        for _, scriptData in ipairs(scripts) do
            table.insert(searchResults, Tabs.SRB:AddButton({
                Title = scriptData.title .. (scriptData.isPatched and " [PATCHED]" or ""),
                Description = "Game: " .. (scriptData.game and scriptData.game.name or "Unknown"),
                Callback = function()
                    BC()
                    if scriptData.isPatched then
                        ER()
                        Fluent:Notify({ Title = "Warning", Content = "This script is patched!", Duration = 4 })
                        return -- Stop execution here if it's patched
                    end

                    -- If not patched, go to script details
                    clearResults()
                    table.insert(searchResults, Tabs.SRB:AddParagraph({ Title = "Selected Script", Content = scriptData.title }))

                    -- Execute button
                    table.insert(searchResults, Tabs.SRB:AddButton({
                        Title = "Execute",
                        Callback = function()
                            BC()
                            loadstring(scriptData.script)()
                            Fluent:Notify({ Title = "Executed", Content = scriptData.title .. " executed!", Duration = 3 })
                        end
                    }))

                    -- Copy button
                    table.insert(searchResults, Tabs.SRB:AddButton({
                        Title = "Copy",
                        Callback = function()
                            BC()
                            setclipboard(scriptData.script)
                            Fluent:Notify({ Title = "Copied", Content = scriptData.title .. " copied to clipboard!", Duration = 3 })
                        end
                    }))

                    -- Teleport button (only if game ID exists)
                    if scriptData.game and scriptData.game.placeId then
                        table.insert(searchResults, Tabs.SRB:AddButton({
                            Title = "Teleport to Game",
                            Callback = function()
                                BC()
                                local placeId = scriptData.game.placeId
                                if placeId then
                                    TeleportService:Teleport(placeId, Players.LocalPlayer)
                                else
                                    Fluent:Notify({ Title = "Error", Content = "Game ID not found!", Duration = 3 })
                                end
                            end
                        }))
                    end

                    -- Back button
                    table.insert(searchResults, Tabs.SRB:AddButton({
                        Title = "Back",
                        Callback = function()
                            BC()
                            displayResults(lastQuery, currentPage)
                        end
                    }))
                end
            }))
        end

        -- Previous Page button
        if page > 1 then
            table.insert(searchResults, Tabs.SRB:AddButton({
                Title = "Previous Page",
                Callback = function()
                    BC()
                    displayResults(query, page - 1)
                end
            }))
        end

        -- Next Page button
        table.insert(searchResults, Tabs.SRB:AddButton({
            Title = "Next Page",
            Callback = function()
                BC()
                displayResults(query, page + 1)
            end
        }))
    end)
end

Tabs.SRB:AddInput("ScriptBloxSearch", {
    Title = "Search ScriptBlox",
    Placeholder = "Enter script name...",
    Numeric = false,
    Callback = function(query)
        BC()
        lastQuery = query
    end
})

Tabs.SRB:AddButton({
    Title = "Search",
    Callback = function()
        BC()
        displayResults(lastQuery, 1)
    end
})

Tabs.PL:AddButton({
    Title = "PrizzLife",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua'))()
    end
})

Tabs.BI2:AddButton({
    Title = "Starry OP Script",
    Callback = function()
--        BC()
--        loadstring(game:HttpGet("https://luau.tech/build"))() 
        ER()
        Fluent:Notify({
            Title = "Not working rn :(",
            Content = "Starry doesnt work rn (maybe later)",
            Duration = 5
        })
    end
})

Tabs.BI2:AddButton({
    Title = "Breaking Blitz",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Break-In-2-(Story)-update-28934"))()
    end
})

Tabs.PS99:AddButton({
    Title = "ZapHub Free Script",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
    end
})

Tabs.EV:AddButton({
    Title = "Script 1",
    Callback = function()
        BC()
        pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))
    end
})

Tabs.BB:AddButton({
    Title = "ZapHub Free Script",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
    end
})

Tabs.PG:AddButton({
    Title = "ZapHub Free Script",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
    end
})

Tabs.SL:AddButton({
    Title = "Shindo Life: Auto Farm, Kill All, Kill Aura",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://pastebin.com/raw/3ebJRPUJ"))()
    end
})

Tabs.CO:AddButton({
    Title = "Unlock VIP Zone",
    Description = "Unlock the VIP Zone",
    Callback = function()
        BC()
        local vipZone = workspace:FindFirstChild("Vip Zona")
        if vipZone then
            vipZone:Destroy()
            Fluent:Notify({
                Title = "VIP",
                Content = "VIP Unlocked Successfully",
                Duration = 5
            })
        else
            ER()
            Fluent:Notify({
                Title = "Error",
                Content = "VIP Zone not found",
                Duration = 5
            })
        end
    end
})

-- Speed Slider
Tabs.CO:AddSlider("SpeedSlider", {
    Title = "Speed (might be buggy)",
    Default = 16,
    Min = 16,
    Max = 1000,
    Rounding = 1,
    Callback = function(Value)
        BC()
        if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = Value
        end
    end
})

-- Highlight Correct Toggle
Tabs.WO:AddToggle("HighlightCorrect", {
    Title = "Highlight Correct",
    Default = false,
    Callback = function(state)
        BC()
        if state then
            for _, part in pairs(workspace.Bridge:GetChildren()) do
                if part:IsA("BasePart") and part.Name:match("Win") then
                    part.Color = Color3.new(0, 1, 0)
                    part.Transparency = 0
                    part.CanCollide = true
                end
            end
        end
    end
})

-- Highlight Incorrect Toggle
Tabs.WO:AddToggle("HighlightIncorrect", {
    Title = "Highlight Incorrect",
    Default = false,
    Callback = function(state)
        BC()
        if state then
            for _, part in pairs(workspace.Bridge:GetChildren()) do
                if part:IsA("BasePart") and part.Name:match("Kill") then
                    part.Color = Color3.new(1, 0, 0)
                    part.Transparency = 0
                    part.CanCollide = true
                end
            end
        end
    end
})

-- Auto Farm Toggle
local autoFarmActive = false
local function startAutoFarm()
    BC()
    local winParts = {}
    for _, part in pairs(workspace.Bridge:GetChildren()) do
        if part:IsA("BasePart") and part.Name:match("Win") then
            table.insert(winParts, part)
        end
    end

    while autoFarmActive do
        for i = 1, #winParts do
            local part = winParts[math.random(1, #winParts)]
            if part then
                player.Character.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 2.5, 0)
                wait(2)
            end
        end
        player.Character.HumanoidRootPart.CFrame = workspace.EndArea.Chest.CFrame
        wait(2)
    end
end

Tabs.WO:AddToggle("AutoFarm", {
    Title = "Auto Farm",
    Default = false,
    Callback = function(state)
        BC()
        autoFarmActive = state
        if state then
            startAutoFarm()
        end
    end
})

Tabs.UniTab:AddButton({
    Title = "Anti Fling",
    Description = "Protects you from getting flinged",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Linux6699/DaHubRevival/main/AntiFling.lua'))()
    end
})

Tabs.UniTab:AddButton({
    Title = "Infinite Yield",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

Tabs.UniTab:AddButton({
    Title = "Sirius",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://sirius.menu/sirius'))()
    end
})

Tabs.BABFT:AddButton({
    Title = "B3BFT",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealAsu/BABFT/refs/heads/main/Jan25_Source.lua'))()    
    end
})

Tabs.SA:AddButton({
    Title = "Auto Draw From Image URL",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Utilities/main/Closed/StarvingArtist.lua"))()
    end
})

Tabs.PD:AddButton({
    Title = "szze autofarm",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/CF-Trail/tzechco-PlsDonateAutofarmBackup/main/old.lua'))()
    end
})

Tabs.MP:AddButton({
    Title = "MIDI Piano Player",
    Callback = function()
        BC()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/MidiPlayer/main/package.lua"))()
    end
})

Tabs.HubsTab:AddButton({
    Title = "Astral",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua", true))()
    end
})

Tabs.HubsTab:AddButton({
    Title = "Soggyware",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://soggy-ware.cf"))()
    end
})


Tabs.HubsTab:AddButton({
    Title = "Skibidi Hub",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://gitlab.com/skibidi7575006/skibidiidi/-/raw/main/SKIBIDIIHUBB'))()
    end
})

Tabs.HubsTab:AddButton({
    Title = "Solara Hub Keyless 230 Games",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/Solara%20Hub.lua"))()
    end
})

Tabs.HubsTab:AddButton({
    Title = "Cooki Hub",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SumCooki/Cooki-Hub/refs/heads/main/Cooki%20Hub'))()
    end
})

Tabs.HubsTab:AddButton({
    Title = "Forge Hub",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
    end
})

Tabs.HubsTab:AddButton({
    Title = "Get Key For Forge Hub",
    Callback = function()
        BC()
        setclipboard("https://ads.luarmor.net/get_key?for=Forge_Hub_Key_System-yoGtymGRJfTW")
        Fluent:Notify({
            Title = "Key Link Copied",
            Content = "The link has been copied to your clipboard",
            Duration = 5
        })    
    end
})

Tabs.FI:AddButton({
    Title = "Forge Hub",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
    end
})

Tabs.FI:AddButton({
    Title = "Get Key For Forge Hub",
    Callback = function()
        BC()
        setclipboard("https://ads.luarmor.net/get_key?for=Forge_Hub_Key_System-yoGtymGRJfTW")
        Fluent:Notify({
            Title = "Key Link Copied",
            Content = "The link has been copied to your clipboard",
            Duration = 5
        })    
    end
})

Tabs.MM2:AddButton({
    Title = "Forge Hub",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
    end
})

Tabs.MM2:AddButton({
    Title = "Get Key For Forge Hub",
    Callback = function()
        BC()
        setclipboard("https://ads.luarmor.net/get_key?for=Forge_Hub_Key_System-yoGtymGRJfTW")
        Fluent:Notify({
            Title = "Key Link Copied",
            Content = "The link has been copied to your clipboard",
            Duration = 5
        })    
    end
})

Tabs.BF:AddButton({
    Title = "Forge Hub",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
    end
})

Tabs.BF:AddButton({
    Title = "Get Key For Forge Hub",
    Callback = function()
        BC()
        setclipboard("https://ads.luarmor.net/get_key?for=Forge_Hub_Key_System-yoGtymGRJfTW")
        Fluent:Notify({
            Title = "Key Link Copied",
            Content = "The link has been copied to your clipboard",
            Duration = 5
        })    
    end
})

Tabs.TSB:AddButton({
    Title = "Forge Hub",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
    end
})

Tabs.TSB:AddButton({
    Title = "Get Key For Forge Hub",
    Callback = function()
        BC()
        setclipboard("https://ads.luarmor.net/get_key?for=Forge_Hub_Key_System-yoGtymGRJfTW")
        Fluent:Notify({
            Title = "Key Link Copied",
            Content = "The link has been copied to your clipboard",
            Duration = 5
        })    
    end
})

Tabs.UniTab:AddButton({
    Title = "More UNC V3",
    Callback = function()
        --BC()
        --loadstring(game:HttpGet("https://raw.githubusercontent.com/loothyy/scripts/refs/heads/main/MoreUNC%20V3%20(not%20mine)"))()
        ER()
        Fluent:Notify({
            Title = "Not working rn :(",
            Content = "More UNC V3 doesnt work rn (maybe later)",
            Duration = 5
        })
    end
})

Tabs.UniTab:AddButton({
    Title = "Adonis Anti Cheat Bypass",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua'))()
    end
})

Tabs.FE:AddButton({
    Title = "FE Black Hole",
    Callback = function()
        ER()
        --loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/BringFlingPlayers"))("More Scripts: t.me/arceusxscripts")
        Fluent:Notify({
            Title = "Not working rn :(",
            Content = "FE Black Hole doesnt work rn (maybe later)",
            Duration = 5
        })
    end
})

Tabs.FE:AddButton({
    Title = "FE Reverse Time",
    Description = "Hold C To Reverse Time",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AKadminlol/ReversebyAK/refs/heads/main/holdCtoReverse"))()
    end
})

Tabs.UniTab:AddButton({
    Title = "Universal Global Chat (CHAT & JOIN ANYONE!)",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThacG/Xyros/refs/heads/main/test"))()
    end
})

Tabs.UniTab:AddButton({
    Title = "RSPY",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
    end
})

Tabs.TB:AddButton({
    Title = "INF Money",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iz037/Zeld-Hub/main/Loader.lua"))()
    end
})

Tabs.TH:AddButton({
    Title = "Therapy Fucker",
    Callback = function()
        BC()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/therapy-gui/main/therapy-gui.lua", true))()    
    end
})

Tabs.FE:AddButton({
    Title = "SkyVR Script",
    Description = "Use if you have a VR. DO NOT RUN THIS IN VR MODE",
    Callback = function()
        BC()
       skyvrversion = '3.0.0'

VR_Model_Customization_GUI = game:GetObjects("rbxassetid://93922799482853")[1]
VR_Model_Customization_GUI.Parent = game.CoreGui

loadstring(game:HttpGet("https://raw.githubusercontent.com/presidentanvil/skyvr/main/VRCustomizationMain.lua"))()
    end
})

Tabs.AW:AddButton({
    Title = "Ability Wars Script",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5fd4081f6802dd9833957a3a8f72d515.lua"))()    
    end
})

Tabs.AW:AddButton({
    Title = "KOBRANHUB",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KOBRANHUB/KOBRAN-HUB-RELEASE/refs/heads/main/KOBRAN-HUB.lua",true))()
    end
})

Tabs.AW:AddButton({
    Title = "Vystro Hub",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Chromeyc/roblox/refs/heads/main/Vystro%20Hub/Games/main.lua"))()    
    end
})

Tabs.AWS:AddButton({ 
    Title = "Pryxo Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Pryxo/Hub/main/Hub"))()
    end
})

Tabs.AWS:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://lua-library.btteam.net/script-auth.txt'))()
    end
})

Tabs.AWS:AddButton({ 
    Title = "Script 2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/99d16edc79729a038994f85ce7335971.lua"))()
    end
})

Tabs.ATD:AddButton({ 
    Title = "L-HUB", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LosHUB/L-HUB/refs/heads/main/L-HUB-ON-TOP"))()
    end
})

Tabs.ATD:AddButton({ 
    Title = "Prime Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/ZenScript12/ZenScript12/refs/heads/main/Prime%20Hub%20Main%20LoaderV2%20lua'),true))()
    end
})

Tabs.AM:AddButton({ 
    Title = "Unfair Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/rbIxscriptsnet/unfair/main/rblxhub.lua'),true))()
    end
})

Tabs.AM:AddButton({ 
    Title = "Eclipse Hub", 
    Callback = function()
        BC()
        getgenv().mainKey = "nil"

        local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"
        c(a and b,"Executor not Supported")
        a(b({Url=e.."?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
    end
})

Tabs.AR:AddButton({ 
    Title = "PissBlox", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/solaris_bootstrapper.lua",true))()
    end
})

Tabs.AR:AddButton({ 
    Title = "Thunder Client", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/andrewdarkyyofficial/thunderclient/main/main.lua'))()
    end
})

Tabs.AR:AddButton({ 
    Title = "Zypherion", 
    Callback = function()
        BC()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/blackowl1231/ZYPHERION/refs/heads/main/main.lua')))()
    end
})

Tabs.AR:AddButton({ 
    Title = "Tbao Hub Arsenal", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
    end
})

Tabs.AR:AddButton({ 
    Title = "Strike Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DEV-TK02/StrikeHub/main/Loader'))()
    end
})

Tabs.BLR:AddButton({ 
    Title = "OhhMyGehlee Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/fo/refs/heads/main/ot"))()
    end
})

Tabs.BLR:AddButton({ 
    Title = "Imp Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/alan11ago/Hub/refs/heads/main/ImpHub.lua"))()
    end
})

Tabs.BLR:AddButton({ 
    Title = "BL Rivals Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LHking123456/jvJzb8FPs5TuR/refs/heads/main/BLRivals"))()
    end
})

Tabs.BLR:AddButton({ 
    Title = "SkibidiCen Main Menu", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
    end
})

Tabs.BLR:AddButton({ 
    Title = "The Best Script (TBS)", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptBrv/TheBestScript/refs/heads/main/TBS.md",true))()
    end
})

Tabs.BLR:AddButton({ 
    Title = "Pillar Chase", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Bhusant/Pillar-chase/refs/heads/main/KeySystem"))()
    end
})

Tabs.BLR:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet(('https://pastefy.app/lbLVUm8Z/raw'),true))()
    end
})

Tabs.BLR:AddButton({ 
    Title = "Script 2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet(('https://pastefy.app/5i2DScDc/raw'),true))()
    end
})

Tabs.BABFT:AddButton({ 
    Title = "Walazq Build A Boat Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/walazq/Build-A-Boat/refs/heads/main/script.lua'))()
    end
})

Tabs.BABFT:AddButton({ 
    Title = "FishyPlayz Build A Boat Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FishyPlayzThis/buildaboat/refs/heads/main/main.lua"))()
    end
})

Tabs.BABFT:AddButton({ 
    Title = "Bac0nHck Candy Farm", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/refs/heads/main/babft-candy-farm"))("t.me/arceusxscripts")
    end
})

Tabs.BABFT:AddButton({ 
    Title = "Build A Boat Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))()
    end
})

Tabs.BABFT:AddButton({ 
    Title = "Waza80 Build A Boat Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://scripts.waza80.com/script/BuildABoat"))()
    end
})

Tabs.BABFT:AddButton({ 
    Title = "Ruby Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Deni210/main/main/RubyHub.lua", true))()
    end
})

Tabs.BW:AddButton({ 
    Title = "Aurora Loader", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cocotv666/Aurora/refs/heads/main/Aurora_Loader"))()
    end
})

Tabs.BW:AddButton({ 
    Title = "BedWars Auto Queue (Open Source)", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/blinx-co/roblox/main/BedWarsAutoQueueOpenSource.lua', true))()
    end
})

Tabs.BW:AddButton({ 
    Title = "Vape V4", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    end
})

Tabs.BW:AddButton({ 
    Title = "Night Rewrite Loader", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/warprbx/NightRewrite/refs/heads/main/Night/Loader.luau"))()
    end
})

Tabs.BSS:AddButton({ 
    Title = "Kiciahook", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.lua"))()
    end
})

Tabs.BSS:AddButton({ 
    Title = "MacroV3", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://www.macrov2-script.xyz/macrov3.lua"))()
    end
})

Tabs.BSS:AddButton({ 
    Title = "Beecon Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeconHub/main/BeeconHub"))()
    end
})

Tabs.BUB:AddButton({ 
    Title = "Busy Business Auto Farm", 
    Callback = function()
        BC()
        local currentPlot;

        for i, v in pairs(workspace.Plots:GetChildren()) do
            if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                currentPlot = v
            end
        end

        local useMachine = game:GetService("ReplicatedStorage").Communication.UseMachine
        local orderCustomer = game:GetService("ReplicatedStorage").Communication.CustomerOrder
        local serveCustomer = game:GetService("ReplicatedStorage").Communication.ServeCustomer
        local ServerScriptService = game:GetService("ServerScriptService")

        task.spawn(function()
            while task.wait(1) do
                for i, v in pairs(currentPlot.Customers:GetChildren()) do
                    if not v:GetAttribute("OrderTaken") then
                        orderCustomer:FireServer(v)
                    end
                end
            end
        end)

        function getItem(Item)
            local vStation;
            for i, v in pairs(currentPlot.Objects:GetChildren()) do
                if v:FindFirstChild("Item") and v.Item.Value == Item then  
                    vStation = v
                end
            end

            useMachine:FireServer(vStation, false)
            useMachine:FireServer(vStation, true)
        end

        task.spawn(function()
            while task.wait(1) do
                for i, v in pairs(currentPlot.Customers:GetChildren()) do
                    if not (v:GetAttribute("Count") == 0) and v:GetAttribute("Count") and tonumber(v:GetAttribute("Count")) >= 1 then
                        local customerItem = v:GetAttribute("Item")
                        if not customerItem then continue end
                        for i = 1, v:GetAttribute("Count") do
                            getItem(customerItem)
                            serveCustomer:FireServer(v)
                        end
                    end
                end
            end
        end)
    end
})

Tabs.BB:AddButton({ 
    Title = "Tekkit AOTR", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zerunquist/TekkitAotr/refs/heads/main/main"))()
    end
})

Tabs.BB:AddButton({ 
    Title = "Lunar Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Akirascripts/Lunar/refs/heads/main/LuanrOnTop"))()
    end
})

Tabs.BB:AddButton({ 
    Title = "Blade Ball Universal", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Alexisisback/Universall/refs/heads/main/Blade%20ball.lua"))()
    end
})

Tabs.BB:AddButton({ 
    Title = "Red Circle Block", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/RedCircleBlock"))()
    end
})

Tabs.BB:AddButton({ 
    Title = "Script Auth", 
    Callback = function()
        BC()
        loadstring(game:HttpGetAsync("https://lua-library.btteam.net/script-auth.txt"))()
    end
})

Tabs.BB:AddButton({ 
    Title = "Farm Socks", 
    Callback = function()
        BC()
        _G.socks = true -- true/false
        loadstring(game:HttpGet("https://shz.al/~farm_socks"))()
    end
})

Tabs.BB:AddButton({ 
    Title = "Zap Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()
    end
})

Tabs.BF:AddButton({ 
    Title = "Koatta Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KOBENFF/sdfd/refs/heads/main/Koatta.txt"))()
    end
})

Tabs.BF:AddButton({ 
    Title = "Speed Hub X", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Tabs.BF:AddButton({ 
    Title = "RealRedz Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
    end
})

Tabs.BF:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
    end
})

Tabs.BF:AddButton({ 
    Title = "Zen Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Zenhubtop/zen_hub_pr/main/zennewwwwui.lua", true))()
    end
})

Tabs.BF:AddButton({ 
    Title = "Freeze Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FreezeHub-18843"))()
    end
})

Tabs.BF:AddButton({ 
    Title = "Strawberry Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CheemsNhuChiAl/Sotringhuhu/main/StrawberryHubBeta1.35"))()
    end
})

Tabs.BF:AddButton({ 
    Title = "Lumin Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("http://lumin-hub.lol/BloxFruits.lua"))()
    end
})

Tabs.BF:AddButton({ 
    Title = "BloxFruit XYZ", 
    Callback = function()
        BC()
        loadstring(game.HttpGet(game,'https://raw.githubusercontent.com/Yumiara/Python/refs/heads/main/BloxFruit-XYZ.lua'))()
    end
})

Tabs.BF:AddButton({ 
    Title = "Raito Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script"))()
    end
})

Tabs.BF:AddButton({ 
    Title = "HOHO Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

Tabs.BLB:AddButton({ 
    Title = "JonnyCheese Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JonnyCheeser/rbw4/main/JonnyCheeseHub"))()
    end
})

Tabs.BLB:AddButton({ 
    Title = "Ro-Scripts Loader", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://ro-scripts.vercel.app/"))()
    end
})

Tabs.CB:AddButton({ 
    Title = "Solaris Bootstrapper", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/solaris_bootstrapper.lua",true))()
    end
})

Tabs.CB:AddButton({ 
    Title = "FelixWare V2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PuppyRoblox/FelixWareV2/main/loader.lua"))()
    end
})

Tabs.CB:AddButton({ 
    Title = "SoggyHub V2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://soggyhubv2.vercel.app"))()
    end
})

Tabs.CB:AddButton({ 
    Title = "CBRO Bot", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/I2345/EX-Scripts/main/cbro%20bot.lua"))()
    end
})

Tabs.BD:AddButton({ 
    Title = "Baddies Script", 
    Callback = function()
        BC()
        _G.Theme = "Dark" -- Themes: Light, Dark, Red, Mocha, Aqua, and Jester
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/Baddies.lua"))()
    end
})

Tabs.CC2:AddButton({ 
    Title = "Hive Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iamnotadingus/Hive-Hub/refs/heads/main/RELEASED",true))()
    end
})

Tabs.CC2:AddButton({ 
    Title = "Get Key For Hive Hub", 
    Callback = function()
        BC()
        setclipboard("https://link-hub.net/1253042/hive-hub")
        Fluent:Notify({
            Title = "Key Link Copied",
            Content = "The link has been copied to your clipboard",
            Duration = 5
        }) 
    end
})

Tabs.CRI:AddButton({ 
    Title = "Criminology", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PresidentAnvil/temp-criminology/refs/heads/main/criminology.lua"))()
    end
})

Tabs.DH:AddButton({ 
    Title = "Diddy Mansion Loader", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://diddysmansion.vip/loaderforotherexploits.lucid"))()
    end
})

Tabs.DH:AddButton({ 
    Title = "DHB Official Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DHBCommunity/DHBOfficialScript/main/macromobbyballigusapo"))()
    end
})

Tabs.DH:AddButton({ 
    Title = "Shadow GUI v3", 
    Callback = function()
        BC()
        getgenv().Keybind = "" -- example like: [LeftControl] [V] [C]
        loadstring(game:HttpGet("https://raw.githubusercontent.com/faisal1432152/shadow-gui/refs/heads/main/shadowguiv3beta.lua"))()
    end
})

Tabs.DH:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/yuvic123/s/main/s'))()
    end
})

Tabs.DH:AddButton({ 
    Title = "Vortex", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ImagineProUser/vortexdahood/main/vortex", true))()
    end
})

Tabs.DH:AddButton({ 
    Title = "Polakya", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/pixelheadx/Polakya/main/Bestscript.md"))()
    end
})

Tabs.DH:AddButton({ 
    Title = "Anti V2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flanchhh/AntiV2/refs/heads/main/Anti%20v2.lua"))()
    end
})

Tabs.DH:AddButton({ 
    Title = "Script 2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
    end
})

Tabs.DH:AddButton({ 
    Title = "Kitty Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://whimper.xyz/kitty'))()
    end
})

Tabs.DO:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
    end
})

Tabs.DO:AddButton({ 
    Title = "Apoc Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://apocscripts.com/ApocHub.txt"))()
    end
})

Tabs.DO:AddButton({ 
    Title = "Skibidi Main Menu", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
    end
})

Tabs.DO:AddButton({ 
    Title = "Cooki Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SumCooki/Cooki-Hub/refs/heads/main/Cooki%20Hub'))()
    end
})

Tabs.DO:AddButton({ 
    Title = "Newbutif Is A Cool Dev", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://newbutif.is-a-cool.dev'))()
    end
})

Tabs.DO:AddButton({ 
    Title = "Waza80 Doors Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://scripts.waza80.com/script/DOORS"))()
    end
})

Tabs.DO:AddButton({ 
    Title = "Versus Loader V2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://gitlab.com/Ner0ox/versus/-/raw/main/LoaderV2/Loader.lua"))()
    end
})

Tabs.DO:AddButton({ 
    Title = "Vynixius", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
    end
})

Tabs.DTI:AddButton({ 
    Title = "Godor DTI", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/godor1010/godor/refs/heads/main/DressToImpress'))()
    end
})

Tabs.DTI:AddButton({ 
    Title = "Cooki Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SumCooki/Cooki-Hub/refs/heads/main/Cooki%20Hub'))()
    end
})

Tabs.DTI:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://pastebin.com/raw/QqMAmZBf"))()
    end
})

Tabs.DTI:AddButton({ 
    Title = "DTI GUI V2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/DTI-GUI-V2/main/dti_gui_v2.lua",true))()
    end
})

Tabs.DTI:AddButton({ 
    Title = "Tarik HUB DTI", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DeNyima/TarikHUB/refs/heads/main/DressToImpress'))()
    end
})

Tabs.DTI:AddButton({ 
    Title = "Unknown Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CookieCrumble2/Roblox/refs/heads/main/scripts/unknown-hub.lua"))()
    end
})

Tabs.DTI:AddButton({ 
    Title = "01IQ DTI", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/01iq/me/refs/heads/main/DressToImpress",true))()
    end
})

Tabs.DTI:AddButton({ 
    Title = "ToraScript DTI", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/DressToImpress"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Project Spectrum", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/Loader.lua"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Native Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Native-lab/Native/main/loader.lua"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "SmorgX Chaos Fisch", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MIKEDRIPZOWSKU/test/refs/heads/main/SmorgXChaosFisch.txt", true))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Hidden Revamp", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tulontop/HiddenRevamp/refs/heads/main/Loader.luau"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Speed Hub X", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Imp Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/alan11ago/Hub/refs/heads/main/ImpHub.lua"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Rybowe Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rybowe/rybowescripts/main/release.lua"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Fisch GUI", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheDarkoneMarcillisePex/Other-Scripts/refs/heads/main/Fisch%20GUI"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "NEOX HUB Fisch 1.4", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/fisch1.4"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://pastebin.com/raw/aqhRaFcB"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "CupPink", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://you.whimper.xyz/sources/CupPink/fisch.lua"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Kncrypt", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Kncrypt/refs/heads/main/sources/Fisch.lua"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Goomba Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua"))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Lythical", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lythicals/script/main/Fisch.lua",true))()
    end
})

Tabs.FI:AddButton({ 
    Title = "Average Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/AverageHub/1980eccce4133d77fb24d166dc296125/raw/2d9c88acc21a302d92aed0e8b6f0dcd287c8b96b/gistfile1.txt"))()
    end
})

Tabs.FL:AddButton({ 
    Title = "Hitbox Expander", 
    Callback = function()
        BC()
        local HitboxSize = Vector3.new(10,10,10) --too big won't work

        if getgenv().c then getgenv().c:Disconnect() end

        getgenv().c = game:GetService("RunService").RenderStepped:Connect(function()
            for _,v in pairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and v.Color == Color3.new(1,0,0) then
                    v.Transparency = 0.5
                    v.Size = HitboxSize
                end
            end    
        end)
    end
})

Tabs.JS:AddButton({ 
    Title = "JJS Auto Block", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Synarcy/JJS-GUI/main/JJSAutoBlock.lua"))()
    end
})

Tabs.JS:AddButton({ 
    Title = "NS Hub V2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HenSeu87PofghYT/ALL-IN-ONE/main/NSHUBV2"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "Solix Key UI", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/21cecfc256321e341fbe9a0a2df5a564.lua"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "Script 2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e7d06aa370f8abb9e1a9bd5bd9c80c7d.lua"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "JJI Test", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/JJI/refs/heads/main/test.lua"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "Script 3", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/cdc8ffd74b2c33f6c9f47b85f4b77c45.lua"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "Script 4", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f9caf82bff389f078eb1641ac0c0c131.lua"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "Apoc Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://apocscripts.com/ApocHub.txt"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "JHB Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptBrv/JHB/refs/heads/main/JHB.md",true))()
    end
})

Tabs.JI:AddButton({ 
    Title = "DzHub PC", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dexz00/DzHub/refs/heads/main/loader-pc"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "DzHub Mobile", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dexz00/DzHub/refs/heads/main/loader-mobile"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "Script 5", 
    Callback = function()
        BC()
        loadstring(game:HttpGet(('https://pastefy.app/AQW5tTyu/raw'),true))()
    end
})

Tabs.JI:AddButton({ 
    Title = "Jujutsu Infinite", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/xRynix/main/refs/heads/main/JujutsuInfinite.lua'))()
    end
})

Tabs.JI:AddButton({ 
    Title = "JJI Level 0-60", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/edancab/cool/refs/heads/main/jujutsuinfinite"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "JJI Level 60-120", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/edancab/test/refs/heads/main/chat"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "JJI Level 120-180", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/edancab/120-180/refs/heads/main/jjf"))()
    end
})

Tabs.JI:AddButton({ 
    Title = "Jujutsu Mod Menu", 
    Callback = function()
        BC()
        getgenv().scriptname = "Jujutsu_Mod_Menu"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/miodkosz/ROBLOX/refs/heads/main/universal_loader_v2", true))()
    end
})

Tabs.JI:AddButton({ 
    Title = "Script 6", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/522897bf43bc6bccb804fc608917db8e.lua"))()
    end
})

Tabs.LT2:AddButton({ 
    Title = "Spook Finder V3", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://vendettahub.xyz/Vendetta/Loaders/SpookFinder.v3", true))()
    end
})

Tabs.LT2:AddButton({ 
    Title = "Desire Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/welomenchaina/Desire-s/refs/heads/main/desire%20hub%20rules",true))()
    end
})

Tabs.LT2:AddButton({ 
    Title = "Kron Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DevKron/Kron_Hub/refs/heads/main/version_1.0'))("")
    end
})

Tabs.LO:AddButton({ 
    Title = "JoonyWoony Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JoonyWoony/Jooony/main/gay.lua",true))()
    end
})

Tabs.MM2:AddButton({ 
    Title = "Xhub MM2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))()
    end
})

Tabs.MR:AddButton({ 
    Title = "Such Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/yeerma/such/main/README.md'))()
    end
})

Tabs.NDS:AddButton({ 
    Title = "Imperium", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Imperium-Development/Imperium/main/Imperium.lua"))()
    end
})

Tabs.NDS:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
    end
})

Tabs.NDS:AddButton({ 
    Title = "Script 2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Bac0nh1ck/Scripts/main/NDS_A%5EX'))()
    end
})

Tabs.NDS:AddButton({ 
    Title = "03koios Loader", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/03koios/Loader/main/Loader.lua"))()
    end
})

Tabs.NDS:AddButton({ 
    Title = "Script 3", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/unixetp/explosion/refs/heads/main/keysystem.lua'))()
    end
})

Tabs.PD:AddButton({ 
    Title = "BonusTTV Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bonusttv/robloxscripts/refs/heads/main/plsdonate1.lua"))()
    end
})

Tabs.PD:AddButton({ 
    Title = "Tzechco Autofarm", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/CF-Trail/tzechco-PlsDonateAutofarmBackup/main/old.lua'))()
    end
})

Tabs.PS99:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://api.luarmor.net/files/v3/loaders/4f5c7bbe546251d81e9d3554b109008f.lua'))()
    end
})

Tabs.PS99:AddButton({ 
    Title = "Reaper Scripts", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://reaperscripts.com/loader.lua"))()
    end
})

Tabs.PS99:AddButton({ 
    Title = "Script 2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7cfaf443279af8bf7ee1c52ae1082437.lua"))()
    end
})

Tabs.PS99:AddButton({ 
    Title = "Zer0 Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Discord0000/Zer0Hub/main/MainScript.lua"))()
    end
})

Tabs.PL:AddButton({ 
    Title = "Vynixius Prison Life", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Prison%20Life/Script.lua"))()
    end
})

Tabs.PL:AddButton({ 
    Title = "Infinite Stamina", 
    Callback = function()
        BC()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ImMejor35/Prison-Life/main/Infinite%20Stamina.lua"))()
    end
})

Tabs.PL:AddButton({ 
    Title = "Jeux45 Prison Life", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jeux45/Prison-Life/main/Script.lua"))()
    end
})

Tabs.PL:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://pastebin.com/raw/wMagw9Cn", true))()
    end
})

Tabs.PL:AddButton({ 
    Title = "Tiger Admin", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
    end
})

Tabs.PI:AddButton({ 
    Title = "M1NEGERO Piggy Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MahmodGaming/Script-Piggy-By-M1NEGERO/refs/heads/main/Script%20Piggy%20By%20M1NEGERO"))()
    end
})

Tabs.PI:AddButton({ 
    Title = "Vynixius Piggy", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Loader.lua"))()
    end
})

Tabs.PI:AddButton({ 
    Title = "Apoc Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://apocscripts.com/ApocHub.txt"))()
    end
})

Tabs.PI:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Uhhhhhhid1/Lmaoiud/refs/heads/main/Protected_1288626837881416.txt"))()
    end
})

Tabs.PI:AddButton({ 
    Title = "Cooki Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/SumCooki/Cooki-Hub/refs/heads/main/Cooki%20Hub'))()
    end
})

Tabs.PI:AddButton({ 
    Title = "Vor Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/giogio11223/vor-hub-new/refs/heads/main/yuh",true))()
    end
})

Tabs.PI:AddButton({ 
    Title = "Script 2", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://pastebin.com/raw/QqMAmZBf"))()
    end
})

Tabs.PI:AddButton({ 
    Title = "Termin Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ov5or/TerminScript/refs/heads/main/Script.lua"))()
    end
})

Tabs.PI:AddButton({ 
    Title = "BaconBABA Piggy", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBABA/script/refs/heads/main/piggy.lua"))()
    end
})

Tabs.RT2:AddButton({ 
    Title = "Zeke Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Zeke-Hub-19058"))()
    end
})

Tabs.RT2:AddButton({ 
    Title = "Anticheat Bypass", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-ANTICHEAT-BYPASS-UNIVERSAL-FE-26279"))()
    end
})

Tabs.RT2:AddButton({ 
    Title = "Westbound Autofarm & Dupe", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Westbound-Autofarm-Dupe-l-Purge-26279"))()
    end
})

Tabs.RT2:AddButton({ 
    Title = "Syphix Search Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-SYPHIX-SEARCH-SCRIPT-26254"))()
    end
})

Tabs.RT2:AddButton({ 
    Title = "BlueRed Hub V19", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-BlueRed-Hub-V19-Best-Hub-26114"))()
    end
})

Tabs.RT2:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/4f5c7bbe546251d81e9d3554b109008f.lua"))()
    end
})

Tabs.TB:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://etronix.wtf/script/"))()
    end
})

Tabs.TDS:AddButton({ 
    Title = "ImpHub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/alan11ago/Hub/refs/heads/main/ImpHub.lua"))()
    end
})

Tabs.SS:AddButton({ 
    Title = "Supermarket Simulator Script", 
    Callback = function()
        BC()
        local L = loadstring(game:HttpGet("https://raw.githubusercontent.com/Turtle-Brand/Turtle-Lib/main/source.lua"))()
        local W = L:Window("Supermarket Simulator")

        local rs = game:GetService("ReplicatedStorage")
        local eve = rs:WaitForChild("Events")

        local function ir(rempath, ...)
            local remote = rempath:InvokeServer(...)
            return remote
        end

        local function fr(rempath, ...)
            rempath:FireServer(...)
        end

        W:Button("Infinite Money", function()
            local goldrem = eve:WaitForChild("Gold"):WaitForChild("ChangeGoldRF")
            ir(goldrem, "ChangeGold", math.huge, false)
        end)

        W:Button("Get All Gamepasses", function()
            local gprem = eve:WaitForChild("Goods"):WaitForChild("GamePassRE")

            local gamepasses = {
                { "Cashier", 28 },
                { "Quick Check-out", 1 },
                { "Porter", 5 },
                { "Quick Pricing" }
            }
        
            for _, args in ipairs(gamepasses) do
                fr(gprem, unpack(args))
            end
        end)

        W:Toggle("Infinite XP", true, function(val)
            local xprem = eve:WaitForChild("Exp"):WaitForChild("ChangeExpRE")
            local XP = 10000000

            local function start()
                while val do
                    pcall(function()
                        fr(xprem, XP)
                    end)
                    task.wait(0.1)
                end
            end

            if val then
                task.spawn(start)
            end
        end)

        W:Label("Credits to ExploitFin", Color3.fromRGB(127, 143, 166))
    end
})

Tabs.WSD:AddButton({ 
    Title = "HUBHUBHUB", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Robanik/HUBHUBHUB/refs/heads/main/ГЛАВНЫЙХАБ"))()
    end
})

Tabs.WSD:AddButton({ 
    Title = "GOA Hub", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nevcit/GOA_HUB/refs/heads/main/Weird-Strict-Dad/MAIN.txt"))()
    end
})

Tabs.WSD:AddButton({ 
    Title = "Infinity Mercury Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/InfinityMercury/Scripts/main/WeirdStrictDad/loader.lua",true))()
    end
})

Tabs.WSD:AddButton({ 
    Title = "Bloodz Free Script", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yBloodz/Free-scripts/main/Weird%20Strict%20Dad"))()
    end
})

Tabs.WAAPP:AddButton({ 
    Title = "Script 1", 
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/incognitototo/sda/main/dwa.lua", true))()
    end
})

Tabs.PI:AddButton({
    Title = "PePPa Pig [PIGMAS] 🎄",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iz037/Zeld-Hub/main/Loader.lua"))()
    end
})

Tabs.FPS:AddButton({
    Title = "FPS/Ping Changer GUI",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/v-oidd/flex-your-fps-script/main/script'))()
    end
})

Tabs.FE:AddButton({
    Title = "FE INVISIBLE TROLL",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
    end
})

Tabs.FE:AddButton({
    Title = "SpyHub Script",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://pastebin.com/raw/uPGrjsd6"))()
    end
})

Tabs.FE:AddButton({
    Title = "Quiz Bot GUI",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Damian-11/quizbot/master/quizbot.luau"))()
    end
})

Tabs.FE:AddButton({
    Title = "Draw in Chat GUI V2",
    Description = "Press E After Loading Script to Open GUI",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AKadminlol/Chatdraw/refs/heads/main/Chattdraw"))()
    end
})

Tabs.SG:AddButton({
    Title = "Shrimp Game Script",
    Callback = function()
        BC()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/551d08851e0d6e76e7c2052f41fe2484.lua"))()    end
})

Tabs.SG:AddButton({
    Title = "Copy Key",
    Description = "Copy The Key Here",
    Callback = function()
        BC()
        setclipboard("glassbridgeespismysavior")
        Fluent:Notify({
            Title = "Key Copied",
            Content = "The Key has been copied to your clipboard",
            Duration = 5
        }) 
    end
})

Tabs.JA:AddButton({
    Title = "Sensation Free V2",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
    end
})

Tabs.JA:AddButton({
    Title = "Kiciahook",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.lua"))()
    end
})

Tabs.JA:AddButton({
    Title = "Inf Nitro Car Speed Key Card",
    Callback = function()
        BC()
        loadstring(game:HttpGet('https://weinzspace.com/cata/hub.lua'))()
    end
})

Tabs.WAAPP:AddButton({
    Title = "Teleport To Manager Chair",
    Callback = function()
        BC()
        -- LocalScript

-- Wait for the player's character to load
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Get the HumanoidRootPart
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Define the target coordinates
local targetPosition = Vector3.new(23.575748443603516, 4.181990623474121, 6.457025527954102)

-- Teleport the character to the target position
rootPart.CFrame = CFrame.new(targetPosition)

-- Print a confirmation message
print("Teleported to: " .. tostring(targetPosition))
    end
})

Tabs.HubsTab:AddButton({
    Title = "unfair Hub",
    Callback = function()
        BC()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/rbIxscriptsnet/unfair/main/rblxhub.lua'),true))()
    end
})

Tabs.RI:AddButton({
    Title = "Kiciahook",
    Callback = function()
        BC()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.lua"))()    end
})

local player = game.Players.LocalPlayer

-- WalkSpeed Slider
Tabs.Player:AddSlider("WalkSpeedSlider", {
    Title = "WalkSpeed",
    Min = 16,
    Max = 500,
    Default = 16,
    Rounding = 5,
    Callback = function(Value)
        BC()
        if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = Value
        end
    end
})

-- JumpPower Slider
Tabs.Player:AddSlider("JumpPowerSlider", {
    Title = "JumpPower",
    Min = 50,
    Max = 500,
    Default = 50,
    Rounding = 5,
    Callback = function(Value)
        BC()
        if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character:FindFirstChildOfClass("Humanoid").JumpPower = Value
        end
    end
})

-- NoClip Functionality
local noclipParts = {}

local function toggleNoClip(state)
    local character = player.Character
    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                if state then
                    noclipParts[part] = part.CanCollide
                    part.CanCollide = false
                else
                    if noclipParts[part] ~= nil then
                        part.CanCollide = noclipParts[part]
                    end
                end
            end
        end
    end
end

-- NoClip Toggle
Tabs.Player:AddToggle("NoClipToggle", {
    Title = "NoClip",
    Default = false,
    Callback = function(state)
        BC()
        toggleNoClip(state)
    end
})

-- God Mode Toggle
Tabs.Player:AddToggle("GodModeToggle", {
    Title = "God Mode",
    Description = "skidded from infinte yield lol",
    Default = false,
    Callback = function(state)
        BC()
        if state and player.Character then
            local Cam = workspace.CurrentCamera
            local Pos, Char = Cam.CFrame, player.Character
            local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
            if Human then
                local nHuman = Human:Clone()
                nHuman.Parent, player.Character = Char, nil
                nHuman:SetStateEnabled(15, false)
                nHuman:SetStateEnabled(1, false)
                nHuman:SetStateEnabled(0, false)
                nHuman.BreakJointsOnDeath, Human = true, Human:Destroy()
                player.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
                nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                local Script = Char:FindFirstChild("Animate")
                if Script then
                    Script.Disabled = true
                    wait()
                    Script.Disabled = false
                end
                nHuman.Health = nHuman.MaxHealth
            end
        end
    end
})

Tabs.CR:AddButton({
    Title = "Toggle All Carts",
    Description = "Toggles activation on every cart that is spawned",
    Callback = function()

        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "On" then
                fireclickdetector(v.Click)
            end
        end
    end
})

Tabs.CR:AddButton({
    Title = "Speed Up All Carts",
    Description = "Speeds up every cart",
    Callback = function()

        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "Up" then
                fireclickdetector(v.Click)
            end
        end
    end
})

Tabs.CSTW:AddButton({
    Title = "Script 1",
    Callback = function()
    -- https://www.roblox.com/games/10175705301/Cant-Say-the-Word
local Players = game:GetService("Players")

-- Function to update booth text
local function updateBoothText(boothNumber, text)
    local booth = workspace["Booth" .. boothNumber]
    if booth and booth:FindFirstChild("ClaimBooth") and booth.ClaimBooth:FindFirstChild("ChangeText") then
        booth.ClaimBooth.ChangeText.UpdateSign:FireServer(text)
    end
end

-- Function to update booths with owner's chat
local function updateBoothsWithOwnerChat()
    for i = 1, 6 do -- Assuming there are 6 booths
        local booth = workspace["Booth" .. i]
        if booth and booth:FindFirstChild("Owner") then
            local ownerName = booth.Owner.Value
            local owner = Players:FindFirstChild(ownerName)
            if owner then
                -- Use the player.Chatted event to get the latest chat
                owner.Chatted:Connect(function(message)
                    updateBoothText(i, message)
                end)
            end
        end
    end
end

-- Set up the initial connection for all current booths
updateBoothsWithOwnerChat()

-- Set up a loop to check for new booths or ownership changes
while true do
    updateBoothsWithOwnerChat()
    wait(5) -- Check every 5 seconds for any changes
end

print("Booth update script is now running. Booths will display their owner's latest chat message in real-time.")
    end
})


Tabs.CR:AddButton({
    Title = "Slow Down All Carts",
    Description = "Slows down every cart",
    Callback = function()

        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "Down" then
                fireclickdetector(v.Click)
            end
        end
    end
})

Tabs.CR:AddButton({
    Title = "Turn On All Carts",
    Description = "Turns On All Carts",
    Callback = function()

        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "On" and v.BrickColor == BrickColor.new("Bright red") then
                fireclickdetector(v.Click)
            end
        end
    end
})

Tabs.CR:AddButton({
    Title = "Turn Off All Carts",
    Description = "Turns Off All Carts",
    Callback = function()

        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "On" and v.BrickColor == BrickColor.new("Dark green") then
                fireclickdetector(v.Click)
            end
        end
    end
})

Tabs.CR:AddButton({
    Title = "Spawn All Carts",
    Description = "Spawns Every Cart",
    Callback = function()
        BC()
        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "1Regen" or v.Name == "2Regen" or v.Name == "3Regen" or v.Name == "4Regen" then
                fireclickdetector(v.Click)
            end
        end
    end
})

local SpeedUpAura = Tabs.CR:AddToggle("SpeedUpAura", {
    Title = "Speed Up Aura",
    Description = "Speeds every cart up near you",
    Default = false
})

SpeedUpAura:OnChanged(function(tog)

    _G.SpeedUpAura = tog
    while _G.SpeedUpAura do
        wait(0.1)
        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "Up" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local SlowDownAura = Tabs.CR:AddToggle("SlowDownAura", {
    Title = "Slow Down Aura",
    Description = "Slows down every cart near you",
    Default = false
})

SlowDownAura:OnChanged(function(tog)
    _G.SlowDownAura = tog
    while _G.SlowDownAura do
        wait(0.1)
        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "Down" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local TurnOnAura = Tabs.CR:AddToggle("TurnOnAura", {
    Title = "Turn On Aura",
    Description = "Turns on every cart near you",
    Default = false
})

TurnOnAura:OnChanged(function(tog)
    _G.TurnOnAura = tog
    while _G.TurnOnAura do
        wait(0.1)
        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "On" and v.BrickColor == BrickColor.new("Bright red") and 
                (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local TurnOffAura = Tabs.CR:AddToggle("TurnOffAura", {
    Title = "Turn Off Aura",
    Description = "Turns off every cart near you",
    Default = false
})

TurnOffAura:OnChanged(function(tog)
    _G.TurnOffAura = tog
    while _G.TurnOffAura do
        wait(0.1)
        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "On" and v.BrickColor == BrickColor.new("Dark green") and 
                (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local AutoToggle = Tabs.CR:AddToggle("AutoToggle", {
    Title = "Auto Toggle",
    Description = "Auto Toggles Cart",
    Default = false
})

AutoToggle:OnChanged(function(tog)
    _G.AutoToggle = tog
    while _G.AutoToggle do
        wait(0.3)
        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "On" then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local AutoTurnOn = Tabs.CR:AddToggle("AutoTurnOn", {
    Title = "Auto Turn On",
    Description = "Turns on all carts",
    Default = false
})

AutoTurnOn:OnChanged(function(tog)
    _G.TurnOnLoop = tog
    while _G.TurnOnLoop do
        wait(0.1)
        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "On" and v.BrickColor == BrickColor.new("Bright red") then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local AutoTurnOff = Tabs.CR:AddToggle("AutoTurnOff", {
    Title = "Auto Turn Off",
    Description = "Turns off all carts",
    Default = false
})

AutoTurnOff:OnChanged(function(tog)
    _G.TurnOffLoop = tog
    while _G.TurnOffLoop do
        wait(0.1)
        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "On" and v.BrickColor == BrickColor.new("Dark green") then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local AutoSpeedUp = Tabs.CR:AddToggle("AutoSpeedUp", {
    Title = "Auto Speed Up",
    Description = "Speeds every cart up super fast",
    Default = false
})

AutoSpeedUp:OnChanged(function(tog)
    _G.AutoSpeed = tog
    while _G.AutoSpeed do
        wait(0.1)
        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "Up" then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local AutoSlowDown = Tabs.CR:AddToggle("AutoSlowDown", {
    Title = "Auto Slow Down",
    Description = "Slows down every cart super fast",
    Default = false
})

AutoSlowDown:OnChanged(function(tog)
    _G.AutoSlow = tog
    while _G.AutoSlow do
        wait(0.1)
        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "Down" then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local AutoFastSpeed = Tabs.CR:AddToggle("AutoFastSpeed", {
    Title = "Auto Fast Speed",
    Description = "Speeds every cart up",
    Default = false
})

AutoFastSpeed:OnChanged(function(tog)
    _G.AutoFastSpeed = tog
    while _G.AutoFastSpeed do
        wait(0.1)
        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "Up" and v.Parent:FindFirstChild("Configuration") and v.Parent.Configuration.Speed.Value <= 110 then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local AutoSlowSpeed = Tabs.CR:AddToggle("AutoSlowSpeed", {
    Title = "Auto Slow Speed",
    Description = "Makes every cart go slow",
    Default = false
})

AutoSlowSpeed:OnChanged(function(tog)
    _G.AutoSlowSpeed = tog
    while _G.AutoSlowSpeed do
        wait(0.1)
        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "Down" and v.Parent:FindFirstChild("Configuration") and v.Parent.Configuration.Speed.Value >= 30 then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local AutoSpawn = Tabs.CR:AddToggle("AutoSpawn", {
    Title = "Auto Spawn Cart",
    Description = "Spawns every cart automatically",
    Default = false
})

AutoSpawn:OnChanged(function(tog)
    _G.AutoSpawn = tog
    while _G.AutoSpawn do
        wait(1) -- Reduced FPS drop
        for _, v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "1Regen" or v.Name == "2Regen" or v.Name == "3Regen" or v.Name == "4Regen" then
                fireclickdetector(v.Click)
            end
        end
    end
end)

local selectedPlayer = ""

local selectedPlayer = ""

local selectedPlayer = ""
local selectedDisplayName = ""

local selectedPlayer = ""
local selectedDisplayName = ""

local selectedPlayer = ""
local selectedDisplayName = ""

Tabs.CR:AddInput("MessUpPlayer", {
    Title = "Mess Up Player",
    Placeholder = "Works with Display and Username",
    Numeric = false, -- Allows text input
    Callback = function(txt)
        -- Only process if input is at least 3 characters
        if #txt < 3 then return end

        local newTarget = nil
        local newDisplayName = nil

        -- Find the closest matching player by **Username or Display Name**
        for _, v in pairs(game.Players:GetChildren()) do
            local lowerUsername = string.lower(v.Name)
            local lowerDisplayName = string.lower(v.DisplayName)
            local lowerInput = string.lower(txt)

            -- Match either Display Name or Username
            if string.sub(lowerUsername, 1, #lowerInput) == lowerInput or string.sub(lowerDisplayName, 1, #lowerInput) == lowerInput then
                newTarget = v.Name
                newDisplayName = v.DisplayName
                break
            end
        end

        -- Only notify if the target has changed
        if newTarget and newTarget ~= selectedPlayer then
            selectedPlayer = newTarget
            selectedDisplayName = newDisplayName or newTarget -- Use username if no display name

            Fluent:Notify({
                Title = "Player Selected",
                Content = "Target: " .. selectedDisplayName .. " (@ " .. selectedPlayer .. ")",
                Duration = 3
            })
        end
    end
})

Tabs.CR:AddButton({
    Title = "Start Messing Up",
    Callback = function()
                if selectedPlayer == "" then
            Fluent:Notify({ Title = "Error", Content = "No player selected", Duration = 3 })
            return
        end

        local player = game.Players.LocalPlayer
        local length = 200
        local target = game.Players:FindFirstChild(selectedPlayer)

        if not target or not target.Character or not target.Character:FindFirstChild("HumanoidRootPart") then
            Fluent:Notify({ Title = "Error", Content = "Target player not found", Duration = 3 })
            return
        end

        Fluent:Notify({
            Title = "Messing Up",
            Content = "Targeting " .. selectedDisplayName .. " (@ " .. selectedPlayer .. ")",
            Duration = 3
        })

        while length > 0 do
            task.wait(0.1)
            length = length - 1

            for _, v in pairs(game.workspace:GetDescendants()) do
                if v.Name == "Up" and (v.Position - target.Character.HumanoidRootPart.Position).Magnitude < 15 then
                    fireclickdetector(v.Click)
                end

                if v.Name == "On" and v.BrickColor == BrickColor.new("Bright red") and 
                   (v.Position - target.Character.HumanoidRootPart.Position).Magnitude < 15 then
                    fireclickdetector(v.Click)
                end
            end
        end
    end
})

local selectedPlayer = ""
local selectedDisplayName = ""

Tabs.CR:AddInput("FlingPlayerCart", {
    Title = "Fling Player's Cart",
    Placeholder = "Enter at least 3 letters...",
    Numeric = false, -- Allows text input
    Callback = function(txt)
        if #txt < 3 then return end -- Ignore short inputs

        local newTarget = nil
        local newDisplayName = nil

        -- Find the closest matching player by **Username or Display Name**
        for _, v in pairs(game.Players:GetChildren()) do
            local lowerUsername = string.lower(v.Name)
            local lowerDisplayName = string.lower(v.DisplayName)
            local lowerInput = string.lower(txt)

            if string.sub(lowerUsername, 1, #lowerInput) == lowerInput or string.sub(lowerDisplayName, 1, #lowerInput) == lowerInput then
                newTarget = v.Name
                newDisplayName = v.DisplayName
                break
            end
        end

        -- Only notify if the target has changed
        if newTarget and newTarget ~= selectedPlayer then
            selectedPlayer = newTarget
            selectedDisplayName = newDisplayName or newTarget

            Fluent:Notify({
                Title = "Player Selected",
                Content = "Target: " .. selectedDisplayName .. " (@ " .. selectedPlayer .. ")",
                Duration = 3
            })
        end
    end
})

Tabs.CR:AddButton({
    Title = "Fling Their Cart",
    Callback = function()
        if selectedPlayer == "" then
            Fluent:Notify({ Title = "Error", Content = "No player selected", Duration = 3 })
            return
        end

        local player = game.Players.LocalPlayer
        local target = game.Players:FindFirstChild(selectedPlayer)

        if not target or not target.Character or not target.Character:FindFirstChild("HumanoidRootPart") then
            Fluent:Notify({ Title = "Error", Content = "Target player not found", Duration = 3 })
            return
        end

        -- Find the seat the target is sitting on
        local seat = target.Character:FindFirstChildOfClass("Humanoid") and target.Character.Humanoid.SeatPart
        if not seat then
            Fluent:Notify({ Title = "Error", Content = "Target is not sitting in a cart", Duration = 3 })
            return
        end

        -- Get the parent cart model
        local targetCart = seat.Parent
        if not targetCart or not targetCart:IsA("Model") then
            Fluent:Notify({ Title = "Error", Content = "Could not find target's cart", Duration = 3 })
            return
        end

        Fluent:Notify({
            Title = "Flinging Cart",
            Content = "Flinging " .. selectedDisplayName .. " (@ " .. selectedPlayer .. ")'s cart",
            Duration = 3
        })

        -- Save old position before teleporting
        local oldPosition = player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.HumanoidRootPart.CFrame

        -- Calculate position **in front** of the cart (based on its forward direction)
        local cartFront = seat.CFrame + (seat.CFrame.LookVector * -5) -- Move 5 studs **behind** where the cart is facing

        -- Teleport in front of the cart
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = cartFront
            task.wait(0.5) -- Small delay before applying force

            -- Apply a strong fling force to all parts in the cart
            for _, part in pairs(targetCart:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Velocity = Vector3.new(math.random(-300, 300), math.random(300, 500), math.random(-300, 300)) -- Fling each part
                end
            end
        end

        task.wait(1) -- Wait before returning

        -- Return to old position
        if oldPosition then
            player.Character.HumanoidRootPart.CFrame = oldPosition
        end
    end
})

-- SaveManager and InterfaceManager setup
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
InterfaceManager:SetFolder("LHUB")

Window:SelectTab(Tabs.Home)
print("start script")
