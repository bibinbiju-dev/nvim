return {
	"barrett-ruth/live-server.nvim",
	build = "npm install -g live-server",
	cmd = { "LiveServerStart", "LiveServerStop" },
	config = function()
		vim.g.live_server_settings = {
			args = {
				"--browser=firefox",
			},
		}
	end,
	keys = {
		{
			"<leader>hs",
			"<cmd>LiveServerStart<cr>",
			desc = "Start Live Server (Firefox)",
		},
		{
			"<leader>hx",
			"<cmd>LiveServerStop<cr>",
			desc = "Stop Live Server",
		},
	},
}

-- use this when setting up live-server for nvim this is the new method
