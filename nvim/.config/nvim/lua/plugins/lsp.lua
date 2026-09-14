return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
    { "saghen/blink.cmp", version = "1.*" },
  },
  opts = {
    ensure_installed = { "lua_ls", "pyright" },
  },
  config = function(_, opts)
    require("mason-lspconfig").setup(opts)

    vim.lsp.config("*", {
      capabilities = require("blink.cmp").get_lsp_capabilities(),
    })
    vim.lsp.enable({ "lua_ls", "pyright" })

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local buffer = args.buf
        local map_opts = { buffer = buffer, silent = true }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, map_opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, map_opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, map_opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, map_opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, map_opts)
      end,
    })

    require("blink.cmp").setup({
      keymap = { preset = "super-tab" },
      sources = {
        default = { "lsp", "path", "buffer", "snippets" },
      },
    })
  end,
}