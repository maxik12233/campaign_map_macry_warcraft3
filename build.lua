require 'build' {
	project = 'D:\\reforgedMaps\\macri_ch1',
    map = 'map.w3x',
    src = {
        'src\\total_initialization.lua',
        'src\\globals.lua',
        'src\\debugger',
        'src\\lib',
        'src\\ability',
        'src\\story',
        'src\\init.lua'
        },
    syntaxCheck = false,
	run = 'editor',
    options = {
        language = "ru",
        consoleColor = true,
    }
}