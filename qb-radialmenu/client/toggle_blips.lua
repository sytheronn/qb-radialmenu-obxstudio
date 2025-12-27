local QBCore = exports['qb-core']:GetCoreObject()

-- Boolean flags for blip states
local showTattoo = false
local showClothes = false
local showBarber = false
local showAtm = false
local showBenzin = false
local showMarket = false
local showGunShop = false
local showGaraj = false
local showBot = false
local showHeli = false
local showKiralik = false
local showKiralikMalikane = false
local showTicaret = false
local showAktifMekanlar = false

-- Blip tables
blipsTattoo = {}
blipsClothes = {}
blipsBarber = {}
blipsAtm = {}
blipsBenzin = {}
blipsMarket = {}
blipsSilahci = {}
blipsGaraj = {}
blipsBot = {}
blipsHeli = {}
blipsKiralik = {}
blipsKiralikMalikane = {}
blipsTicaret = {}
blipsAktifMekanlar = {}
CreateThread(function()
    -- Create blips for all categories
    for k, v in pairs(tattoShops) do
        blipOlustur(v, 75, 76, 4, 0.6, 'Dövme Salonu', 'Dövmeciler')
    end
    for k, v in pairs(clotheShops) do
        blipOlustur(v, 73, 55, 4, 0.6, 'Kıyafet Dükkanı', 'Kıyafet')
    end
    for k, v in pairs(barberShops) do
        blipOlustur(v, 71, 46, 4, 0.6, 'Berber Dükkanı', 'Berber')
    end
    for k, v in pairs(Market) do
        blipOlustur(v, 59, 2, 4, 0.6, 'Market', 'Market')
    end
    for k, v in pairs(BenzinS) do
        blipOlustur(v, 361, 9, 4, 0.5, 'Benzin İstasyonu', 'Benzin')
    end
    for k, v in pairs(GarajS) do
        blipOlustur(v, 357, 3, 4, 0.5, 'Garaj', 'Garaj')
    end
    for k, v in pairs(CekilmisGaraj) do
        blipOlustur(v, 357, 2, 4, 0.5, 'Çekilmiş Garaj', 'CekilmisGaraj')
    end
    for k, v in pairs(BotGaraj) do
        blipOlustur(v, 357, 3, 4, 0.5, 'Bot Garajı', 'BotGaraj')
    end
    for k, v in pairs(BotCekilmis) do
        blipOlustur(v, 357, 1, 4, 0.5, 'Bot Çekilmiş', 'BotCekilmis')
    end
    for k, v in pairs(HeliGaraj) do
        blipOlustur(v, 43, 3, 4, 0.5, 'Heli Garajı', 'HeliGaraj')
    end
    for k, v in pairs(HeliCekilmis) do
        blipOlustur(v, 43, 1, 4, 0.5, 'Heli Çekilmiş', 'HeliCekilmis')
    end
    for k, v in pairs(KiralikMekanlar) do
        blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'Kiralik')
    end
    for k, v in pairs(KiralikMalikaneler) do
        blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'KiralikMalikane')
    end
    for k, v in pairs(Ticaret) do
        blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'Ticaret')
    end
    for k, v in pairs(AktifMekanlar) do
        blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'AktifMekanlar')
    end
    -- Set all boolean flags to true
    showTattoo = true
    showClothes = true
    showBarber = true
    showBenzin = true
    showMarket = true
    showGaraj = true
    showBot = true
    showHeli = true
    showKiralik = true
    showKiralikMalikane = true
    showTicaret = true
    showAktifMekanlar = true
end)

-- Blip creation function
function blipOlustur(coords, sprite, colour, disp, scale, text, which)
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, colour)
    SetBlipDisplay(blip, disp)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, scale)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
    if which == 'Dövmeciler' then
        table.insert(blipsTattoo, blip)
    elseif which == 'Kıyafet' then
        table.insert(blipsClothes, blip)
    elseif which == 'Berber' then
        table.insert(blipsBarber, blip)
    elseif which == 'Benzin' then
        table.insert(blipsBenzin, blip)
    elseif which == 'Market' then
        table.insert(blipsMarket, blip)
    elseif which == 'Garaj' or which == 'CekilmisGaraj' then
        table.insert(blipsGaraj, blip)
    elseif which == 'BotGaraj' or which == 'BotCekilmis' then
        table.insert(blipsBot, blip)
    elseif which == 'HeliGaraj' or which == 'HeliCekilmis' then
        table.insert(blipsHeli, blip)
    elseif which == 'Kiralik' then
        table.insert(blipsKiralik, blip)
    elseif which == 'KiralikMalikane' then
        table.insert(blipsKiralikMalikane, blip)
    elseif which == 'Ticaret' then
        table.insert(blipsTicaret, blip)
            elseif which == 'AktifMekanlar' then
        table.insert(blipsAktifMekanlar, blip)
    end
    return blip
end

-- Toggle all blips event
RegisterNetEvent('blips:toggleAll')
AddEventHandler('blips:toggleAll', function()
    local anyActive = showTattoo or showClothes or showBarber or showBenzin or showMarket or 
                      showGaraj or showBot or showHeli or showKiralik or showKiralikMalikane or showTicaret or showAktifMekanlar
    
    if anyActive then
        -- Turn off all blips
        for _, blip in pairs(blipsTattoo) do RemoveBlip(blip) end
        for _, blip in pairs(blipsClothes) do RemoveBlip(blip) end
        for _, blip in pairs(blipsBarber) do RemoveBlip(blip) end
        for _, blip in pairs(blipsBenzin) do RemoveBlip(blip) end
        for _, blip in pairs(blipsMarket) do RemoveBlip(blip) end
        for _, blip in pairs(blipsGaraj) do RemoveBlip(blip) end
        for _, blip in pairs(blipsBot) do RemoveBlip(blip) end
        for _, blip in pairs(blipsHeli) do RemoveBlip(blip) end
        for _, blip in pairs(blipsKiralik) do RemoveBlip(blip) end
        for _, blip in pairs(blipsKiralikMalikane) do RemoveBlip(blip) end
        for _, blip in pairs(blipsTicaret) do RemoveBlip(blip) end
                for _, blip in pairs(blipsAktifMekanlar) do RemoveBlip(blip) end

        -- Clear all blip tables
        blipsTattoo = {}
        blipsClothes = {}
        blipsBarber = {}
        blipsBenzin = {}
        blipsMarket = {}
        blipsGaraj = {}
        blipsBot = {}
        blipsHeli = {}
        blipsKiralik = {}
        blipsKiralikMalikane = {}
        blipsTicaret = {}
        blipsAktifMekanlar = {}
        -- Reset all boolean flags
        showTattoo = false
        showClothes = false
        showBarber = false
        showBenzin = false
        showMarket = false
        showGaraj = false
        showBot = false
        showHeli = false
        showKiralik = false
        showKiralikMalikane = false
        showTicaret = false
         showAktifMekanlar = false
        QBCore.Functions.Notify('Tüm blipler kapatıldı!', "error")
    else
        -- Turn on all blips
        for k, v in pairs(tattoShops) do
            blipOlustur(v, 75, 76, 4, 0.6, 'Dövme Salonu', 'Dövmeciler')
        end
        for k, v in pairs(clotheShops) do
            blipOlustur(v, 73, 55, 4, 0.6, 'Kıyafet Dükkanı', 'Kıyafet')
        end
        for k, v in pairs(barberShops) do
            blipOlustur(v, 71, 46, 4, 0.6, 'Berber Dükkanı', 'Berber')
        end
        for k, v in pairs(Market) do
            blipOlustur(v, 59, 2, 4, 0.6, 'Market', 'Market')
        end
        for k, v in pairs(BenzinS) do
            blipOlustur(v, 361, 9, 4, 0.5, 'Benzin İstasyonu', 'Benzin')
        end
        for k, v in pairs(GarajS) do
            blipOlustur(v, 357, 3, 4, 0.5, 'Garaj', 'Garaj')
        end
        for k, v in pairs(CekilmisGaraj) do
            blipOlustur(v, 357, 2, 4, 0.5, 'Çekilmiş Garaj', 'CekilmisGaraj')
        end
        for k, v in pairs(BotGaraj) do
            blipOlustur(v, 357, 3, 4, 0.5, 'Bot Garajı', 'BotGaraj')
        end
        for k, v in pairs(BotCekilmis) do
            blipOlustur(v, 357, 1, 4, 0.5, 'Bot Çekilmiş', 'BotCekilmis')
        end
        for k, v in pairs(HeliGaraj) do
            blipOlustur(v, 43, 3, 4, 0.5, 'Heli Garajı', 'HeliGaraj')
        end
        for k, v in pairs(HeliCekilmis) do
            blipOlustur(v, 43, 1, 4, 0.5, 'Heli Çekilmiş', 'HeliCekilmis')
        end
        for k, v in pairs(KiralikMekanlar) do
            blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'Kiralik')
        end
        for k, v in pairs(KiralikMalikaneler) do
            blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'KiralikMalikane')
        end
        for k, v in pairs(Ticaret) do
            blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'Ticaret')
        end
                for k, v in pairs(AktifMekanlar) do
            blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'AktifMekanlar')
        end
        -- Set all boolean flags to true
        showTattoo = true
        showClothes = true
        showBarber = true
        showBenzin = true
        showMarket = true
        showGaraj = true
        showBot = true
        showHeli = true
        showKiralik = true
        showKiralikMalikane = true
        showTicaret = true
        showAktifMekanlar = true
        QBCore.Functions.Notify('Tüm blipler açıldı!', "success")
    end
end)

-- Individual toggle events
RegisterNetEvent('blips:toggleNone')
AddEventHandler('blips:toggleNone', function()
    QBCore.Functions.Notify('Ne yaptığını sanıyorsun blip geleceğini mi?', "info")
end)

RegisterNetEvent('blips:toggleTattoo')
AddEventHandler('blips:toggleTattoo', function()
    showTattoo = not showTattoo
    if showTattoo then
        for k, v in pairs(tattoShops) do
            blipOlustur(v, 75, 76, 4, 0.6, 'Dövme Salonu', 'Dövmeciler')
        end
        QBCore.Functions.Notify('Dövmeci blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsTattoo) do
            RemoveBlip(v)
        end
        blipsTattoo = {}
        QBCore.Functions.Notify('Dövmeci blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleClothes')
AddEventHandler('blips:toggleClothes', function()
    showClothes = not showClothes
    if showClothes then
        for k, v in pairs(clotheShops) do
            blipOlustur(v, 73, 55, 4, 0.6, 'Kıyafet Dükkanı', 'Kıyafet')
        end
        QBCore.Functions.Notify('Kıyafet Dükkanı blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsClothes) do
            RemoveBlip(v)
        end
        blipsClothes = {}
        QBCore.Functions.Notify('Kıyafet Dükkanı blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleBarber')
AddEventHandler('blips:toggleBarber', function()
    showBarber = not showBarber
    if showBarber then
        for k, v in pairs(barberShops) do
            blipOlustur(v, 71, 46, 4, 0.6, 'Berber Dükkanı', 'Berber')
        end
        QBCore.Functions.Notify('Berber Dükkanı blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsBarber) do
            RemoveBlip(v)
        end
        blipsBarber = {}
        QBCore.Functions.Notify('Berber Dükkanı blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleMarket')
AddEventHandler('blips:toggleMarket', function()
    showMarket = not showMarket
    if showMarket then
        for k, v in pairs(Market) do
            blipOlustur(v, 59, 2, 4, 0.6, 'Market', 'Market')
        end
        QBCore.Functions.Notify('Market blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsMarket) do
            RemoveBlip(v)
        end
        blipsMarket = {}
        QBCore.Functions.Notify('Market blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleBenzin')
AddEventHandler('blips:toggleBenzin', function()
    showBenzin = not showBenzin
    if showBenzin then
        for k, v in pairs(BenzinS) do
            blipOlustur(v, 361, 9, 4, 0.5, 'Benzin İstasyonu', 'Benzin')
        end
        QBCore.Functions.Notify('Benzin İstasyonu blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsBenzin) do
            RemoveBlip(v)
        end
        blipsBenzin = {}
        QBCore.Functions.Notify('Benzin İstasyonu blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleGaraj')
AddEventHandler('blips:toggleGaraj', function()
    showGaraj = not showGaraj
    if showGaraj then
        for k, v in pairs(GarajS) do
            blipOlustur(v, 357, 3, 4, 0.5, 'Garaj', 'Garaj')
        end
        for k, v in pairs(CekilmisGaraj) do
            blipOlustur(v, 357, 2, 4, 0.5, 'Çekilmiş Garaj', 'CekilmisGaraj')
        end
        QBCore.Functions.Notify('Garaj ve Çekilmiş Garaj blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsGaraj) do
            RemoveBlip(v)
        end
        blipsGaraj = {}
        QBCore.Functions.Notify('Garaj ve Çekilmiş Garaj blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleBot')
AddEventHandler('blips:toggleBot', function()
    showBot = not showBot
    if showBot then
        for k, v in pairs(BotGaraj) do
            blipOlustur(v, 357, 3, 4, 0.5, 'Bot Garajı', 'BotGaraj')
        end
        for k, v in pairs(BotCekilmis) do
            blipOlustur(v, 357, 1, 4, 0.5, 'Bot Çekilmiş', 'BotCekilmis')
        end
        QBCore.Functions.Notify('Bot Garajı ve Bot Çekilmiş blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsBot) do
            RemoveBlip(v)
        end
        blipsBot = {}
        QBCore.Functions.Notify('Bot Garajı ve Bot Çekilmiş blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleHeli')
AddEventHandler('blips:toggleHeli', function()
    showHeli = not showHeli
    if showHeli then
        for k, v in pairs(HeliGaraj) do
            blipOlustur(v, 43, 3, 4, 0.5, 'Heli Garajı', 'HeliGaraj')
        end
        for k, v in pairs(HeliCekilmis) do
            blipOlustur(v, 43, 1, 4, 0.5, 'Heli Çekilmiş', 'HeliCekilmis')
        end
        QBCore.Functions.Notify('Heli Garajı ve Heli Çekilmiş blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsHeli) do
            RemoveBlip(v)
        end
        blipsHeli = {}
        QBCore.Functions.Notify('Heli Garajı ve Heli Çekilmiş blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleKiralik')
AddEventHandler('blips:toggleKiralik', function()
    showKiralik = not showKiralik
    if showKiralik then
        for k, v in pairs(KiralikMekanlar) do
            blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'Kiralik')
        end
        QBCore.Functions.Notify('Kiralık Mekanlar blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsKiralik) do
            RemoveBlip(v)
        end
        blipsKiralik = {}
        QBCore.Functions.Notify('Kiralık Mekanlar blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleKiralikMalikane')
AddEventHandler('blips:toggleKiralikMalikane', function()
    showKiralikMalikane = not showKiralikMalikane
    if showKiralikMalikane then
        for k, v in pairs(KiralikMalikaneler) do
            blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'KiralikMalikane')
        end
        QBCore.Functions.Notify('Kiralık Malikane blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsKiralikMalikane) do
            RemoveBlip(v)
        end
        blipsKiralikMalikane = {}
        QBCore.Functions.Notify('Kiralık Malikane blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleTicaret')
AddEventHandler('blips:toggleTicaret', function()
    showTicaret = not showTicaret
    if showTicaret then
        for k, v in pairs(Ticaret) do
            blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'Ticaret')
        end
        QBCore.Functions.Notify('Ticaret blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsTicaret) do
            RemoveBlip(v)
        end
        blipsTicaret = {}
        QBCore.Functions.Notify('Ticaret blipleri kapatıldı!', "error")
    end
end)
RegisterNetEvent('blips:AktifMekanlar')
AddEventHandler('blips:AktifMekanlar', function()
    showAktifMekanlar = not showAktifMekanlar
    if showAktifMekanlar then
        for k, v in pairs(AktifMekanlar) do
            blipOlustur(v.vector, v.sprite, v.color, 4, v.scale, v.text, 'AktifMekanlar')
        end
        QBCore.Functions.Notify('Aktif Mekanlar açıldı!', "success")
    else
        for k, v in pairs(blipsAktifMekanlar) do
            RemoveBlip(v)
        end
        blipsAktifMekanlar = {}
        QBCore.Functions.Notify('Aktif Mekanlar kapatıldı!', "error")
    end
end)

-- Location data
GarajS = {
    vector3(1142.38, 2661.28, 41.48),
    vector3(68.35, 13.85, 69.05),
    vector3(213.15, -809.91, 31.01),
    vector3(302.3, -189.94, 61.57),
    vector3(-795.35, -2023.88, 9.17),
    vector3(-1183.59, -1509.04, 4.65),
    vector3(-468.87, -819.67, 30.52),
    vector3(83.51, 6420.3, 31.64),
    vector3(362.6, 299.35, 103.68),
    vector3(-1158.52, -740.67, 19.89),
    vector3(275.96, -344.05, 45.17)
}

BotGaraj = {
    vector3(-717.74, -1326.53, 1.6)
}

BotCekilmis = {
    vector3(-769.82, -1426.54, 1.6)
}

CekilmisGaraj = {
    vector3(407.94, -1624.5, 29.29)
}

HeliGaraj = {
    vector3(-1251.69, -3399.94, 13.94)
}

HeliCekilmis = {
    vector3(-1030.5, -3016.5, 49.09)
}

BenzinS = {
    vector3(49.4187, 2778.793, 58.043),
    vector3(263.894, 2606.463, 44.983),
    vector3(1039.958, 2671.134, 39.550),
    vector3(1207.260, 2660.175, 37.899),
    vector3(2539.685, 2594.192, 37.944),
    vector3(2679.858, 3263.946, 55.240),
    vector3(2005.055, 3773.887, 32.403),
    vector3(1687.156, 4929.392, 42.078),
    vector3(1701.314, 6416.028, 32.763),
    vector3(179.857, 6602.839, 31.868),
    vector3(-94.4619, 6419.594, 31.489),
    vector3(-2554.996, 2334.40, 33.078),
    vector3(-1800.375, 803.661, 138.651),
    vector3(-1437.622, -276.747, 46.207),
    vector3(-2096.243, -320.286, 13.168),
    vector3(-724.619, -935.1631, 19.213),
    vector3(-526.019, -1211.003, 18.184),
    vector3(-70.2148, -1761.792, 29.534),
    vector3(265.648, -1261.309, 29.292),
    vector3(819.653, -1028.846, 26.403),
    vector3(1208.951, -1402.567, 35.224),
    vector3(1181.381, -330.847, 69.316),
    vector3(620.843, 269.100, 103.089),
    vector3(2581.321, 362.039, 108.468),
    vector3(176.631, -1562.025, 29.263),
    vector3(-319.292, -1471.715, 30.549),
    vector3(1784.324, 3330.55, 41.253)
}

tattoShops = {
    vector3(1322.6, -1651.9, 52.3),
    vector3(-1153.6, -1425.6, 4.9),
    vector3(322.1, 180.4, 103.5),
    vector3(-3170.0, 1075.0, 20.8),
    vector3(1864.6, 3747.7, 33.0),
    vector3(-293.7, 6200.0, 31.4)
}

clotheShops = {
    vector3(72.254, -1399.102, 28.376),
    vector3(-703.776, -152.258, 36.415),
    vector3(-167.863, -298.969, 38.733),
    vector3(428.694, -800.106, 28.491),
    vector3(-829.413, -1073.710, 10.328),
    vector3(-1447.797, -242.461, 48.820),
    vector3(11.632, 6514.224, 30.877),
    vector3(123.646, -219.440, 53.557),
    vector3(1696.291, 4829.312, 41.063),
    vector3(618.093, 2759.629, 41.088),
    vector3(1190.550, 2713.441, 37.222),
    vector3(-1193.429, -772.262, 16.324),
    vector3(-3172.496, 1048.133, 19.863),
    vector3(-1108.441, 2708.923, 18.107)
}

barberShops = {
    vector3(-814.308, -183.823, 36.568),
    vector3(136.826, -1708.373, 28.291),
    vector3(-1282.604, -1116.757, 5.990),
    vector3(1931.513, 3729.671, 31.844),
    vector3(1212.840, -472.921, 65.208),
    vector3(-32.885, -152.319, 56.076),
    vector3(-278.077, 6228.463, 30.695)
}

Market = {
    vector3(25.73, -1347.27, 29.5),
    vector3(-48.37, -1757.93, 29.42),
    vector3(-1222.26, -906.86, 12.33),
    vector3(-1487.62, -378.60, 40.16),
    vector3(-707.31, -914.66, 19.22),
    vector3(1135.7, -982.79, 46.42),
    vector3(373.55, 325.52, 103.57),
    vector3(1163.67, -323.92, 69.21),
    vector3(2557.44, 382.03, 108.62),
    vector3(-3039.16, 585.71, 7.91),
    vector3(-3242.11, 1001.20, 12.83),
    vector3(-2967.78, 391.49, 15.04),
    vector3(-1820.38, 792.69, 138.11),
    vector3(547.75, 2671.53, 42.16),
    vector3(1165.36, 2709.45, 38.16),
    vector3(2678.82, 3280.36, 55.24),
    vector3(1961.17, 3740.5, 32.34),
    vector3(1697.92, 4924.46, 42.06),
    vector3(1728.78, 6414.41, 35.04),
    vector3(812.88, -782.04, 26.17),
    vector3(161.15, 6641.62, 31.7)
}

KiralikMekanlar = {
    { vector = vector3(-211.6, -1324.73, 30.23), sprite = 446, color = 47, scale = 0.5, text = "Kiralık Mekanik" },
    { vector = vector3(-337.25, -137.2, 38.35), sprite = 446, color = 47, scale = 0.5, text = "Kiralık Mekanik" },
        { vector = vector3(135.79, -3030.71, 7.04), sprite = 446, color = 47, scale = 0.5, text = "Kiralık Tuner Mekanik" },
    { vector = vector3(22.56, -1109.89, 29.80), sprite = 110, color = 1, scale = 0.5, text = "Kiralık Silah Dükkanı" },
    { vector = vector3(252.63, -50.00, 69.94), sprite = 110, color = 1, scale = 0.5, text = "Kiralık Silah Dükkanı" },
    { vector = vector3(-662.180, -934.961, 21.829), sprite = 110, color = 1, scale = 0.5, text = "Kiralık Silah Dükkanı" },
    { vector = vector3(842.44, -1033.42, 28.19), sprite = 110, color = 1, scale = 0.5, text = "Kiralık Silah Dükkanı" },
    { vector = vector3(810.25, -2157.60, 29.62), sprite = 110, color = 1, scale = 0.5, text = "Kiralık Silah Dükkanı" },
    { vector = vector3(-1423.36, -450.71, 35.91), sprite = 446, color = 47, scale = 0.5, text = "Kiralık Mekanik" },
    { vector = vector3(-1614.17, -835.07, 10.16), sprite = 446, color = 47, scale = 0.5, text = "Kiralık Mekanik" },
    { vector = vector3(886.92, -2113.84, 30.46), sprite = 446, color = 47, scale = 0.5, text = "Kiralık Mekanik" },
    { vector = vector3(825.87, -975.84, 26.5), sprite = 446, color = 47, scale = 0.5, text = "Kiralık Mekanik" },
    { vector = vector3(732.09, -1087.12, 22.17), sprite = 446, color = 47, scale = 0.5, text = "Kiralık Mekanik" },
    { vector = vector3(-722.46, 261.66, 84.1), sprite = 375, color = 0, scale = 0.5, text = "Kiralık Emlak" },
    { vector = vector3(-1579.68, -564.92, 108.52), sprite = 375, color = 0, scale = 0.5, text = "Kiralık Emlak" },
    { vector = vector3(-78.56, -829.42, 243.38), sprite = 375, color = 0, scale = 0.5, text = "Kiralık Emlak" }
}

KiralikMalikaneler = {
    { vector = vector3(-1802.11, 433.46, 128.51), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(-1140.11, 373.44, 71.3), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(-520.56, 516.75, 112.44), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(-701.55, 639.57, 155.18), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(-649.21, 947.87, 243.97), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Lux Malikane" },
    { vector = vector3(-548.09, 809.35, 197.56), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(-2985.47, 2187.11, 41.53), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(186.190155, 1720.4967, 226.595062), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(-121.21, 982.24, 235.79), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(-1507.73, 859.2, 181.59), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(-73.37, 830.89, 235.72), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(-1521.03, 122.85, 60.8), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" },
    { vector = vector3(-817.58, 261.83, 86.21), sprite = 439, color = 5, scale = 0.5, text = "Kiralık Malikane" }
}

Ticaret = {
    { vector = vector3(-2507.76, 3614.82, 13.8), sprite = 52, color = 12, scale = 0.6, text = "Alıcı Grab" },
    { vector = vector3(386.7, -326.05, 46.86), sprite = 52, color = 12, scale = 0.4, text = "İşletme Manavı" },
     { vector = vector3(175.69, -1461.09, 29.24), sprite = 280, color = 12, scale = 0.5, text = "Takascı Nico" },
     { vector = vector3(2258.15, 5165.92, 59.11), sprite = 280, color = 5, scale = 0.7, text = "Satıcı" }
}

AktifMekanlar = {
    { vector = vector3(-1399.84, -601.81, 30.32), sprite = 121, color = 27, scale = 0.5, text = "Bahama Mamas" },
    { vector = vector3(246.76, -3161.62, -0.19), sprite = 279, color = 61, scale = 0.5, text = "Club77" },
        { vector = vector3(-581.06, -1066.22, 22.34), sprite = 621, color = 48, scale = 0.5, text = "uWu Cafe" },
            { vector = vector3(-1201.56, -1131.46, 7.84), sprite = 621, color = 16, scale = 0.5, text = "CoolBeans" },
             { vector = vector3(123.16, -1037.17, 29.28), sprite = 106, color = 11, scale = 0.5, text = "BeanMachine" },
             { vector = vector3(2517.26, 4101.41, 38.58), sprite = 310, color = 0, scale = 0.6, text = "Rock'n'roll Bar" }
}