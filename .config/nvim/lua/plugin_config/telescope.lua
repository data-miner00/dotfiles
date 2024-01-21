require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules" }
  }
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', builtin.git_files, {})
vim.keymap.set('n', '<c-p>p', builtin.find_files, {})
vim.keymap.set('n', '<leader><space>', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ps', function ()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

