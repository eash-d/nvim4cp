vim.g.mapleader = " "

local vk = vim.keymap


-- insert mode --
vk.set("i", "jk", "<ESC>")


-- visual mode --
vk.set("v", "J", ":m '>+1<CR>gv = gv") -- shift + j , go down
vk.set("v", "K", ":m '<-2<CR>gv = gv") -- shift + k , go up


-- normal mode --
-- habbit
vk.set("n", "<leader>sa", ":w<CR>") -- :w
-- windows
vk.set("n", "<leader>sv", "<C-w>v") -- leader + sv , new window vertical
vk.set("n", "<leader>sh", "<C-w>s") -- leader + sh , new window horizon
vk.set("n", "<leader>=", ":vertical resize +30<CR>")
vk.set("n", "<leader>-", ":vertical resize -30<CR>")

-- plugins hot key -- 
-- nvim tree
vk.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- for competitive programming
-- vk.set("n", "<leader>[", ":!g++ sol.cpp -o executalbe_file -std=c++17<CR>")
-- vk.set("n", "<leader>]", ":!./executalbe_file < in<CR>")
--
vk.set("n", "<F5>", ":! g++ %:p:h/sol.cpp -o %:p:h/sol -std=c++17 && %:p:h/sol < %:p:h/in <CR>")
-- 比如现在在路径 home/game/a/sol.cpp  符号 % 是vim的寄存器之一，存的是整个绝对路径。
-- 然后 %:p 应该是老式写法，就等于 % ，然后 :h 的意思是取头，就是 home/game/a，所以 %:p:h/in 的意思就是 /home/game/in
