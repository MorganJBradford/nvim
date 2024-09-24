return {

    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },
    require("soasc/lazy/harpoon"),
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "epwalsh/obsidian.nvim",
        version = "*",
        lazy = true,
        ft = "markdown",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            workspaces = {
                {
                    name = "c_programming",
                    path = "/mnt/c/users/vampi/documents/obsidian/c_programming",
                },
                {
                    name = "computer_science",
                    path = "/mnt/c/users/vampi/documents/obsidian/computer_science",
                },
            },
        },
    },
    "eandrju/cellular-automaton.nvim",
    "gpanders/editorconfig.nvim",
}

