local builtin = require('telescope.builtin')
-- Find files in root directory --
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Find files in git directory, reducing scope of search reduces time to find files --
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Find files containing input string --
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") })
end)
