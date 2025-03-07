return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.prettier,
      },
    })

    vim.keymap.set("n", "<S-M-F>", vim.lsp.buf.format, {})
  end,
}
