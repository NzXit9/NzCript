-- NzCript - Blox Fruits ULTIMATE COMPLETO
-- FAZ TUDO TUDO TUDO TUDO TUDO TUDO TUDO TUDO TUDO
-- SEM KEY | 100% GRATUITO | INTERFACE VISUAL COMPLETA
-- SÓ COPIAR E COLAR NO EXECUTOR

local NzCript = {Nome = "NzCript", Versao = "10.0 COMPLETO", Autor = "NzDeveloper"}

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- COORDENADAS
local Coords = {
    Jungle = Vector3.new(-1149, 123, 486),
    PirateVillage = Vector3.new(-598, 82, -486),
    Desert = Vector3.new(-1508, 52, 442),
    IceIsland = Vector3.new(1048, 130, 1104),
    MagmaVillage = Vector3.new(-2690, 85, -1748),
    Mansion = Vector3.new(-835, 74, -1320),
    SeaCastle = Vector3.new(367, 206, -274),
    HauntedCastle = Vector3.new(-4784, 498, -4834),
    CursedShip = Vector3.new(944, 14, 3302),
    FloatingTurtle = Vector3.new(-3446, 97, 4714),
    KingdomOfRose = Vector3.new(-567, 65, 116),
    HydraIsland = Vector3.new(-3980, 7, 3010),
    CastleOnSea = Vector3.new(-4700, 55, -4700),
    DonSwan = Vector3.new(-835, 74, -1320),
    IceAdmiral = Vector3.new(832, 75, 1437),
    MobLeader = Vector3.new(-1296, 86, 576),
    DarkBoss = Vector3.new(-4784, 498, -4834),
    ThunderGod = Vector3.new(-1508, 52, 442),
    DragonBoss = Vector3.new(-2690, 85, -1748),
    CyborgBoss = Vector3.new(367, 206, -274),
    Prison = Vector3.new(4788, 8, -691),
    PortTown = Vector3.new(40, 16, -1046),
    FruitSpawn1 = Vector3.new(-1149, 120, 486),
    FruitSpawn2 = Vector3.new(-598, 78, -486),
    FruitSpawn3 = Vector3.new(-1508, 48, 442),
    FruitSpawn4 = Vector3.new(1048, 126, 1104),
    FruitSpawn5 = Vector3.new(-2690, 81, -1748),
    FruitSpawn6 = Vector3.new(-835, 70, -1320),
    FruitSpawn7 = Vector3.new(367, 202, -274),
    FruitSpawn8 = Vector3.new(-4784, 494, -4834),
    FruitSpawn9 = Vector3.new(-3446, 93, 4714),
    FruitSpawn10 = Vector3.new(1950, 16, 3960),
    FruitSpawn11 = Vector3.new(-2837, 179, -3000),
    FruitSpawn12 = Vector3.new(40, 12, -1046),
}

-- TODAS AS FRUTAS
local TodasFrutas = {
    {nome = "Dragon-Fruit", raridade = "Mítica", local = Coords.FruitSpawn1},
    {nome = "Leopard-Fruit", raridade = "Mítica", local = Coords.FruitSpawn2},
    {nome = "Kitsune-Fruit", raridade = "Mítica", local = Coords.FruitSpawn3},
    {nome = "Dough-Fruit", raridade = "Mítica", local = Coords.FruitSpawn4},
    {nome = "Venom-Fruit", raridade = "Lendária", local = Coords.FruitSpawn5},
    {nome = "Control-Fruit", raridade = "Lendária", local = Coords.FruitSpawn6},
    {nome = "Shadow-Fruit", raridade = "Lendária", local = Coords.FruitSpawn7},
    {nome = "Gravity-Fruit", raridade = "Lendária", local = Coords.FruitSpawn8},
    {nome = "Spirit-Fruit", raridade = "Lendária", local = Coords.FruitSpawn9},
    {nome = "Soul-Fruit", raridade = "Lendária", local = Coords.FruitSpawn10},
    {nome = "Flame-Fruit", raridade = "Mística", local = Coords.FruitSpawn1},
    {nome = "Ice-Fruit", raridade = "Mística", local = Coords.FruitSpawn2},
    {nome = "Light-Fruit", raridade = "Mística", local = Coords.FruitSpawn3},
    {nome = "Dark-Fruit", raridade = "Mística", local = Coords.FruitSpawn4},
    {nome = "Magma-Fruit", raridade = "Mística", local = Coords.FruitSpawn5},
    {nome = "Rumble-Fruit", raridade = "Mística", local = Coords.FruitSpawn6},
    {nome = "Buddha-Fruit", raridade = "Mística", local = Coords.FruitSpawn7},
    {nome = "Love-Fruit", raridade = "Mística", local = Coords.FruitSpawn8},
    {nome = "Chop-Fruit", raridade = "Comum", local = Coords.FruitSpawn9},
    {nome = "Spring-Fruit", raridade = "Comum", local = Coords.FruitSpawn10},
    {nome = "Spin-Fruit", raridade = "Comum", local = Coords.FruitSpawn11},
    {nome = "Bomb-Fruit", raridade = "Comum", local = Coords.FruitSpawn12},
    {nome = "Smoke-Fruit", raridade = "Comum", local = Coords.FruitSpawn1},
    {nome = "Falcon-Fruit", raridade = "Comum", local = Coords.FruitSpawn2},
    {nome = "Rock-Fruit", raridade = "Comum", local = Coords.FruitSpawn3},
    {nome = "Rubber-Fruit", raridade = "Comum", local = Coords.FruitSpawn4},
    {nome = "Barrier-Fruit", raridade = "Comum", local = Coords.FruitSpawn5},
    {nome = "Ghost-Fruit", raridade = "Comum", local = Coords.FruitSpawn6},
    {nome = "Diamond-Fruit", raridade = "Comum", local = Coords.FruitSpawn7},
}

-- TODAS AS ESPADAS
local TodasEspadas = {
    {nome = "Cursed Dual Katana", tipo = "Lendária", preco = 0, compravel = false, local = Coords.HauntedCastle, boss = "DarkBoss"},
    {nome = "Tushita", tipo = "Lendária", preco = 0, compravel = false, local = Coords.IceIsland, boss = "IceAdmiral"},
    {nome = "Yama", tipo = "Lendária", preco = 0, compravel = false, local = Coords.Jungle, boss = "MobLeader"},
    {nome = "Pole V2", tipo = "Lendária", preco = 0, compravel = false, local = Coords.IceIsland, boss = "ThunderGod"},
    {nome = "Soul Cane", tipo = "Lendária", preco = 0, compravel = false, local = Coords.Mansion, boss = "DonSwan"},
    {nome = "Dark Dagger", tipo = "Lendária", preco = 0, compravel = false, local = Coords.MagmaVillage, boss = "DragonBoss"},
    {nome = "True Triple Katana", tipo = "Lendária", preco = 0, compravel = false, local = Coords.KingdomOfRose},
    {nome = "Shisui", tipo = "Lendária", preco = 0, compravel = false, local = Coords.FloatingTurtle},
    {nome = "Koko", tipo = "Lendária", preco = 0, compravel = false, local = Coords.HydraIsland},
    {nome = "Saddi", tipo = "Lendária", preco = 0, compravel = false, local = Coords.CastleOnSea},
    {nome = "Canvander", tipo = "Rara", preco = 50000, compravel = true, local = Coords.Prison},
    {nome = "Saber", tipo = "Rara", preco = 25000, compravel = true, local = Coords.Jungle},
    {nome = "Katana", tipo = "Comum", preco = 5000, compravel = true, local = Coords.Desert},
    {nome = "Cutlass", tipo = "Comum", preco = 7500, compravel = true, local = Coords.IceIsland},
}

-- TODAS AS ARMAS
local TodasArmas = {
    {nome = "Flintlock", tipo = "Comum", preco = 5000, compravel = true, local = Coords.PirateVillage},
    {nome = "Blunderbuss", tipo = "Comum", preco = 8000, compravel = true, local = Coords.Desert},
    {nome = "Musket", tipo = "Rara", preco = 25000, compravel = true, local = Coords.IceIsland},
    {nome = "Staff", tipo = "Comum", preco = 6000, compravel = true, local = Coords.Mansion},
    {nome = "Scythe", tipo = "Lendária", preco = 0, compravel = false, local = Coords.HauntedCastle},
    {nome = "Axe", tipo = "Comum", preco = 7000, compravel = true, local = Coords.Jungle},
    {nome = "Hammer", tipo = "Rara", preco = 15000, compravel = true, local = Coords.Desert},
}

-- TODOS OS ACESSÓRIOS
local TodosAcessorios = {
    {nome = "Pale Scarf", tipo = "Lendário", preco = 0, compravel = false, local = Coords.IceIsland, boss = "IceAdmiral"},
    {nome = "Pink Coat", tipo = "Lendário", preco = 0, compravel = false, local = Coords.Mansion, boss = "DonSwan"},
    {nome = "Black Cape", tipo = "Lendário", preco = 0, compravel = false, local = Coords.HauntedCastle, boss = "DarkBoss"},
    {nome = "Sword Master", tipo = "Lendário", preco = 0, compravel = false, local = Coords.FloatingTurtle, boss = "CyborgBoss"},
    {nome = "Haki Crown", tipo = "Lendário", preco = 0, compravel = false, local = Coords.CastleOnSea},
    {nome = "Dragon Scarf", tipo = "Lendário", preco = 0, compravel = false, local = Coords.MagmaVillage, boss = "DragonBoss"},
    {nome = "Cyborg Helmet", tipo = "Lendário", preco = 0, compravel = false, local = Coords.SeaCastle, boss = "CyborgBoss"},
    {nome = "Marine Hat", tipo = "Raro", preco = 15000, compravel = true, local = Coords.PirateVillage},
    {nome = "Bandana", tipo = "Comum", preco = 5000, compravel = true, local = Coords.Desert},
    {nome = "Sun Glasses", tipo = "Comum", preco = 8000, compravel = true, local = Coords.IceIsland},
}

-- FUNÇÕES
local function Teleportar(pos)
    if not pos then return end
    local root = Character:FindFirstChild("HumanoidRootPart")
    if root then
        local tween = TweenService:Create(root, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pos)})
        tween:Play()
        tween.Completed:Wait()
    end
end

local function Interagir(obj)
    if not obj then return end
    local click = obj:FindFirstChild("ClickDetector") or obj.Parent:FindFirstChild("ClickDetector") or obj:FindFirstChild("ProximityPrompt")
    if click then
        if click:IsA("ClickDetector") then
            fireclickdetector(click)
        elseif click:IsA("ProximityPrompt") then
            click:InputHoldStart(LocalPlayer)
            wait(0.3)
            click:InputHoldEnd(LocalPlayer)
        end
    end
end

local function PegarItem(nome)
    for _, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("Tool") or v:IsA("Part") then
            if v.Name:lower():find(string.lower(nome)) or (v.Parent and v.Parent.Name:lower():find(string.lower(nome))) then
                local root = Character:FindFirstChild("HumanoidRootPart")
                if root and (root.Position - v.Position).Magnitude > 15 then
                    Teleportar(v.Position + Vector3.new(0, 3, 0))
                    wait(0.2)
                end
                Interagir(v)
                return true
            end
        end
    end
    return false
end

local function MatarBoss(nome, pos)
    Teleportar(pos)
    wait(0.5)
    local boss = nil
    for _, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Name:lower():find(string.lower(nome)) then
            boss = v
            break
        end
    end
    if boss then
        while boss and boss:FindFirstChild("Humanoid") and boss.Humanoid.Health > 0 do
            local root = boss:FindFirstChild("HumanoidRootPart")
            if root then Teleportar(root.Position + Vector3.new(0, 3, 0)) end
            local attack = Character:FindFirstChild("Attack")
            if attack then attack:Activate() wait(0.15) attack:Deactivate() end
            for _, tool in pairs(Character:GetChildren()) do
                if tool:IsA("Tool") and tool:FindFirstChild("Activate") then
                    tool.Activate:FireServer()
                    wait(0.1)
                end
            end
            wait(0.2)
        end
        return true
    end
    return false
end

local function ComprarItem(nome, preco)
    print("🛒 Comprando: " .. nome)
    local remote = ReplicatedStorage:FindFirstChild("BuyItem")
    if remote then remote:FireServer(nome) wait(0.5) return true end
    return false
end

local function RastrearFrutas()
    print("🔍 RASTREANDO FRUTAS...")
    local encontradas = {}
    for _, fruta in pairs(TodasFrutas) do
        for _, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Tool") then
                if v.Name:find(fruta.nome) or (v.Parent and v.Parent.Name:find(fruta.nome)) then
                    local root = Character:FindFirstChild("HumanoidRootPart")
                    if root then
                        table.insert(encontradas, {nome = fruta.nome, raridade = fruta.raridade, pos = v.Position, dist = (root.Position - v.Position).Magnitude, obj = v})
                    end
                end
            end
        end
    end
    table.sort(encontradas, function(a,b) return a.dist < b.dist end)
    if #encontradas > 0 then
        print("🍎 FRUTAS ENCONTRADAS:")
        for i, f in pairs(encontradas) do
            print("  " .. i .. ". " .. f.nome .. " [" .. f.raridade .. "] - " .. math.floor(f.dist) .. "m")
        end
        local f = encontradas[1]
        Teleportar(f.pos + Vector3.new(0, 3, 0))
        wait(0.3)
        Interagir(f.obj)
        return encontradas
    end
    print("❌ Nenhuma fruta encontrada")
    return {}
end

local function PegarEspada(nome)
    for _, espada in pairs(TodasEspadas) do
        if espada.nome:lower():find(string.lower(nome)) then
            if espada.compravel then ComprarItem(espada.nome, espada.preco) return true end
            if espada.boss then local bc = Coords[espada.boss] if bc then MatarBoss(espada.boss, bc) wait(0.5) end end
            PegarItem(espada.nome)
            return true
        end
    end
    return false
end

local function PegarAcessorio(nome)
    for _, acessorio in pairs(TodosAcessorios) do
        if acessorio.nome:lower():find(string.lower(nome)) then
            if acessorio.compravel then ComprarItem(acessorio.nome, acessorio.preco) return true end
            if acessorio.boss then local bc = Coords[acessorio.boss] if bc then MatarBoss(acessorio.boss, bc) wait(0.5) end end
            PegarItem(acessorio.nome)
            return true
        end
    end
    return false
end

local function FarmarDinheiro()
    print("💰 FARMANDO DINHEIRO...")
    local locais = {Coords.Jungle, Coords.PirateVillage, Coords.Desert, Coords.IceIsland, Coords.MagmaVillage, Coords.Mansion}
    for i = 1, 20 do
        for _, pos in pairs(locais) do
            Teleportar(pos + Vector3.new(0, 2, 0))
            wait(0.2)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    local root = v:FindFirstChild("HumanoidRootPart")
                    local myRoot = Character:FindFirstChild("HumanoidRootPart")
                    if root and myRoot and (myRoot.Position - root.Position).Magnitude < 60 then
                        Teleportar(root.Position + Vector3.new(0, 3, 0))
                        wait(0.1)
                        local attack = Character:FindFirstChild("Attack")
                        if attack then attack:Activate() wait(0.15) attack:Deactivate() end
                        for _, tool in pairs(Character:GetChildren()) do
                            if tool:IsA("Tool") and tool:FindFirstChild("Activate") then
                                tool.Activate:FireServer()
                                wait(0.1)
                            end
                        end
                    end
                end
            end
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("Part") and (v.Name:lower():find("money") or v.Name:lower():find("beli") or v.Name:lower():find("chest")) then
                    local root = Character:FindFirstChild("HumanoidRootPart")
                    if root and (root.Position - v.Position).Magnitude < 40 then Interagir(v) end
                end
            end
            wait(0.3)
        end
    end
    print("💰 FARM DE DINHEIRO COMPLETO!")
end

local function FarmarLevel()
    print("🎯 FARMANDO LEVEL ATÉ 2800...")
    local levelObj = LocalPlayer:FindFirstChild("Level") or LocalPlayer:FindFirstChild("Data"):FindFirstChild("Level")
    while levelObj and levelObj.Value < 2800 do
        for _, npc in pairs({"Bandit", "Pirate", "Marine", "Rebel", "Gorilla"}) do
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Name:lower():find(string.lower(npc)) and v.Humanoid.Health > 0 then
                    local root = v:FindFirstChild("HumanoidRootPart")
                    if root then
                        Teleportar(root.Position + Vector3.new(0, 3, 0))
                        wait(0.1)
                        local attack = Character:FindFirstChild("Attack")
                        if attack then attack:Activate() wait(0.15) attack:Deactivate() end
                        for _, tool in pairs(Character:GetChildren()) do
                            if tool:IsA("Tool") and tool:FindFirstChild("Activate") then
                                tool.Activate:FireServer()
                                wait(0.1)
                            end
                        end
                    end
                end
            end
        end
        if levelObj.Value % 50 == 0 then print("📊 Nível: " .. levelObj.Value .. "/2800") end
        wait(0.5)
    end
    print("🎉 LEVEL MAX 2800 ALCANÇADO!")
end

-- INTERFACE VISUAL
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NzCript"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 500, 0, 550)
Main.Position = UDim2.new(0.5, -250, 0.5, -275)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
Main.BackgroundTransparency = 0.1
Main.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = Main

local Titulo = Instance.new("TextLabel")
Titulo.Size = UDim2.new(1, 0, 0, 40)
Titulo.BackgroundColor3 = Color3.fromRGB(30, 30, 60)
Titulo.BackgroundTransparency = 0.5
Titulo.Text = "⭐ NZCRIPT - ULTIMATE ⭐"
Titulo.TextColor3 = Color3.fromRGB(255, 215, 0)
Titulo.TextScaled = true
Titulo.Font = Enum.Font.GothamBold
Titulo.Parent = Main

local Abas = {}
local AbasNomes = {"🍎 Frutas", "🗡️ Espadas", "🎀 Acessórios", "💰 Farm"}
local Conteudo = {}

for i, nome in pairs(AbasNomes) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.25, 0, 0, 30)
    btn.Position = UDim2.new((i-1)*0.25, 0, 0, 40)
    btn.BackgroundColor3 = Color3.fromRGB(25, 25, 50)
    btn.BackgroundTransparency = 0.3
    btn.Text = nome
    btn.TextColor3 = Color3.fromRGB(200, 200, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = Main
    Abas[nome] = btn
    
    local scroll = Instance.new("ScrollingFrame")
    scroll.Size = UDim2.new(1, -10, 1, -85)
    scroll.Position = UDim2.new(0, 5, 0, 75)
    scroll.BackgroundTransparency = 1
    scroll.ScrollBarThickness = 5
    scroll.Visible = false
    scroll.Parent = Main
    Conteudo[nome] = scroll
end

Conteudo["🍎 Frutas"].Visible = true

-- Aba Frutas
local sf = Conteudo["🍎 Frutas"]
local y = 5
local btnR = Instance.new("TextButton")
btnR.Size = UDim2.new(1, -10, 0, 35)
btnR.Position = UDim2.new(0, 5, 0, y)
btnR.BackgroundColor3 = Color3.fromRGB(255, 150, 50)
btnR.BackgroundTransparency = 0.3
btnR.Text = "🔍 RASTREAR FRUTAS"
btnR.TextColor3 = Color3.fromRGB(255, 255, 255)
btnR.TextScaled = true
btnR.Font = Enum.Font.GothamBold
btnR.Parent = sf
btnR.MouseButton1Click:Connect(RastrearFrutas)
y = y + 40

for _, fruta in pairs(TodasFrutas) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -10, 0, 28)
    btn.Position = UDim2.new(0, 5, 0, y)
    btn.BackgroundColor3 = Color3.fromRGB(40, 40, 70)
    btn.BackgroundTransparency = 0.3
    btn.Text = fruta.nome .. " [" .. fruta.raridade .. "]"
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.Gotham
    btn.Parent = sf
    btn.MouseButton1Click:Connect(function()
        Teleportar(fruta.local + Vector3.new(0, 3, 0))
        wait(0.3)
        RastrearFrutas()
    end)
    y = y + 33
end

-- Aba Espadas
local se = Conteudo["🗡️ Espadas"]
local y2 = 5
for _, espada in pairs(TodasEspadas) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -10, 0, 28)
    btn.Position = UDim2.new(0, 5, 0, y2)
    btn.BackgroundColor3 = espada.tipo == "Lendária" and Color3.fromRGB(255, 215, 0) or espada.tipo == "Rara" and Color3.fromRGB(0, 191, 255) or Color3.fromRGB(40, 40, 60)
    btn.BackgroundTransparency = 0.3
    btn.Text = espada.nome .. (espada.compravel and " 💰" or " ⚔️")
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.Gotham
    btn.Parent = se
    btn.MouseButton1Click:Connect(function() PegarEspada(espada.nome) end)
    y2 = y2 + 33
end

-- Aba Acessórios
local sa = Conteudo["🎀 Acessórios"]
local y3 = 5
for _, acessorio in pairs(TodosAcessorios) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -10, 0, 28)
    btn.Position = UDim2.new(0, 5, 0, y3)
    btn.BackgroundColor3 = acessorio.tipo == "Lendário" and Color3.fromRGB(255, 215, 0) or acessorio.tipo == "Raro" and Color3.fromRGB(0, 191, 255) or Color3.fromRGB(40, 40, 60)
    btn.BackgroundTransparency = 0.3
    btn.Text = acessorio.nome .. (acessorio.compravel and " 💰" or " 🎯")
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.Gotham
    btn.Parent = sa
    btn.MouseButton1Click:Connect(function() PegarAcessorio(acessorio.nome) end)
    y3 = y3 + 33
end

-- Aba Farm
local sfarm = Conteudo["💰 Farm"]
local botoesFarm = {
    {"💰 FARMAR DINHEIRO", FarmarDinheiro, Color3.fromRGB(255, 215, 0)},
    {"🎯 FARMAR LEVEL 2800", FarmarLevel, Color3.fromRGB(255, 100, 100)},
    {"🔍 RASTREAR FRUTAS", RastrearFrutas, Color3.fromRGB(255, 150, 50)},
    {"🗡️ PEGAR TODAS ESPADAS", function()
        for _, e in pairs(TodasEspadas) do PegarEspada(e.nome) wait(0.2) end
    end, Color3.fromRGB(100, 200, 255)},
    {"🎀 PEGAR TODOS ACESSÓRIOS", function()
        for _, a in pairs(TodosAcessorios) do PegarAcessorio(a.nome) wait(0.2) end
    end, Color3.fromRGB(255, 100, 200)},
    {"⚡ FAZER TUDO TUDO TUDO", function()
        FarmarDinheiro()
        FarmarLevel()
        RastrearFrutas()
        for _, e in pairs(TodasEspadas) do PegarEspada(e.nome) wait(0.2) end
        for _, a in pairs(TodosAcessorios) do PegarAcessorio(a.nome) wait(0.2) end
        print("🎉 TUDO TUDO TUDO COMPLETO!")
    end, Color3.fromRGB(255, 0, 0)},
}
local y4 = 5
for _, botao in pairs(botoesFarm) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -10, 0, 40)
    btn.Position = UDim2.new(0, 5, 0, y4)
    btn.BackgroundColor3 = botao[3]
    btn.BackgroundTransparency = 0.3
    btn.Text = botao[1]
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.Parent = sfarm
    btn.MouseButton1Click:Connect(botao[2])
    y4 = y4 + 45
end

-- Sistema de Abas
for _, nome in pairs(AbasNomes) do
    Abas[nome].MouseButton1Click:Connect(function()
        for _, scroll in pairs(Conteudo) do scroll.Visible = false end
        Conteudo[nome].Visible = true
    end)
end

-- Fechar
local Fechar = Instance.new("TextButton")
Fechar.Size = UDim2.new(0, 25, 0, 25)
Fechar.Position = UDim2.new(1, -30, 0, 5)
Fechar.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
Fechar.BackgroundTransparency = 0.3
Fechar.Text = "X"
Fechar.TextColor3 = Color3.fromRGB(255, 255, 255)
Fechar.TextScaled = true
Fechar.Font = Enum.Font.GothamBold
Fechar.Parent = Main
Fechar.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

local FCorner = Instance.new("UICorner")
FCorner.CornerRadius = UDim.new(1, 0)
FCorner.Parent = Fechar

print("🚀 NZSCRIPT CARREGADO!")
print("🎮 INTERFACE VISUAL DISPONÍVEL!")
print("⭐ FAZ TUDO TUDO TUDO TUDO TUDO!")
