vim.cmd([[
  autocmd FileType javascript setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5
]])
vim.g.neoformat_try_formatprg = 1
vim.g.neoformat_try_node_exe = 1
