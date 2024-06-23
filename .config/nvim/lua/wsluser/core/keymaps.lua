local function map(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

-- Example usage:
map('i', 'jk', '<ESC>')  -- Example: Map 'jk' in insert mode to '<ESC>'

vim.g.mapleader = " "

-- Clear search highlight
map('n', '<leader>n', ':nohl<CR>')

-- Increment/decrement numbers
map('n', '<leader>+', '<C-a>') -- Increment number
map('n', '<leader>-', '<C-x>') -- Decrement number

-- Window management
map('n', '<leader>sv', '<C-w>v') -- Split window vertically
map('n', '<leader>sh', '<C-w>s') -- Split window horizontally
map('n', '<leader>se', '<C-w>=') -- Make splits equal size
map('n', '<leader>sx', '<cmd>close<CR>') -- Close current split

-- Tab management
-- Open new tab with Ctrl+n
map('n', '<C-n>', '<cmd>tabnew<CR>')

-- Go to next tab with Shift+CapsLock
map('n', '<S-Tab>', '<cmd>tabn<CR>')

-- Go to previous tab with Shift+Tab
map('n', '<S-CapsLock>', '<cmd>tabp<CR>')

-- Close current tab with Ctrl+w
map('n', '<C-w>', '<cmd>tabclose<CR>')

-- Open current buffer in new tab with Ctrl+t
map('n', '<C-t>', '<cmd>tabnew %<CR>')

-- Close current tab with Ctrl+x
map('n', '<C-x>', '<cmd>tabclose<CR>')

-- Open file explorer with Ctrl+Shift+P
map('n', '<C-p>', ':CHADopen<CR>')

