require("popo")

if vim.fn.exists("$KITTY_WINDOW_ID") == 1 then
	vim.cmd("hi Normal guibg=none")
	vim.cmd("hi VertSplit guibg=none")
	vim.cmd("hi StatusLine guibg=none")
	vim.cmd("hi StatusLineNC guibg=none")
end
