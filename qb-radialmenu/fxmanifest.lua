
fx_version 'cerulean'
game 'gta5'

description 'obX Studio - QB-RadialMenu'
version '2.2.1' 
author 'sytheronn | obX Studio | obx-studio.tebex.io'

ui_page 'html/index.html'

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua' 
}

client_scripts {
    'client/blips.lua',
    'client/main.lua',
    'client/clothing.lua',
    'client/trunk.lua',
    'client/stretcher.lua',
    'client/toggle_blips.lua'
}

server_scripts {
    'server/trunk.lua',
    'server/stretcher.lua'
}

files {
    'html/index.html',
    'html/css/main.css',
    'html/js/main.js',
    'html/js/RadialMenu.js',
}

lua54 'yes'