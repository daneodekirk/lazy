local M = {}

M.is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1
M.is_linux = vim.fn.has("unix") == 1 and not M.is_windows

return M
