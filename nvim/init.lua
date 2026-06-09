require("config.lazy")
-- remaps
vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { desc = "File Explorer" })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files hidden=true<CR>", { desc = "Fuzzy Find" })
-- no more back ups!
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.termguicolors = true

-- enable UI
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.wo.conceallevel = 2
  end,
})

vim.cmd("colorscheme nightfox")

-- wiki config
vim.g.wiki_root = '~/observatory'

