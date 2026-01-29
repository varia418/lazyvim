return {
  "Goose97/timber.nvim",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  opts = {
    log_templates = {
      default = {
        lua = [[print("%log_marker %log_target", %log_target)]],
        javascript = [[console.log("%log_marker ~ %log_target:", %log_target)]],
        typescript = [[console.log("%log_marker ~ %log_target:", %log_target)]],
        jsx = [[console.log("%log_marker ~ %log_target:", %log_target)]],
        tsx = [[console.log("%log_marker ~ %log_target:", %log_target)]],
      },
      plain = {
        javascript = [[console.log("%log_marker ~", %insert_cursor)]],
        typescript = [[console.log("%log_marker ~", %insert_cursor)]],
        jsx = [[console.log("%log_marker ~", %insert_cursor)]],
        tsx = [[console.log("%log_marker ~", %insert_cursor)]],
      },
    },
    log_marker = "🔎", -- Or any other string, e.g: MY_LOG
  },
}
