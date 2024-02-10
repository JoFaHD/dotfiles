local plugins = {
    {
        "mbbill/undotree",
        lazy = false,
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "golangci-lint",
                "golangci-lint-langserver"
            }
        }
    }
}
return plugins
