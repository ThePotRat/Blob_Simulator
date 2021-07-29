--// Snow Hub
local SnowLib = loadstring(game:HttpGet(("https://snowhub.dev/developer/library"), true))()
local Window = SnowLib:Window("Blob Simulator")
local Main = Window:Tab("Currency")
local Farming = Window:Tab("Farming")
local Pets = Window:Tab("Pets")
local Items = Window:Tab("Items")
--// Currency
Main:Button("Infinte Coins", function()
    game.ReplicatedStorage.Events.ChangeMoney:FireServer(1000000000000000,"newkeycode")
end)

Main:Button("Infinte Apples", function()
    game.ReplicatedStorage.Events.ChangeApples:FireServer(1000000000000000,"newkeycode")
end)

Main:Button("Infinte Cookies", function()
    game.ReplicatedStorage.Events.ChangeCookies:FireServer(1000000000000000,"newkeycode")
end)
--// Farming
Farming:Button("Kill Best Blobs", function()
local A_1 = game:GetService("Workspace").GameStuff.Blobs.teddyblob.teddyblob.BlobProperties
local A_2 = math.huge
local A_3 = "newkeycode"
local Event = game:GetService("ReplicatedStorage").Events.DealDamage
Event:FireServer(A_1, A_2, A_3)
local A_1 = game:GetService("Workspace").GameStuff.Blobs.roblob.roblob.BlobProperties
local A_2 = math.huge
local A_3 = "newkeycode"
local Event = game:GetService("ReplicatedStorage").Events.DealDamage
Event:FireServer(A_1, A_2, A_3)
local A_1 = game:GetService("Workspace").GameStuff.Blobs.slimeblob.slimeblob.BlobProperties
local A_2 = math.huge
local A_3 = "newkeycode"
local Event = game:GetService("ReplicatedStorage").Events.DealDamage
Event:FireServer(A_1, A_2, A_3)
SnowLib:Notify("Killed blobs with highest award")
end)

Farming:Button("Auto Rebirth", function()
while true do --
wait() 
game.ReplicatedStorage.Events.ChangeMoney:FireServer(100000000000000000, "newkeycode")
game.ReplicatedStorage.Events.RebirthPlayer:FireServer(LocalPlayer, "newkeycode")
end
end)
--// Pets
Pets:Button("Get Best Pet", function()
local kek = game.ReplicatedStorage.Pets:FindFirstChild("Rainbow Snowman Buddy")

game.ReplicatedStorage.Events.GivePet:FireServer(kek, "newkeycode")
end)

Pets:Button("Get Pet List In Dev Console [F9]", function()
    loadstring(game:HttpGet(("https://pastebin.com/raw/qXTSaEeG"),true))() 
end)
--// Items
Items:Button("Get Best Bag", function()
local args = {
    [1] = game:GetService("ReplicatedStorage").BagShop:FindFirstChild("22"),
    [2] = "newkeycode"
}

game:GetService("ReplicatedStorage").Events.GiveBag:FireServer(unpack(args))
wait(1)
local args = {
    [1] = game:GetService("ReplicatedStorage").BagShop:FindFirstChild("22").Item.Accessory
}

game:GetService("ReplicatedStorage").Events.EquipBag:FireServer(unpack(args))

end)

Items:Button("Get Best Vacuum", function()
local args = {
    [1] = game:GetService("ReplicatedStorage").Shop:FindFirstChild("31"),
    [2] = "newkeycode"
}

game:GetService("ReplicatedStorage").Events.GiveItem:FireServer(unpack(args))
wait(1)

local args = {
    [1] = game:GetService("ReplicatedStorage").Shop:FindFirstChild("31").Item.Tool
}

game:GetService("ReplicatedStorage").Events.EquipItem:FireServer(unpack(args))
end)
