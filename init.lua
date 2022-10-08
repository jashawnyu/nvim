require("basic")
require("keybindings")
require("plugins")


--plugins configuration
require("plugin-cfg.bufferline")
require("plugin-cfg.nvim-tree")
require("plugin-cfg.lualine")
require("plugin-cfg.telescope")
require("plugin-cfg.dashboard")
require("plugin-cfg.surround")
require("plugin-cfg.nvim-autopairs")
require("plugin-cfg.comment")
require("plugin-cfg.vimwiki")
require("plugin-cfg.gitsigns")
require("plugin-cfg.md-img-paste")
require("plugin-cfg.markdown_preview")
require("plugin-cfg.which-key")

-- LSP
require("lsp.setup")
require("lsp.cmp")

require("md-snippets")
