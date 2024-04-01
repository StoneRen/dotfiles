return {
  {
    -- https://github.com/python-rope/ropevim
    "python-rope/ropevim",
    ft = "python",
    enable = false,
    keys = {
      { "<M-/>", "<cmd>call RopeCodeAssist()<cr>", desc = "Python Code Assist" },
      { "<M-?>", "<cmd>call RopeLuckyAssist()<cr>", desc = "Python Lucky Assist" },
      { "<M-c>i", "<cmd>call RopeAutoImport()<cr>", desc = "Python Auto Import" },
      { "<M-c>g", "<cmd>call RopeGotoDefinition()<cr>", desc = "Python Goto Definition" },
      { "<M-c>d", "<cmd>call RopeShowDoc()<cr>", desc = "Python Show Doc" },
      { "<M-c>f", "<cmd>call RopeFindOccurrences()<cr>", desc = "Python Find Occurrences" },
    },
    config = function()
      vim.g.ropevim_autoimport_modules = { "os", "torch" }
    end,
  },
}
