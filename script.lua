local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0.3, 0, 0.2, 0)
MainFrame.Position = UDim2.new(0.35, 0, 0.4, 0)
MainFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
MainFrame.Parent = ScreenGui

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0.1, 0)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.Text = "made by stealslol"
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
TitleLabel.Parent = MainFrame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.8, 0, 0.4, 0)
TextBox.Position = UDim2.new(0.1, 0, 0.2, 0)
TextBox.PlaceholderText = "Enter your message"
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.Parent = MainFrame

local SendButton = Instance.new("TextButton")
SendButton.Size = UDim2.new(0.8, 0, 0.2, 0)
SendButton.Position = UDim2.new(0.1, 0, 0.65, 0)
SendButton.Text = "Send"
SendButton.TextColor3 = Color3.new(1, 1, 1)
SendButton.BackgroundColor3 = Color3.new(0.1, 0.5, 0.1)
SendButton.Parent = MainFrame

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0)
MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0)
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.new(1, 1, 1)
MinimizeButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
MinimizeButton.Parent = MainFrame

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0.1, 0, 0.1, 0)
CloseButton.Position = UDim2.new(0.8, 0, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.BackgroundColor3 = Color3.new(0.5, 0.1, 0.1)
CloseButton.Parent = MainFrame

local isMinimized = false

    local message = TextBox.Text
    if message ~= "" then
        local BillboardGui = Instance.new("BillboardGui")
        BillboardGui.Adornee = game.Players.LocalPlayer.Character:WaitForChild("Head")
        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
        BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
        BillboardGui.Parent = game.Players.LocalPlayer.Character

        local MessageLabel = Instance.new("TextLabel")
        MessageLabel.Size = UDim2.new(1, 0, 1, 0)
        MessageLabel.Text = message
        MessageLabel.TextColor3 = Color3.new(1, 1, 1)
        MessageLabel.BackgroundTransparency = 1
        MessageLabel.Parent = BillboardGui
        wait(5)
        BillboardGui:Destroy()
    end
end)

MinimizeButton.MouseButton1Click:Connect(function()
    if isMinimized then
        MainFrame.Size = UDim2.new(0.3, 0, 0.2, 0)
        isMinimized = false
    else
        MainFrame.Size = UDim2.new(0.3, 0, 0.05, 0)
        isMinimized = true
    end
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function checkForMobile()
    if UserInputService.TouchEnabled then
        MainFrame.Size = UDim2.new(0.5, 0, 0.3, 0)
        MainFrame.Position = UDim2.new(0.25, 0, 0.35, 0)
    end
end

checkForMobile()
