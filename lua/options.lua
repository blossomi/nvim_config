require "nvchad.options"

local o = vim.opt

-- add yours here!
--#region my config
o.number = true
-- 防止包裹
o.wrap = false

-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 高亮所在行
vim.wo.cursorline = true
-- 外观
o.termguicolors = true
o.signcolumn = "yes"

-- Diagnostic keymaps 切换到上/下一个错误
vim.keymap.set('n', 'ge', vim.diagnostic.goto_next, { desc = 'go to next [D]iagnostic message' })
vim.keymap.set('n', 'gp', vim.diagnostic.goto_prev, { desc = 'go to previous [D]iagnostic message' })

--#endregion

o.cursorlineopt ='both' -- to enable cursorline!
