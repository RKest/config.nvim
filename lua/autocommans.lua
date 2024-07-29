-- Hightlight yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Auto save on buffer leave
vim.api.nvim_create_autocmd('BufLeave', {
  desc = 'Auto save on buffer leave',
  group = vim.api.nvim_create_augroup('kickstart-auto-save', { clear = true }),
  pattern = '*',
  callback = function()
    vim.cmd 'silent! w'
  end,
})
