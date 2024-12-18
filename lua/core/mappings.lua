-- Leader
vim.g.mapleader = " "

-- Insert mode
vim.keymap.set('i', 'jj', '<ESC>')

-- Buffers
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

--Splits
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')


vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')

-- Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree left toggle reveal<CR>')

--Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
