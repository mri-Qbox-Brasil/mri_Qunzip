fx_version "cerulean"
game "gta5"

description "mri_Qbox Core"
author "MRI QBOX Team"
discord ".mur4i"
discord "gfive_"
version "MRIQBOX_VERSION"

ui_page "web-side/index.html"

shared_scripts {
	"@ox_lib/init.lua",
	"@qbx_core/modules/playerdata.lua",
	"config.lua",
	"**/**/config.lua",
	"**/**/shared/*",
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "**/**/server/*",
    "**/**/server-side/**/*",
}

client_scripts {
	"**/**/client/*",
	"**/**/client-side/**/*",
}

files {
	"web-side/*",
	"web-side/**/*"
}

lua54 "yes"
