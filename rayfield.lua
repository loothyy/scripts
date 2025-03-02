local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local PollEndTimestamp = 1741032720 -- UNIX timestamp for when the poll ends

print("test")

-- Poll Configuration
local PollConfig = {
    Webhook = "https://discord.com/api/webhooks/1345805558304870412/Uw07HnzaEJvnwS12yT7eXfZ6sv8OnaED9ICgKznHOjj2XUEqsLt1Yg25JAZy8FLnYWrn",
    Title = "Do you like the new UI?"
}

-- Track votes
local Votes = { Yes = 0, No = 0 }
local VotedPlayers = {}

-- Function to check if poll is still open
local function IsPollOpen()
    return os.time() < PollEndTimestamp
end

-- Function to send vote to Discord webhook
local function SendVote(player, vote)
    if not IsPollOpen() then
        Rayfield:Notify({
            Title = "Poll Closed",
            Content = "The poll has ended and you can no longer vote!",
            Duration = 3
        })
        return
    end

    if VotedPlayers[player.UserId] then
        Rayfield:Notify({
            Title = "Vote Failed",
            Content = "You have already voted!",
            Duration = 3
        })
        return
    end

    VotedPlayers[player.UserId] = true -- Mark player as voted
    Votes[vote] = Votes[vote] + 1

    -- Calculate percentages
    local totalVotes = Votes.Yes + Votes.No
    local yesPercent = math.floor((Votes.Yes / totalVotes) * 100)
    local noPercent = math.floor((Votes.No / totalVotes) * 100)

    -- Get game name
    local gameName = "Unknown Game"
    pcall(function()
        gameName = MarketplaceService:GetProductInfo(game.PlaceId).Name
    end)

    -- Format message
    local data = {
        content = string.format(
            "**%s** voted: **%s**\n🕹 **Game:** %s\n📊 **Vote Results:**\n✅ Yes: %d%% (%d votes)\n❌ No: %d%% (%d votes)\n\n📅 Poll ends: <t:%d:R>",
            player.Name, vote, gameName, yesPercent, Votes.Yes, noPercent, Votes.No, PollEndTimestamp
        )
    }

    local success, response = pcall(function()
        return HttpService:PostAsync(PollConfig.Webhook, HttpService:JSONEncode(data), Enum.HttpContentType.ApplicationJson)
    end)

    if success then
        Rayfield:Notify({
            Title = "Vote Submitted",
            Content = "You voted " .. vote .. "!",
            Duration = 3
        })
    else
        Rayfield:Notify({
            Title = "Vote Failed",
            Content = "Error sending vote!",
            Duration = 3
        })
    end
end

-- Function to create poll buttons
return function(Home)
    -- Create poll title
    Home:CreateParagraph({
        Title = PollConfig.Title,
        Content = "Cast your vote below! Poll ends soon."
    })

    -- Create poll buttons
    Home:CreateButton({
        Name = "Yes",
        Callback = function()
            local player = Players.LocalPlayer
            SendVote(player, "Yes")
        end
    })

    Home:CreateButton({
        Name = "No",
        Callback = function()
            local player = Players.LocalPlayer
            SendVote(player, "No")
        end
    })
end
