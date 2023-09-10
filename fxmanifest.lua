fx_version 'cerulean'
game 'gta5'

author 'DrB1ackBeard'
description 'uzy-uwujob for QBCore Created By Uzay#1640'
version '2.0.0'

shared_scripts {
    'config.lua',
}
	

client_scripts {
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
	'client/main.lua',
    'config.lua',
	'client/garage.lua',
}

server_script {
'server/main.lua',
'config.lua',
}