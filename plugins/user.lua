return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },
  -- Colorschemes
  {
    "EdenEast/nightfox.nvim",
    as = "nightfox",
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true
        },
        inverse = {
          match_paren = true,
          visual = true,
          search = true,
        }
      })
   end,
  },
	{
	  "folke/tokyonight.nvim",
	  as = "tokyonight",
	  config = function()
	    require("tokyonight").setup({
        style = "night",
        transparent = true,
        terminal_colors = true,
	    })
	  end,
	},
	{
		"rebelot/kanagawa.nvim",
		as = "kanagawa",
		config = function()
			require("kanagawa").setup({
		    transparent = true, 
		})	
	  end,
	},
	{
	  "bluz71/vim-moonfly-colors",
	  as = "moonfly",
	}, 
	{
    "bluz71/vim-nightfly-colors",
    as = "nightfly",
	},
}
