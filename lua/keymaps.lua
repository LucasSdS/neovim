local map = vim.keymap.set

-- move lines up/down
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move line down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move line up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move selection up" })

map("n", "<Esc>", "<cmd>nohlsearch<cr><Esc>", { desc = "Clear search highlight" })

-- keep the selection after indenting
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- move by screen line on wrapped text, unless a count is given
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "Down" })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "Up" })

-- diagnostics
map("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Next diagnostic" })
map("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Previous diagnostic" })
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line diagnostics" })
