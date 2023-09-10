local QBCore = exports['qb-core']:GetCoreObject()

isLoggedIn = true
PlayerJob = {}

local onDuty = false

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "uwucafe" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)


RegisterNetEvent("uzy-uwujob:cake")
AddEventHandler("uzy-uwujob:cake", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('uzy-uwujob:server:get:ingredientcake', function(HasItems)  
    		if HasItems then
				Working = true
				TriggerEvent('inventory:client:busy:status', true)
				QBCore.Functions.Progressbar("pickup_sla", "Cake Hazırlanıyor..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = false,
					disableMouse = false,
					disableCombat = false,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					Working = false
					TriggerEvent('inventory:client:busy:status', false)
					TriggerServerEvent('QBCore:Server:RemoveItem', "sut", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "hamur", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "cake", 1)
                    QBCore.Functions.Notify("Cake Hazırlandı", "success")
				end, function()
					TriggerEvent('inventory:client:busy:status', false)
					QBCore.Functions.Notify("İptal Ediliyor..", "error")
					Working = false
				end)
			else
   				QBCore.Functions.Notify("Bunu yapmak için gerekli malzemelere sahip değilsin", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
	end
end)

RegisterNetEvent("uzy-uwujob:cakepop")
AddEventHandler("uzy-uwujob:cakepop", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('uzy-uwujob:server:get:ingredientcakepop', function(HasItems)  
    		if HasItems then
				Working = true
				TriggerEvent('inventory:client:busy:status', true)
				QBCore.Functions.Progressbar("pickup_sla", "Cake Pop Hazırlanıyor..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = false,
					disableMouse = false,
					disableCombat = false,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					Working = false
					TriggerEvent('inventory:client:busy:status', false)
					TriggerServerEvent('QBCore:Server:RemoveItem', "sut", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "hamur", 1)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "kakao", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "cakepop", 1)
                    QBCore.Functions.Notify("Cake Pop Hazırlandı", "success")
				end, function()
					TriggerEvent('inventory:client:busy:status', false)
					QBCore.Functions.Notify("İptal Ediliyor..", "error")
					Working = false
				end)
			else
   				QBCore.Functions.Notify("Bunu yapmak için gerekli malzemelere sahip değilsin", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
	end
end)

RegisterNetEvent("uzy-uwujob:catcookie")
AddEventHandler("uzy-uwujob:catcookie", function()
    if onDuty then
        QBCore.Functions.TriggerCallback('uzy-uwujob:server:get:ingredientcatcookie', function(HasItems)  
    		if HasItems then
				Working = true
				TriggerEvent('inventory:client:busy:status', true)
				QBCore.Functions.Progressbar("pickup_sla", "catcookie Hazırlanıyor..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = false,
					disableMouse = false,
					disableCombat = false,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					Working = false
					TriggerEvent('inventory:client:busy:status', false)
					TriggerServerEvent('QBCore:Server:RemoveItem', "sut", 2)
					TriggerServerEvent('QBCore:Server:RemoveItem', "hamur", 2)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "kakao", 2)
					TriggerServerEvent('QBCore:Server:AddItem', "catcookie", 1)
                    QBCore.Functions.Notify("catcookie Hazırlandı", "success")
				end, function()
					TriggerEvent('inventory:client:busy:status', false)
					QBCore.Functions.Notify("İptal Ediliyor..", "error")
					Working = false
				end)
			else
   				QBCore.Functions.Notify("Bunu yapmak için gerekli malzemelere sahip değilsin", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
	end
end)

RegisterNetEvent("uzy-uwujob:catdonut")
AddEventHandler("uzy-uwujob:catdonut", function()
    if onDuty then
        QBCore.Functions.TriggerCallback('uzy-uwujob:server:get:ingredientcatdonut', function(HasItems)  
    		if HasItems then
				Working = true
				TriggerEvent('inventory:client:busy:status', true)
				QBCore.Functions.Progressbar("pickup_sla", "Cat Donut Hazırlanıyor..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = false,
					disableMouse = false,
					disableCombat = false,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					Working = false
					TriggerEvent('inventory:client:busy:status', false)
					TriggerServerEvent('QBCore:Server:RemoveItem', "sut", 2)
					TriggerServerEvent('QBCore:Server:RemoveItem', "hamur", 2)
					TriggerServerEvent('QBCore:Server:AddItem', "catdonut", 1)
                    QBCore.Functions.Notify("Cat Donut Hazırlandı", "success")
				end, function()
					TriggerEvent('inventory:client:busy:status', false)
					QBCore.Functions.Notify("İptal Ediliyor..", "error")
					Working = false
				end)
			else
   				QBCore.Functions.Notify("Bunu yapmak için gerekli malzemelere sahip değilsin", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
	end
end)

RegisterNetEvent("uzy-uwujob:catpizza")
AddEventHandler("uzy-uwujob:catpizza", function()
    if onDuty then
        QBCore.Functions.TriggerCallback('uzy-uwujob:server:get:ingredientcatpizza', function(HasItems)  
    		if HasItems then
				Working = true
				TriggerEvent('inventory:client:busy:status', true)
				QBCore.Functions.Progressbar("pickup_sla", "Cat Pizza Hazırlanıyor..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = false,
					disableMouse = false,
					disableCombat = false,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					Working = false
					TriggerEvent('inventory:client:busy:status', false)
					TriggerServerEvent('QBCore:Server:RemoveItem', "domates2", 2)
					TriggerServerEvent('QBCore:Server:RemoveItem', "hamur", 2)
					TriggerServerEvent('QBCore:Server:AddItem', "catpizza", 1)
                    QBCore.Functions.Notify("Cat Pizza Hazırlandı", "success")
				end, function()
					TriggerEvent('inventory:client:busy:status', false)
					QBCore.Functions.Notify("İptal Ediliyor..", "error")
					Working = false
				end)
			else
   				QBCore.Functions.Notify("Bunu yapmak için gerekli malzemelere sahip değilsin", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
	end
end)

RegisterNetEvent("uzy-uwujob:catrice")
AddEventHandler("uzy-uwujob:catrice", function()
    if onDuty then
        QBCore.Functions.TriggerCallback('uzy-uwujob:server:get:ingredientcatrice', function(HasItems)  
    		if HasItems then
				Working = true
				TriggerEvent('inventory:client:busy:status', true)
				QBCore.Functions.Progressbar("pickup_sla", "Cat Rice Hazırlanıyor..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = false,
					disableMouse = false,
					disableCombat = false,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					Working = false
					TriggerEvent('inventory:client:busy:status', false)
					TriggerServerEvent('QBCore:Server:RemoveItem', "su", 2)
					TriggerServerEvent('QBCore:Server:RemoveItem', "marul2", 2)
					TriggerServerEvent('QBCore:Server:AddItem', "catrice", 1)
                    QBCore.Functions.Notify("Cat Rice Hazırlandı", "success")
				end, function()
					TriggerEvent('inventory:client:busy:status', false)
					QBCore.Functions.Notify("İptal Ediliyor..", "error")
					Working = false
				end)
			else
   				QBCore.Functions.Notify("Bunu yapmak için gerekli malzemelere sahip değilsin", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
	end
end)

RegisterNetEvent("uzy-uwujob:miso")
AddEventHandler("uzy-uwujob:miso", function()
    if onDuty then
        QBCore.Functions.TriggerCallback('uzy-uwujob:server:get:ingredientmiso', function(HasItems)  
    		if HasItems then
				Working = true
				TriggerEvent('inventory:client:busy:status', true)
				QBCore.Functions.Progressbar("pickup_sla", "Miso Hazırlanıyor..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = false,
					disableMouse = false,
					disableCombat = false,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					Working = false
					TriggerEvent('inventory:client:busy:status', false)
					TriggerServerEvent('QBCore:Server:RemoveItem', "su", 2)
					TriggerServerEvent('QBCore:Server:RemoveItem', "sogan2", 2)
					TriggerServerEvent('QBCore:Server:AddItem', "miso", 1)
                    QBCore.Functions.Notify("Miso Hazırlandı", "success")
				end, function()
					TriggerEvent('inventory:client:busy:status', false)
					QBCore.Functions.Notify("İptal Ediliyor..", "error")
					Working = false
				end)
			else
   				QBCore.Functions.Notify("Bunu yapmak için gerekli malzemelere sahip değilsin", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
	end
end)

RegisterNetEvent("uzy-uwujob:mochameow")
AddEventHandler("uzy-uwujob:mochameow", function()
    if onDuty then
        QBCore.Functions.TriggerCallback('uzy-uwujob:server:get:ingredientmochameow', function(HasItems)  
    		if HasItems then
				Working = true
				TriggerEvent('inventory:client:busy:status', true)
				QBCore.Functions.Progressbar("pickup_sla", "Mochameow Hazırlanıyor..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = false,
					disableMouse = false,
					disableCombat = false,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					Working = false
					TriggerEvent('inventory:client:busy:status', false)
					TriggerServerEvent('QBCore:Server:RemoveItem', "sut", 3)
					TriggerServerEvent('QBCore:Server:RemoveItem', "kakao", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "mochameow", 1)
                    QBCore.Functions.Notify("Mochameow Hazırlandı", "success")
				end, function()
					TriggerEvent('inventory:client:busy:status', false)
					QBCore.Functions.Notify("İptal Ediliyor..", "error")
					Working = false
				end)
			else
   				QBCore.Functions.Notify("Bunu yapmak için gerekli malzemelere sahip değilsin", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
	end
end)

RegisterNetEvent("uzy-uwujob:mochib")
AddEventHandler("uzy-uwujob:mochib", function()
    if onDuty then
        QBCore.Functions.TriggerCallback('uzy-uwujob:server:get:ingredientmochib', function(HasItems)  
    		if HasItems then
				Working = true
				TriggerEvent('inventory:client:busy:status', true)
				QBCore.Functions.Progressbar("pickup_sla", "Mochi Blue Hazırlanıyor..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = false,
					disableMouse = false,
					disableCombat = false,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					Working = false
					TriggerEvent('inventory:client:busy:status', false)
					TriggerServerEvent('QBCore:Server:RemoveItem', "sut", 2)
					TriggerServerEvent('QBCore:Server:RemoveItem', "kakao", 1)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "hamur", 2)
					TriggerServerEvent('QBCore:Server:AddItem', "mochib", 1)
                    QBCore.Functions.Notify("Mochi Blue Hazırlandı", "success")
				end, function()
					TriggerEvent('inventory:client:busy:status', false)
					QBCore.Functions.Notify("İptal Ediliyor..", "error")
					Working = false
				end)
			else
   				QBCore.Functions.Notify("Bunu yapmak için gerekli malzemelere sahip değilsin", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
	end
end)

RegisterNetEvent("uzy-uwujob:SoftDrink")
AddEventHandler("uzy-uwujob:SoftDrink", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeSoftDrink()
        else
            QBCore.Functions.Notify("Yeterli Suyun Yok..", "error")
        end
      end, 'water')
    else
        QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
    end
end)

RegisterNetEvent("uzy-uwujob:mShake")
AddEventHandler("uzy-uwujob:mShake", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeMShake()
        else
            QBCore.Functions.Notify("Yeterli Kolan Yok..", "error")
        end
      end, 'cola')
    else
        QBCore.Functions.Notify("Mesai içinde olman gerekli", "error")
    end
end)



RegisterNetEvent("uzy-uwujob:DutyB")
AddEventHandler("uzy-uwujob:DutyB", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("uzy-uwujob:Tray1")
AddEventHandler("uzy-uwujob:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutray1", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("uzy-uwujob:Tray4")
AddEventHandler("uzy-uwujob:Tray4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutray4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutray4", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("uzy-uwujob:Tray3")
AddEventHandler("uzy-uwujob:Tray3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutray3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutray3", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("uzy-uwujob:Storage")
AddEventHandler("uzy-uwujob:Storage", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwustorage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwustorage", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("uzy-uwujob:Storage2")
AddEventHandler("uzy-uwujob:Storage2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwustorage2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwustorage2", {
        maxweight = 250000,
        slots = 40,
    })
end)


function MakeSoftDrink()

    TriggerServerEvent('QBCore:Server:RemoveItem', "water", 1)
    QBCore.Functions.Progressbar("pickup", "Bardağa Dolduruluyor..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "bubbletea", 1)
    QBCore.Functions.Notify("Soda Yaptın", "success")
    end  


function MakeMShake()

    TriggerServerEvent('QBCore:Server:RemoveItem', "cola", 1)
    QBCore.Functions.Progressbar("pickup", "Bardağa Dolduruluyor..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "milkshake", 1)
    QBCore.Functions.Notify("Milkshape Yaptın", "success")
    end  
   

-- bt target -

Citizen.CreateThread(function()
    

    exports['qb-target']:AddBoxZone("Duty", vector3(-1196.95, -902.69, 14.0), 1, 1.2, {
        name = "Duty",
        heading = 32,
        debugPoly = false,
        minZ=14.0,
        maxZ=18.0,
    }, {
        options = {
            {  
                event = "uzy-uwujob:DutyB",
                icon = "far fa-clipboard",
                label = "Mesai Gir/Çık",
                job = "uwucafe",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("uwu_tray_1", vector3(-1195.29, -892.31, 14.0), 1.05, 1.0, {
        name = "uwu_tray_1",
        heading = 35.0,
        debugPoly = false,
        minZ=13.8,
        maxZ=14.3,
    }, {
        options = {
            {
                event = "uzy-uwujob:Tray1",
                icon = "far fa-clipboard",
                label = "Tray 1",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("uwu_tray_2", vector3(-1193.87, -894.38, 14.0), 0.5, 0.7, {
        name="uwu_tray_2",
        heading=318,
        debugPoly=false,
        minZ=14.0,
        maxZ=14.4,
    }, {
        options = {
            {
                event = "uzy-uwujob:Tray4",
                icon = "far fa-clipboard",
                label = "Tray 2",
				-- job = "all",
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("uwu_tray_3", vector3(-1193.88, -906.98, 14.0), 1, 1, {
        name="uwu_tray_3",
        heading=350,
        debugPoly=false,
        minZ=13.2,
        maxZ=14.2,
    }, {
        options = {
            {
                event = "uzy-uwujob:Tray3",
                icon = "far fa-clipboard",
                label = "Tray 3",
            },
        },
        distance = 3.5
    })




        exports['qb-target']:AddBoxZone("uwushotdrinks", vector3(-1196.79, -893.5, 13.97), 2.2, 0.6, {
            name="uwushotdrinks",
            heading=125.97,
            debugPoly=false,
            minZ=13.8,
            maxZ=14.8,
            }, {
                options = {
                    {
                        event = "nh-context:DrinkMenu",
                        icon = "fas fa-filter",
                        label = "İçecek Otomatı",
                        job = "uwucafe",
                    },
                },
                distance = 1.5
            })

         exports['qb-target']:AddBoxZone("uwufridge", vector3(-1200.54, -901.58, 13.97), 1.6, 1, {
            name="uwufridge",
            heading=133.21,
            debugPoly=false,
            minZ=13.0,
            maxZ=15.6,
        }, {
                options = {
                    {
                        event = "nh-context:OrderMenu",
                        icon = "fas fa-laptop",
                        label = "Buzdolabı!",
                        job = "uwucafe",
                    },
                },
                distance = 1.5
            })
 

        exports['qb-target']:AddBoxZone("craftuwu", vector3(-1198.06, -899.11, 13.98), 1.8, 0.7, {
            name="craftuwu",
            heading=304,
            debugPoly=false,
            minZ=13.0,
            maxZ=14.4,
        }, {
                options = {
                    {
                        event = "nh-context:uwus",
                        icon = "fas fa-box",
                        label = "Kesme Tahtası",
                        job = "uwucafe",
                    },
                },
                distance = 1.5
            })



end)


-- NH - Context --

RegisterNetEvent('nh-context:uwus', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Menü |",
            txt = "",
        },
        {
            id = 1,
            header = "• Cake",
            txt = "Süt , Hamur",
            params = {
                event = "uzy-uwujob:cake"
            }
        },
        {
            id = 2,
            header = "• Cake Pop",
            txt = "Süt , Hamur , Kakao",
            params = {
                event = "uzy-uwujob:cakepop"
            }
        },
        {
            id = 3,
            header = "• Cat Cookie",
            txt = "2x Süt, 2x Hamur, 2x Kakao",
            params = {
                event = "uzy-uwujob:catcookie"
            }
        },
        {
            id = 4,
            header = "• Cat Donut",
            txt = "2x Süt, 2x Hamur",
            params = {
                event = "uzy-uwujob:catdonut"
            }
        },
        {
            id = 5,
            header = "• Cat Pizza",
            txt = "4x Hamur, 2x Söğüş Domates",
            params = {
                event = "uzy-uwujob:catpizza"
            }
        },
        {
            id = 6,
            header = "• Cat Rice",
            txt = "2x Su, 2x Söğüş Marul",
            params = {
                event = "uzy-uwujob:catrice"
            }
        },
        {
            id = 7,
            header = "• Miso",
            txt = "2x Su, 2x Söğüş Soğan",
            params = {
                event = "uzy-uwujob:miso"
            }
        },
        {
            id = 8,
            header = "• Mocha Meow",
            txt = "3x Süt , 1x Kakao",
            params = {
                event = "uzy-uwujob:mochameow"
            }
        },
        {
            id = 9,
            header = "• Mochi Blue",
            txt = "2x Süt, Kakao, 2x Hamur",
            params = {
                event = "uzy-uwujob:mochib"
            }
        },
        {
            id = 10,
            header = "Kapat (ESC)",
            txt = "",
        },
    })
end)


RegisterNetEvent('nh-context:OrderMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Buzdolabı |",
            txt = "",
        },
        {
            id = 1,
            header = "• Sipariş Geç",
            txt = "Yeni Eşyalar İçin!",
            params = {
                event = "uzy-uwujob:shop"
            }
        },
        {
            id = 2,
            header = "• Dolabı Aç",
            txt = "İçinde Neler Var Acaba",
            params = {
                event = "uzy-uwujob:Storage2"
            }
        },
        {
            id = 3,
            header = "Kapat (ESC)",
            txt = "",
        },
    })
end)

RegisterNetEvent('nh-context:DrinkMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| İçecek Menu |",
            txt = "",
        },
        {
            id = 1,
            header = "• Bubble Tea",
            txt = "Su",
            params = {
                event = "uzy-uwujob:SoftDrink"
            }
        },
        {
            id = 2,
            header = "• Milkshake",
            txt = "Kola",
            params = {
                event = "uzy-uwujob:mShake"
            }
        },
        {
            id = 3,
            header = "Kapat (ESC)",
            txt = "",
        },
    })
end)

RegisterNetEvent("uzy-uwujob:shop")
AddEventHandler("uzy-uwujob:shop", function()


    TriggerServerEvent("inventory:server:OpenInventory", "shop", "uwucafe", Config.Items)


end)



