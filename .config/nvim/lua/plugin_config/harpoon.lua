local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>q', mark.add_file)
vim.keymap.set('n', '<leader>qa', mark.clear_all)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

-- Only support 4 quick navigation as more is ineffective
vim.keymap.set('n', '<leader>1', function () ui.nav_file(1) end)
vim.keymap.set('n', '<leader>2', function () ui.nav_file(2) end)
vim.keymap.set('n', '<leader>3', function () ui.nav_file(3) end)
vim.keymap.set('n', '<leader>4', function () ui.nav_file(4) end)
