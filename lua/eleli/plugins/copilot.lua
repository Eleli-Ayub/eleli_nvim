return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	event = "BufReadPost",
	opts = {
		suggestion = {
			enabled = not vim.g.ai_cmp,
			auto_trigger = true,
			hide_during_completion = vim.g.ai_cmp,
			keymap = {
				accept = false, -- handled by nvim-cmp / blink.cmp
				next = "<M-]>",
				prev = "<M-[>",
			},
		},
		panel = { enabled = false },
		filetypes = {
			markdown = true,
			help = true,
		},
	},
	config = function(_, opts)
		require("copilot").setup(opts)

		-- Integrate Copilot with LazyVim's AI accept (optional)
		if package.loaded["LazyVim"] then
			LazyVim.cmp.actions.ai_accept = function()
				local suggestion = require("copilot.suggestion")
				if suggestion.is_visible() then
					LazyVim.create_undo()
					suggestion.accept()
					return true
				end
			end
		end
	end,
}
