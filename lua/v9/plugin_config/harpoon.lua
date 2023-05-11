local status_ok, harpoon = pcall(require, 'harpoon')
if not status_ok then
  return
end

local opts = { noremap = true, silent = true }
local keymap = vim.keymap

harpoon.setup({
  menu = {
    width = 60
  }
})

keymap.set('n', '<leader>h', ':lua require("harpoon.mark").add_file()<CR>', opts)
keymap.set('n', '<C-h>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)

keymap.set('n', '<leader>1', ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
keymap.set('n', '<leader>2', ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
keymap.set('n', '<leader>3', ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
keymap.set('n', '<leader>4', ':lua require("harpoon.ui").nav_file(4)<CR>', opts)
keymap.set('n', '<leader>5', ':lua require("harpoon.ui").nav_file(5)<CR>', opts)
keymap.set('n', '<leader>6', ':lua require("harpoon.ui").nav_file(6)<CR>', opts)
keymap.set('n', '<leader>7', ':lua require("harpoon.ui").nav_file(7)<CR>', opts)
keymap.set('n', '<leader>8', ':lua require("harpoon.ui").nav_file(8)<CR>', opts)
keymap.set('n', '<leader>9', ':lua require("harpoon.ui").nav_file(9)<CR>', opts)
