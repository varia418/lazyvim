return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      enabled = true,
      animate = {
        duration = { step = 10, total = 100 },
        easing = "linear",
      },
      animate_repeat = {
        delay = 50,
        duration = { step = 3, total = 20 },
        easing = "linear",
      },
    },
    picker = {
      sources = {
        files = { hidden = true },
        explorer = {
          hidden = true,
          ignored = true,
          win = {
            list = {
              keys = {
                ["l"] = "list_up",
                ["k"] = "list_down",
                ["j"] = "explorer_close",
                [";"] = "confirm",
                ["h"] = false,
              },
            },
          },
        },
      },
      win = {
        input = {
          keys = {
            ["k"] = { "list_down", mode = { "n", "i" } },
            ["l"] = { "list_up", mode = { "n", "i" } },
            ["j"] = false,
          },
        },
        list = {
          keys = {
            ["k"] = "list_down",
            ["l"] = "list_up",
            ["j"] = false,
          },
        },
      },
    },
  },
}
