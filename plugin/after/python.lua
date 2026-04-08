
-- Automatically use project venv if it exists
local project_venv = vim.fn.getcwd() .. "/.venv/bin/python"
if vim.fn.filereadable(project_venv) == 1 then
    vim.g.python3_host_prog = project_venv
else
    vim.g.python3_host_prog = vim.fn.exepath("python3")
end

