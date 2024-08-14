--Configuracion de Neovim

--Opciones Basicas
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.o.cursorline = true
vim.opt.clipboard:append("unnamedplus")

--No crear archivos de respaldo
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

--Optimizaciones
vim.opt.lazyredraw = true
vim.opt.ttyfast = true
vim.opt.timeoutlen = 300
vim.opt.updatetime = 300
vim.opt.history = 100

--Thema
require('themes.nord-theme').setup()
