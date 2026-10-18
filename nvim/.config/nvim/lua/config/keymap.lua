local builtin = require('telescope.builtin')
local todo = require("todo-comments")

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set("n", "]t", function()
  todo.jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  todo.jump_prev()
end, { desc = "Previous todo comment" })
