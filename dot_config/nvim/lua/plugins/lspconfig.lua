return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {},
    },
    setup = {
      tailwindcss = function(_, opts)
        opts.settings = vim.tbl_deep_extend("force", opts.settings or {}, {
          tailwindCSS = {
            experimental = {
              classRegex = {
                { "([\"'`][^\"'`]*.*?[\"'`])", "[\"'`]([^\"'`]*) .*?[\"'`]" },
              },
            },
          },
        })
      end,
    },
  },
}
