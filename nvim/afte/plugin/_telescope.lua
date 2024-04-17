local builtin = require('telescope.builtin')

vim.api.nvim_set_keymap('n', '<leader>pf', '<cmd>lua require("telescope.builtin").find_files()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>lua require("telescope.builtin").git_files()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ps', '<cmd>lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })<CR>', { noremap = true, silent = true })

