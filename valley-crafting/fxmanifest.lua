fx_version 'cerulean'

game 'gta5'

author 'kriss'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/main.js',
    'html/style.css',
}

client_script 'client.lua'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}