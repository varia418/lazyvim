return {
  "neovim/nvim-lspconfig",
  opts = {
    -- make sure mason installs the server
    servers = {
      tsserver = {
        enabled = false,
      },
      ts_ls = {
        enabled = true,
      },
      vtsls = {
        enabled = false,
      },
    },
  },
}
