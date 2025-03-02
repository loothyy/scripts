local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

-- Poll Configuration
local PollConfig = {
    Webhook = "https://discord.com/api/webhooks/1345805558304870412/Uw07HnzaEJvnwS12yT7eXfZ6sv8OnaED9ICgKznHOjj2XUEqsLt1Yg25JAZy8FLnYWrn",
    Title = "Do you like the new UI?"
}

-- Track voted players
local VotedPlayers = {}

-- Function to create poll buttons
return function(Home)
    -- Create poll title
    Home:CreateParagraph({
        Title = PollConfig.Title,
        Content = "Cast your vote below!"
    })

    -- Create poll buttons
    Home:CreateButton({
        Name = "Yes",
        Callback = function()
            local player = Players.LocalPlayer
            
            -- Play button click sound
            pcall(function() 
                BC() 
            end)
            
            -- Notify user
            Rayfield:Notify({
                Title = "Vote Submitted",
                Content = "You voted Yes!",
                Duration = 3
            })
        end
    })

    Home:CreateButton({
        Name = "No",
        Callback = function()
            local player = Players.LocalPlayer
            
            -- Play button click sound
            pcall(function() 
                BC() 
            end)
            
            -- Notify user
            Rayfield:Notify({
                Title = "Vote Submitted",
                Content = "You voted No!",
                Duration = 3
            })
        end
    })
end
