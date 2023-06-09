return {
    {
        'nvim-tree/nvim-tree.lua',
        cmd = { 'NvimTreeOpen', 'NvimTreeFindFileToggle' },
        config = function()
            local status_ok, tree = pcall(require, 'nvim-tree')

            if not status_ok then
                return
            end

            local opts = { noremap = true, silent = true }

            local function my_on_attach(bufnr)
                local api = require('nvim-tree.api')

                local function options(desc)
                    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
                end

                api.config.mappings.default_on_attach(bufnr)

                vim.keymap.del('n', '<C-k>', { buffer = bufnr })
                vim.keymap.set('n', '<S-k>', api.node.show_info_popup, options('Info'))
            end

            tree.setup({
                on_attach = my_on_attach,
                view = {
                    adaptive_size = true,
                },
            })
        end
    },
    {
        'nvim-tree/nvim-web-devicons'
    }
}
