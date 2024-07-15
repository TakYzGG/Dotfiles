--Configuracion de Neovim

--Opciones
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.o.cursorline = true

--Thema
require('themes.nord-theme').setup()
