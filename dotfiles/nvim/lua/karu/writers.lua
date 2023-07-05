local utils = require('karu.utils')
M = {}



M.increase_header = function ()
	local pos = vim.api.nvim_win_get_cursor(0)[2]
	local line = vim.api.nvim_get_current_line()
	local header = '#' if string.sub(line, 1, 1) ~= '#' then
		header = '# '
	end
	local nline = header .. line
	vim.api.nvim_set_current_line(nline)
end

M.decrease_header = function ()
	local pos = vim.api.nvim_win_get_cursor(0)[2]
	local line = vim.api.nvim_get_current_line()
	if string.sub(line, 1, 1) == '#' then
		local nline = line:sub(2)
		if string.sub(nline, 1, 1) == ' ' then
			nline = line:sub(3)
		end
		vim.api.nvim_set_current_line(nline)
	end
end

-- Duplicate function in ftplugin/tex.lua
M.toggle_ltex_ls = function ()
	local client = vim.lsp.get_active_clients({bufnr=0, name="ltex"})
	local count = 0
	for _ in pairs(client) do count = count + 1 end
	print(count)
	if count == 0 then
		local ltex = require('lspconfig')["ltex"]
		ltex.launch()
		print("Starting server ltex, please wait.")

	else
		local global_client = vim.lsp.get_active_clients({name="ltex"})
		local id = global_client[1]["id"]
		if next(client) == nil then
			vim.lsp.buf_attach_client(0,id)
			print("Attached")
		else
			vim.lsp.buf_detach_client(0,id)
			print("Detached")
	   end
   end
end

M.create_note = function ()
	local filename = vim.fn.input("Note title >> ")
	local note_path = vim.api.nvim_get_var('notespath')
	filename = filename:gsub(" ", "_")
	vim.cmd('e '..note_path.."/inbox/"..filename..".md")
end

M.create_index = function ()
	directory = vim.api.nvim_get_var('notespath')
	--  Read file
	local indexfile = io.open(directory.."/index.md", 'r')
	local lines = {}
	for line in indexfile:lines() do
		table.insert(lines, line)
	end
	indexfile:close()

	-- Add file if not exists in index.js to a table t
	local count, i, t, popen = 0, 0, {}, io.popen
	local pfile = popen('ls -a "'..directory..'" | grep .md')
	for filename in pfile:lines() do
		i = i + 1
		-- Check if file is already in the table.
		for _, v in pairs(lines) do
			local href = "* ["..filename:gsub(".md","").."]("..filename..")"
			if not utils.has_value(lines, href) then
				t[i] = href
				count = count+1
			end
		end
	end

	
	-- Remove index.md
	for i, v in ipairs(t) do
		if string.find(v,"index.md") then
			table.remove(t, i)
		end
	end

	print(count.." new entrie/s added.")
	for _,v in ipairs(t) do
		table.insert(lines, v)
	end
	--Writting the file
	local indexfile = io.open(directory.."/index.md", 'w')
	for _, line in ipairs(lines) do
		indexfile:write(line)
		indexfile:write("\n")
	end
	indexfile:close()
	return t
end

M.create_link = function ()
	local line = vim.api.nvim_get_current_line()
	local col_start = vim.fn.getpos('v')[3]
	local col_end = vim.fn.getcurpos()[3]
	local row_end = vim.fn.getcurpos()[2]

	if col_start > col_end then
		col_start =  vim.fn.getcurpos()[3]
		col_end =  vim.fn.getpos('v')[3]
	end

	local nline = line:sub(1,col_start-1).."["..line:sub(col_start, col_end) .. "]()"..line:sub(col_end+1, 20)
	vim.api.nvim_set_current_line(nline)
	vim.api.nvim_input('<esc>')

	local cur_pos = col_end +2
	vim.api.nvim_win_set_cursor(0,{row_end,cur_pos})
	vim.api.nvim_input('a')
end

M.next_link = function() 
	vim.cmd(':let @/="["')
	vim.api.nvim_input('n')
end

M.prev_link = function() 
	vim.cmd(':let @/="["')
	vim.api.nvim_input('N')
end
return M
