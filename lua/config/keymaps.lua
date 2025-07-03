-- Normal mode: Shift+Y (Y) untuk copy satu baris ke clipboard
vim.keymap.set("n", "Y", '"+yy', { noremap = true, silent = true, desc = "Yank line to clipboard" })

-- Visual mode: Shift+Y (Y) untuk copy seleksi ke clipboard
vim.keymap.set("v", "Y", '"+y', { noremap = true, silent = true, desc = "Yank selection to clipboard" })

-- Normal mode: Shift+P (P) untuk paste dari clipboard
vim.keymap.set("n", "P", '"+p', { noremap = true, silent = true, desc = "Paste clipboard after cursor" })

-- Visual mode: Shift+P (P) untuk paste dari clipboard (ganti seleksi)
vim.keymap.set("v", "P", '"+p', { noremap = true, silent = true, desc = "Paste clipboard over selection" })

