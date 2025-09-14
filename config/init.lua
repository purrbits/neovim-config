-- ===============================
-- Neovim Config for Termux (2025)
-- ===============================

-- Leader key (pakai spasi)
vim.g.mapleader = " "

-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ===============================
-- Plugins
-- ===============================
require("lazy").setup({

  -- Theme
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },

  -- Statusline
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- File Explorer
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- Syntax Highlight
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Telescope (file finder, live grep)
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Autocomplete
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },

  -- Snippets
  { "L3MON4D3/LuaSnip" },

  -- LSP (language server protocol)
  { "neovim/nvim-lspconfig" },

})

-- ===============================
-- Options
-- ===============================
vim.o.number = true            -- tampilkan nomor baris
vim.o.relativenumber = true    -- nomor relatif
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true

-- ===============================
-- Theme
-- ===============================
vim.cmd.colorscheme("tokyonight")

-- ===============================
-- Lualine
-- ===============================
require("lualine").setup()

-- ===============================
-- Nvim-tree (file explorer)
-- ===============================
require("nvim-tree").setup()

-- Keymap: buka file explorer dengan <leader>e
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- ===============================
-- Telescope
-- ===============================
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- ===============================
-- Autocomplete Setup
-- ===============================
local cmp = require("cmp")
cmp.setup({
  mapping = cmp.mapping.preset.insert(),
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  },
})

-- ===============================
-- LSP Setup
-- ===============================
local lspconfig = require("lspconfig")

-- Python
lspconfig.pyright.setup{}

-- JavaScript / TypeScript (Express, Next.js)
lspconfig.tsserver.setup{}

-- Lua (buat config nvim)
lspconfig.lua_ls.setup{}
