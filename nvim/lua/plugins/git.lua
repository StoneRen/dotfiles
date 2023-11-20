return {
  {
    "wintermute-cell/gitignore.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = {
      {
        "<leader>gi",
        desc = "Add/Append gitignore file",
        function()
          local gitignore = require("gitignore")
          gitignore.generate({})
        end,
      },
    },
  },
}
