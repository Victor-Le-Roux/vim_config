local Remap = require("vle-roux.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local vnoremap = Remap.xnoremap
local tnoremap = Remap.tnoremap

nnoremap("<leader>", "<Nop>", silent)
vnoremap("<leader>", "<Nop>", silent)

-- Movement
nnoremap("<C-L>", "<C-W><C-L>")
nnoremap("<C-H>", "<C-W><C-H>")
nnoremap("<C-K>", "<C-W><C-K>")
nnoremap("<C-J>", "<C-W><C-J>")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
xnoremap(
  "n",
  [[:<c-u>let temp_variable=@"<CR>gvy:<c-u>let @/='\V<C-R>=escape(@",'/\')<CR>'<CR>:let @"=temp_variable<CR>]],
  silent
)

-- Copy Paste
xnoremap("<leader>y", "\"+y", silent)

-- built in terminal
nnoremap("<leader>t", "<Cmd>sp<CR> <Cmd>term<CR> <Cmd>resize 15N<CR> i", silent)
tnoremap("<C-c><C-c>", "<C-\\><C-n>", silent)
-- tnoremap("<D-v>", function()
--   local keys = vim.api.nvim_replace_termcodes("<C-\\><C-n>\"+pi", true, false, true)
--   vim.api.nvim_feedkeys(keys, "n", false)
-- end, silent)

-- misc
nnoremap("<leader>rp", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
nnoremap("<leader>w", "<Cmd>w<CR>")
nnoremap("<leader>q", "<Cmd>q!<CR>")
nnoremap("<leader>wq", "<Cmd>wq<CR>")
-- nnoremap("<leader><C-o>", "<Cmd>!open %<CR><CR>", silent)
nnoremap("J", "mzJ`z")
xnoremap("J", "mzJ`z")

-- inoremap("<Down>", "<Nop>")
-- inoremap("<Left>", "<Nop>")
-- inoremap("<Right>", "<Nop>")
-- inoremap("<Up>", "<Nop>")
--
-- nnoremap("<Down>", "<Nop>")
-- nnoremap("<Left>", "<Nop>")
-- nnoremap("<Right>", "<Nop>")
-- nnoremap("<Up>", "<Nop>")
--
-- vnoremap("<Down>", "<Nop>")
-- vnoremap("<Left>", "<Nop>")
-- vnoremap("<Right>", "<Nop>")
-- vnoremap("<Up>", "<Nop>")
