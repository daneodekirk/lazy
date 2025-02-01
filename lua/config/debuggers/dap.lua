local is_windows = require("config.os").is_windows

local M = {}

local function configure()
	local dap_breakpoint = {
		error = {
			text = "",
			texthl = "LspDiagnosticsSignError",
			linehl = "",
			numhl = "",
		},
		rejected = {
			text = "",
			texthl = "LspDiagnosticsSignHint",
			linehl = "",
			numhl = "",
		},
		stopped = {
			text = "ﴫ",
			texthl = "LspDiagnosticsSignInformation",
			linehl = "DiagnosticUnderlineInfo",
			numhl = "LspDiagnosticsSignInformation",
		},
	}

	vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
	vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)
	vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
end

local function configure_exts()
	require("nvim-dap-virtual-text").setup({ commented = true })

	local dap, dapui = require("dap"), require("dapui")
	dapui.setup({}) -- use default UI

	dap.listeners.after.event_initialized["dapui_config"] = function()
		dapui.open()
	end
end

local function configure_debuggers()
	if is_windows then
		require("config.debuggers.languages.godot").setup()
	else
		require("config.debuggers.languages.python").setup()
	end
end

function M.setup()
	configure()
	configure_exts()
	configure_debuggers()
end

return M
