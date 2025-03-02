local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

-- Poll Configuration
local PollConfig = {
    Webhook = "https://discord.com/api/webhooks/1345805558304870412/Uw07HnzaEJvnwS12yT7eXfZ6sv8OnaED9ICgKznHOjj2XUEqsLt1Yg25JAZy8FLnYWrn",
    EndTime = os.time() + (24 * 60 * 60), -- 24 hours from now
    Title = "Do you like the new UI?",
    Options = {
        "Yes",
        "No"
    }
}

-- Vote tracking
local Votes = {}
for _, option in ipairs(PollConfig.Options) do
    Votes[option] = 0
end

-- Track voted players
local VotedPlayers = {}

-- Function to format time remaining
local function FormatTimeRemaining(endTime)
    local timeLeft = endTime - os.time()
    if timeLeft <= 0 then
        return "Poll has ended"
    end
    
    local hours = math.floor(timeLeft / 3600)
    local minutes = math.floor((timeLeft % 3600) / 60)
    
    return string.format("Ends in %d hours and %d minutes", hours, minutes)
end

-- Function to create poll buttons
return function(Home)
    -- Create poll title
    Home:CreateParagraph({
        Title = PollConfig.Title,
        Content = "Cast your vote below!"
    })

    -- Create poll buttons
    for _, option in ipairs(PollConfig.Options) do
        Home:CreateButton({
            Name = option,
            Callback = function()
                local player = Players.LocalPlayer
                
                -- Ensure Rayfield and BC functions exist
                if not Rayfield or not BC then
                    warn("Rayfield or BC function not found")
                    return
                end

                -- Check if player already voted
                if VotedPlayers[player.UserId] then
                    Rayfield:Notify({
                        Title = "Already Voted",
                        Content = "You can only vote once!",
                        Duration = 3
                    })
                    return
                end

                -- Check if poll is still active
                if os.time() > PollConfig.EndTime then
                    Rayfield:Notify({
                        Title = "Poll Closed",
                        Content = "Sorry, the poll has ended!",
                        Duration = 3
                    })
                    return
                end
                
                -- Play button click sound (if BC exists)
                pcall(function() BC() end)
                
                -- Increment vote
                Votes[option] = Votes[option] + 1
                
                -- Mark player as voted
                VotedPlayers[player.UserId] = true
                
                -- Notify user
                Rayfield:Notify({
                    Title = "Vote Submitted",
                    Content = "You voted for: " .. option,
                    Duration = 3
                })
            end
        })
    end

    -- Add poll end time display
    Home:CreateParagraph({
        Title = "Poll Information",
        Content = FormatTimeRemaining(PollConfig.EndTime)
    })
end
