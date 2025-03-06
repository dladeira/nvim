local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<S-b>', '<Cmd>Neotree focus left<CR>')

vim.keymap.set('n', '<S-f>', '<Cmd>w<CR><BAR>')

-- Terminal
vim.keymap.set('n', '<C-t>', '<Cmd>exe v:count1 .. "ToggleTerm"<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-t>', '<Esc><Cmd>exe v:count1 .. "ToggleTerm"<CR>', { noremap = true, silent = true })

vim.api.nvim_create_autocmd("TermEnter", {
    pattern = "term://*toggleterm#*",
    callback = function()
        vim.keymap.set('t', '<C-t>', '<Cmd>exe v:count1 .. "ToggleTerm"<CR>', { noremap = true, silent = true, buffer = true })
    end
})

-- ALE accept first suggestion
vim.keymap.set('i', '<C-CR>', 'pumvisible() ? "<C-n><C-y>" : "<C-CR>"', { expr = true, noremap = true, silent = true })
