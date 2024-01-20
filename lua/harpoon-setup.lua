local harpoon = require("harpoon")

harpoon:setup({})
print("harpoon hre")

vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end, { desc = "harpoon append to list" } )
vim.keymap.set("n", "<leader>hd", function() harpoon:list():remove() end, { desc = "harpoon delete from list" } )
vim.keymap.set("n", "<leader>hj", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "harpoon quick menu" })

vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end, { desc = "harpoon select at index 1" })
vim.keymap.set("n", "<leader>hn", function() harpoon:list():select(2) end, { desc = "harpoon select at index 2" })
vim.keymap.set("n", "<leader>he", function() harpoon:list():select(3) end, { desc = "harpoon select at index 3" })
vim.keymap.set("n", "<leader>hi", function() harpoon:list():select(4) end, { desc = "harpoon select at index 4" })

vim.keymap.set("n", "<C-Q>", function() harpoon:list():prev() end, { desc = "harpoon previous item" })
vim.keymap.set("n", "<C-W>", function() harpoon:list():next() end, { desc = "harpoon next item" })
