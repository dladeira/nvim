local vim = vim

require('user/plugins')
require('user/keymaps')
require("user/options")

require('toggleterm').setup()
require('hardtime').setup()

vim.cmd.colorscheme('catppuccin')

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("Neotree show left")
    end,
})

-- telescope

require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ["<C-s>"] = "select_vertical",
            }
        }
    }
}

-- ale

vim.g.ale_fixers = { ['typescript'] = { 'prettier', "eslint", }, ['javascript'] = { 'prettier', "eslint", }, ['*'] = { 'remove_trailing_lines', 'trim_whitespace' } }
vim.g.ale_fix_on_save = 1
vim.g.ale_completion_enabled = 1
