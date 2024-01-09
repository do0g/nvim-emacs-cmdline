-- start of line
vim.keymap.set('c', '<C-a>', '<Home>')
-- end of line
vim.keymap.set('c', '<C-e>', '<End>')
-- back one character
vim.keymap.set('c', '<C-b>', '<Left>')
-- forward one character
vim.keymap.set('c', '<C-f>', '<Right>')
-- back one word
vim.keymap.set('c', '<M-b>', '<S-Left>')
-- forward one word
vim.keymap.set('c', '<M-f>', '<S-Right>')
-- clear line
vim.keymap.set('c', '<C-l>', '<C-e><C-u>')
-- delete character under cursor
vim.keymap.set('c', '<C-d>', '<Del>')
-- recall newer command-line
vim.keymap.set('c', '<C-n>', '<Down>')
-- recall previous (older) command-line
vim.keymap.set('c', '<C-p>', '<Up>')
-- kill to end of line
vim.keymap.set('c', '<C-k>',
  function() 
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(
      '<C-e><C-u>' .. string.sub(vim.fn.getcmdline(), 0, vim.fn.getcmdpos() - 1),
      true,
      false,
      true
    ), 'n', true)
  end
)
-- Yank (paste) the unnamed register
vim.keymap.set('c', '<C-y>', '<C-r>')
-- Abort editing the current command
vim.keymap.set('c', '<C-g>', '<C-\\><C-n>')
