require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opt = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- ------------normal模式-------------
-- 光标切换到到本行第一个字符
map('n', 'H', '^')
-- 光标切换到到本行最后一个字符
map('n', 'L', '$')

----------------- window options-------------
map('n', "<leader>sv", "<C-w>v", { desc = '水平新增窗口'})
map('n', '<leader>ss', '<C-w>s', { desc = '垂直新增窗口'})
map('n', '<leader>sw', '<C-w>q', { desc = '关闭当前窗口'})

-- 翻半页变成9行
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

map('n', "<leader>j", "A;<ESC>", { desc = '自动在行尾添加分号'})

-- ---------------------------------
-- 切换到上一个缓冲区
map('n', '<C-]>', ':bnext<CR>', opt)
-- 切换到下一个缓冲区（如果需要）
map('n', '<C-[>', ':bprevious<CR>', opt)
-- ---------------------------------

-- ------------insert模式-------------
-- map.set()
-- ---------------------------------


-- ------------visual模式-------------
map('v', 'L', '$')
map('v', 'H', '^')
--------------------------------------



-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc>", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
	"n",
	"<Leader>dd",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })
