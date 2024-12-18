-- keymaps.lua
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Change CWD keymap
vim.keymap.set('n', '<leader>.', '<cmd>cd %:h<CR>', { desc = 'Set CWD here (.)' })

-- Windows style save
vim.keymap.set({ 'i', 'n' }, '<C-s>', '<cmd>w<CR>', { desc = 'Save current buffer' })

-- Copy line down/up
vim.keymap.set('n', '<M-S-j>', '"ayy"ap', { desc = 'Copy line down' })
vim.keymap.set('n', '<M-S-k>', '"ayy"aP', { desc = 'Copy line up' })

-- Line breaks in insert mode
vim.keymap.set('i', '<S-enter>', '<esc>o', { desc = 'Open new line from insert mode' })

-- Change some awkward keybindings that dont fit well on Nordic keyboards
vim.keymap.set('n', '#', '^', { desc = 'Move cursor to start of line', noremap = true })
vim.keymap.set('n', '¤', '$', { desc = 'Move cursor to end of line', noremap = true })
