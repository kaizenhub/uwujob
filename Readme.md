## Dependencies :

QB Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

qb-target - https://github.com/BerkieBb/qb-target

nh-context - https://github.com/nerohiro/nh-context

nh-keyboard - https://github.com/nerohiro/nh-keyboard



## Insert into #tgiann-playerhud --> server --> server.lua

-- uwu
```
QBCore.Functions.CreateUseableItem('milkshakec', function(source, item)
	TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "drink", 4000, 0.3)
end)

QBCore.Functions.CreateUseableItem('milkshakek', function(source, item)
	TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "drink", 4000, 0.3)
end)

QBCore.Functions.CreateUseableItem('bento', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('bubbletea', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "drink", 3000, 3)

end)QBCore.Functions.CreateUseableItem('bubbleteab', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "drink", 3000, 3)

end)QBCore.Functions.CreateUseableItem('bubbleteag', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "drink", 3000, 3)

end)QBCore.Functions.CreateUseableItem('bubbleteao', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "drink", 3000, 3)

end)QBCore.Functions.CreateUseableItem('bubbleteap', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "drink", 3000, 3)

end)QBCore.Functions.CreateUseableItem('cake', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('cakepop', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('catcookie', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('catdonut', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('catpizza', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('catrice', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('latte', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "drink", 3000, 3)

end)QBCore.Functions.CreateUseableItem('miso', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('mochameow', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('mochib', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('mochig', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('mochio', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('mochip', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('noodlebowl', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('nori', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('pawcakes', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('purrito', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('ramen', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "eat", 3000, 3)

end)QBCore.Functions.CreateUseableItem('sake', function(source, item)
    if not checkDurubality(item, source) then return end
    TriggerClientEvent('red-basicneeds:eatOrDrink', source, item.name, "drink", 3000, 3)
    
end)
```

## Insert into #qb-core - Shared.lua

```
QBShared.Items = {
-- uwucafe
-- Food
	["bento"]        	={["name"] = "bento"          , ["label"] = "Bento"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["cake"]        	={["name"] = "cake"          , ["label"] = "Cake"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["cakepop"]        	={["name"] = "cakepop"          , ["label"] = "Cakepop"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["catcookie"]        	={["name"] = "catcookie"          , ["label"] = "Cat Cookie"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["catdonut"]        	={["name"] = "catdonut"          , ["label"] = "Cat Donut"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["catpizza"]        	={["name"] = "catpizza"          , ["label"] = "Cat Pizza"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["catrice"]        	={["name"] = "catrice"          , ["label"] = "Cat Rice"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["miso"]        	={["name"] = "miso"          , ["label"] = "Miso"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["mochameow"]        	={["name"] = "mochameow"          , ["label"] = "Mochameow"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["mochib"]        	={["name"] = "mochib"          , ["label"] = "Mochiblue"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 	
	["mochig"]        	={["name"] = "mochig"          , ["label"] = "Mochigreen"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["noodlebowl"]        	={["name"] = "noodlebowl"          , ["label"] = "Noodle Bowl"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
    ["pawcakes"]        	={["name"] = "pawcakes"          , ["label"] = "pawcakes"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
    ["ramen"]        	={["name"] = "ramen"          , ["label"] = "Ramen"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 

--drinks
	["bubbletea"]        	={["name"] = "bubbletea"          , ["label"] = "Bubbletea"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 
	["milkshakec"]            ={["name"] = "milkshakec"            	, ["label"] = "Çilekli Milkshake"                    , ["weight"] =   400	, 	["type"] = "item", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Tatlı bir atıştırmalık."                                                    },   
	["milkshakek"]            ={["name"] = "milkshakek"            	, ["label"] = "Kakaolu Milkshake"                    , ["weight"] =   400	, 	["type"] = "item", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Tatlı bir atıştırmalık."                                                    },   
	["sake"]        	={["name"] = "sake"          , ["label"] = "Sake"       , ["weight"] =   0 		,   ["type"] = "item", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = ""                                              }, 

--Ingredients
    ["domates2"]      	={["name"] = "domates2"        	, ["label"] = "Söğüş Domates"           , ["weight"] =   200 	,   ["type"] = "item", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "İnce ince dilimlenmiş lezzetli görünen bir domates"                                              }, 
	["kakao"]         ={["name"] = "kakao"         	, ["label"] = "Kakao"                 , ["weight"] =   1000 	, 	["type"] = "item", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Çocuklar çok sevicek."                                                                },       
	["sut"]         ={["name"] = "sut"         	, ["label"] = "Süt"                 , ["weight"] =   1000 	, 	["type"] = "item", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Çok sağlıklı."                                                                },       
	["hamur"]           ={["name"] = "hamur"            , ["label"] = "Hamur"                   , ["weight"] =   100  	, 	["type"] = "item", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Açarsın börek, yayarsın pizza. Nerede kullanacaksın?"                             },  
	["havuc"]           ={["name"] = "havuc"            , ["label"] = "Havuç"                   , ["weight"] =   1000	, 	["type"] = "item", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Iııı naber cınım??"                                                               },   
	["sogan2"]        	={["name"] = "sogan2"        	, ["label"] = "Doğranmış Soğan"         , ["weight"] =   100  	,   ["type"] = "item", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Görenin gözlerini yaşartan taze doğranmış soğan"                                              },
	["marul2"]        	={["name"] = "marul2"        	, ["label"] = "Söğüş Marul"             , ["weight"] =   100  	,   ["type"] = "item", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Yıkanmış, taze ve dilimlenmiş marul parçaları"                                              }, 
}

```

```
QBShared.Jobs = {
    ["uwucafe"] = {
		label = "Uwu Cafe Çalışanı",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Garson",
                payment = 50
            },
			['1'] = {
                name = "Usta",
                payment = 75
            },
			['2'] = {
                name = "Kasiyer",
                payment = 100
            },
			['3'] = {
                name = "Müdür",
                payment = 125
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                payment = 150
            },
        },
	},
}		
```



## Insert into #qb-bossmenu - config.lua
```
['uwucafe'] = vector3(-1192.04, -902.476, 13.998)),
```