local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not 	vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",	
		"--branch=stable",
		lazypath
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ 'phaazon/hop.nvim' },
  	{
    		"nvim-neo-tree/neo-tree.nvim",
    		branch = "v3.x",
    		dependencies = {
      			"nvim-lua/plenary.nvim",
      			"MunifTanjim/nui.nvim",
      			"nvim-tree/nvim-web-devicons",
    		},
    		lazy = false,
  	},

    -- 
    { 'nvim-treesitter/nvim-treesitter' },

    -- lsp
    { 'neovim/nvim-lspconfig' },

    -- theme
    { 'joshdick/onedark.vim' },
   
    -- cmp
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },

    -- Mason
    { 'williamboman/mason.nvim', build = ":MasonUpdate" },

    -- Telescope
    { 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } },

    -- autopairs
    { 'windwp/nvim-autopairs', event = "InsertEnter", config = true },

    -- buffline
    { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },

    -- gitsigns
    { 'lewis6991/gitsigns.nvim' },

    -- lualine
    { 'nvim-lualine/lualine.nvim' },

    -- toggleterm
    {'akinsho/toggleterm.nvim', version = "*", config = true},

    -- dashboard
    { 'glepnir/dashboard-nvim', event = 'VimEnter', dependencies = {{'nvim-tree/nvim-web-devicons'}} },
})
