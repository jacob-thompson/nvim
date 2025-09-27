local function reload()
	for name, _ in pairs(package.loaded) do
		if name:match "^catppuccin" then package.loaded[name] = nil end
	end
	vim.g.catppuccin_flavour = nil
	vim.cmd [[highlight clear]]
end

describe("lightline colorschemes", function()
	before_each(function() reload() end)
	
	it("can load catppuccin-latte", function()
		local success = pcall(function()
			vim.cmd('runtime autoload/lightline/colorscheme/catppuccin-latte.vim')
		end)
		assert.equals(success, true)
	end)
	
	it("can load catppuccin-frappe", function()
		local success = pcall(function()
			vim.cmd('runtime autoload/lightline/colorscheme/catppuccin-frappe.vim')
		end)
		assert.equals(success, true)
	end)
	
	it("can load catppuccin-macchiato", function()
		local success = pcall(function()
			vim.cmd('runtime autoload/lightline/colorscheme/catppuccin-macchiato.vim')
		end)
		assert.equals(success, true)
	end)
	
	it("can load catppuccin-mocha", function()
		local success = pcall(function()
			vim.cmd('runtime autoload/lightline/colorscheme/catppuccin-mocha.vim')
		end)
		assert.equals(success, true)
	end)
	
	it("can load main catppuccin colorscheme", function()
		local success = pcall(function()
			vim.cmd('runtime autoload/lightline/colorscheme/catppuccin.vim')
		end)
		assert.equals(success, true)
	end)
end)