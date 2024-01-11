function Colors(color)
	color = color or "dogrun"
	vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, 'LineNrAbove',{fg='blue'})
    vim.api.nvim_set_hl(0, 'LineNr',{fg='white'})
    vim.api.nvim_set_hl(0, 'LineNrBelow',{fg='magenta'})
end

Colors()

vim.cmd[[hi BlackOnLightYellow guifg=#000000 guibg=#f2de91]];
