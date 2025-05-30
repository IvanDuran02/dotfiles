require("popo")

if vim.fn.exists("$KITTY_WINDOW_ID") == 1 then
	vim.cmd("hi Normal guibg=none")
	vim.cmd("hi VertSplit guibg=none")
	vim.cmd("hi StatusLine guibg=none")
	vim.cmd("hi StatusLineNC guibg=none")
end

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.cmd([[
    highlight CursorLineNr cterm=bold ctermfg=208 guifg=LightRed gui=bold
]])

vim.opt.guicursor = "n-v-c:block-blinkon500,i-ci-ve:ver25-blinkon500,r-cr:hor20-blinkon500"
