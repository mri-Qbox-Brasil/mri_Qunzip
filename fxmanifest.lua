fx_version "cerulean"
game "gta5"

description "Responsável por fazer download e descompactação de arquivos .zip"
author "MRI QBOX Team"
version "MRIQBOX_VERSION"

lua54 "yes"

shared_scripts {
	"config.lua",
	-- "**/**/config.lua",
	-- "**/**/shared/*",
}

server_scripts {
    -- "@oxmysql/lib/MySQL.lua",
    "**/**/server/*",
    "**/**/server-side/**/*",
}

client_scripts {
	"**/**/client/*",
	"**/**/client-side/**/*",
}
