function Load()
    local content = game:HttpGet("https://iidentity.github.io/Pornide/Test.lua")
    loadstring(content)()
end

local PromptLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/PromptLibrary.lua"))()
PromptLib("Question","Would You Like Copy The Discord Server Invite To Clipboard?",{
    {
        Text = "Yes",
        LayoutOrder = 0,
        Primary = true,
        Callback = function()
            setclipboard("https://discord.gg/7kCBmg7KMn")
            Load()
        end
    },
    {
        Text = "No",
        LayoutOrder = 1,
        Primary = false,
        Callback = function()
            Load()
        end
    }
})
