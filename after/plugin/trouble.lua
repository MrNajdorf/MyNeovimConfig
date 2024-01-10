-- let trouble = require("trouble")
--
-- -- Lua
-- vim.keymap.set("n", "<leader>xx", trouble.toggle() end)
-- vim.keymap.set("n", "<leader>xw", trouble.toggle("workspace_diagnostics") end)
-- vim.keymap.set("n", "<leader>xd", trouble.toggle("document_diagnostics") end)
-- vim.keymap.set("n", "<leader>xq", trouble.toggle("quickfix") end)
-- vim.keymap.set("n", "<leader>xl", trouble.toggle("loclist") end)
-- vim.keymap.set("n", "gR", trouble.toggle("lsp_references") end)
--
--
-- Lua
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
