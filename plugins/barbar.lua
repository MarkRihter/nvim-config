local utils = require("markrikhter.utilities")

-- Set barbar's options
require("bufferline").setup({
	animation = true,
	tabpages = false,
	closable = true,
	clickable = true,
	letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",
	semantic_letters = false,
	no_name_title = nil,
	icon_separator_active = "",
	icon_separator_inactive = "",
})

-- Move to previous/next
utils.map("n", "<A-,>", "<Cmd>BufferPrevious<CR>")
utils.map("n", "<A-.>", "<Cmd>BufferNext<CR>")
-- Re-order to previous/next
utils.map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>")
utils.map("n", "<A->>", "<Cmd>BufferMoveNext<CR>")
-- Goto buffer in position...
utils.map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>")
utils.map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>")
utils.map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>")
utils.map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>")
utils.map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>")
utils.map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>")
utils.map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>")
utils.map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>")
utils.map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>")
utils.map("n", "<A-0>", "<Cmd>BufferLast<CR>")
-- Pin/unpin buffer
utils.map("n", "<Leader>bpn", "<Cmd>BufferPin<CR>")

-- Close all buffers exept one
utils.map("n", "<Leader>ba", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>")
-- Close buffer
utils.map("n", "<C-w>", "<Cmd>BufferClose<CR>")
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
utils.map("n", "<Leader>bpk", "<Cmd>BufferPick<CR>")
-- Sort automatically by...
utils.map("n", "<Leader>bon", "<Cmd>BufferOrderByBufferNumber<CR>")
utils.map("n", "<Leader>bod", "<Cmd>BufferOrderByDirectory<CR>")
utils.map("n", "<Leader>bol", "<Cmd>BufferOrderByLanguage<CR>")
utils.map("n", "<Leader>bow", "<Cmd>BufferOrderByWindowNumber<CR>")

local nvim_tree_events = require("nvim-tree.events")
local bufferline_state = require("bufferline.state")

local function get_tree_size()
	return require("nvim-tree.view").View.width
end

nvim_tree_events.subscribe("TreeOpen", function()
	bufferline_state.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe("Resize", function()
	bufferline_state.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe("TreeClose", function()
	bufferline_state.set_offset(0)
end)
