return {
  {
    "vimwiki/vimwiki",
    init = function()
      -- IMPORTANT: if you use markdown and don't want Vimwiki to take over *.md:
      -- (remove/adjust if you *do* want Vimwiki to manage markdown files)
      vim.g.vimwiki_global_ext = 0

      -- Example: define one wiki (edit path to what you want)
      vim.g.vimwiki_list = {
        {
          path = "~/vimwiki/",
          syntax = "markdown",
          ext = ".md",
        },
      }

      -- Optional: common mappings users like
      -- <leader>ww opens wiki index, <leader>wt opens wiki in a tab, etc.
    end,
  },
}
