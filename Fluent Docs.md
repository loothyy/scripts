# Fluent UI Library Guide

Fluent is a UI library for Roblox scripts that provides an easy way to create user interfaces. This guide explains how to use Fluent effectively, covering key components and functions.

---

## 1. Setting Up Fluent
To start using Fluent, load the library and its addons:
```lua
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
```

---

## 2. Creating a Window
```lua
local Window = Fluent:CreateWindow({
    Title = "Fluent " .. Fluent.Version,
    SubTitle = "by dawid",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
```
- `Title`: The main title of the UI.
- `SubTitle`: A secondary text.
- `Size`: Dimensions of the window.
- `Acrylic`: Enables or disables background blur.
- `Theme`: Changes the UI theme.
- `MinimizeKey`: Key used to minimize the UI.

---

## 3. Adding Tabs
```lua
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
```
Tabs allow categorization of UI elements.

---

## 4. Notifications
```lua
Fluent:Notify({
    Title = "Notification",
    Content = "This is a notification",
    SubContent = "Additional info",
    Duration = 5
})
```
Displays a popup message.

---

## 5. Adding UI Elements

### 5.1. Paragraphs
```lua
Tabs.Main:AddParagraph({
    Title = "Info",
    Content = "This is a paragraph.\nSecond line!"
})
```

### 5.2. Buttons
```lua
Tabs.Main:AddButton({
    Title = "Click Me",
    Description = "Important button",
    Callback = function()
        print("Button clicked!")
    end
})
```

### 5.3. Toggles
```lua
local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Enable Feature", Default = false })
Toggle:OnChanged(function()
    print("Toggle state:", Toggle.Value)
end)
```

### 5.4. Sliders
```lua
local Slider = Tabs.Main:AddSlider("Slider", {
    Title = "Adjust Value",
    Min = 0,
    Max = 10,
    Default = 5,
    Callback = function(Value)
        print("Slider changed to:", Value)
    end
})
```

### 5.5. Dropdowns
```lua
local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
    Title = "Select Option",
    Values = {"One", "Two", "Three"},
    Default = "One",
    Callback = function(Value)
        print("Selected:", Value)
    end
})
```

### 5.6. Color Pickers
```lua
local Colorpicker = Tabs.Main:AddColorpicker("Colorpicker", {
    Title = "Choose Color",
    Default = Color3.fromRGB(255, 0, 0)
})
Colorpicker:OnChanged(function()
    print("New Color:", Colorpicker.Value)
end)
```

### 5.7. Keybinds
```lua
local Keybind = Tabs.Main:AddKeybind("Keybind", {
    Title = "Set Keybind",
    Default = "LeftControl",
    Callback = function()
        print("Keybind activated!")
    end
})
```

---

## 6. Saving & Managing Configurations
```lua
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
```
- `SaveManager` handles saving/loading of user preferences.
- `InterfaceManager` manages UI settings.

To automatically load saved configurations:
```lua
SaveManager:LoadAutoloadConfig()
```

---

## 7. Finalizing the UI
```lua
Window:SelectTab(1)
Fluent:Notify({
    Title = "Fluent",
    Content = "Script Loaded Successfully!",
    Duration = 8
})
```

---

## Conclusion
This guide provides a structured overview of the Fluent UI library, explaining how to create and manage UI elements in Roblox. By following these instructions, you can build a fully functional user interface tailored to your script’s needs.

