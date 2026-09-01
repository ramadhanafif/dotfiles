return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {},
      clangd = {
        cmd = {
          "clangd",
          "--query-driver=" .. vim.fn.expand("~/zephyr-sdk-0.17.4/xtensa-espressif_esp32s3_zephyr-elf/bin/xtensa-espressif_esp32s3_zephyr-elf-g++"),
        },
      },
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
