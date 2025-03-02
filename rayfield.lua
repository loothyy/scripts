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

-- Function to send vote to webhook
local function SendVoteToWebhook(player, votedOption)
    local totalVotes = 0
    for _, count in pairs(Votes) do
        totalVotes = totalVotes + count
    end
    
    -- Calculate percentages
    local percentages = {}
    for option, count in pairs(Votes) do
        percentages[option] = totalVotes > 0 and math.floor((count / totalVotes) * 100) or 0
    end
    
    -- Prepare webhook payload
    local payload = {
        embeds = {{
            title = PollConfig.Title,
            description = string.format("**New Vote by %s**\n\n**Votes:**\n", player.Name),
            fields = {},
            timestamp = DateTime.now():ToIsoDateString()
        }}
    }
    
    -- Add vote percentages to payload
    for option, percentage in pairs(percentages) do
        table.insert(payload.embeds[1].fields, {
            name = option,
            value = string.format("Votes: %d (%.1f%%)", Votes[option], percentage),
            inline = true
        })
    end
    
    -- Send to webhook
    local success, err = pcall(function()
        HttpService:PostAsync(PollConfig.Webhook, HttpService:JSONEncode(payload))
    end)
    
    if not success then
        warn("Failed to send webhook: " .. tostring(err))
    end
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
                
                -- Play button click sound
                BC()
                
                -- Increment vote
                Votes[option] = Votes[option] + 1
                
                -- Mark player as voted
                VotedPlayers[player.UserId] = true
                
                -- Send vote to webhook
                SendVoteToWebhook(player, option)
                
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
        Content = string.format("Poll ends <t:%d:R>", PollConfig.EndTime)
    })
end
