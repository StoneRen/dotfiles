return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
   require("kanagawa").setup({
    background = {
      dark = "wave",
      light = "lotus"
    }
   })
   vim.cmd("colorscheme kanagawa")
  end
}
