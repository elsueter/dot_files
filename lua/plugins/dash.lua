return {
	{
		"nvimdev/dashboard-nvim",
		theme = "doom",
		header = { "test" },
		opts = function(_, opts)
			opts.config.week_header = { enable = true }
			opts.config.center = {
				{
					action = "Telescope oldfiles",
					desc = " Recent files",
					icon = " ",
					key = "r",
				},
				{
					action = "qa",
					desc = " Quit",
					icon = " ",
					key = "q",
				},
			}
		end,
	},
}
