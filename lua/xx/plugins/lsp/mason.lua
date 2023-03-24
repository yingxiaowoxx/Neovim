-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end
-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"bashls",
		"html",
		"cssls",
		"lua_ls",
		"clangd",
		"dockerls",
		"jsonls",
		"tsserver",
		"ltex",
		"marksman",
		"jedi_language_server",
		"lemminx",
		"yamlls",
		"tailwindcss",
		"emmet_ls",
	},

	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed}
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"pylint", -- python formatter
		"isort", -- python linters
		"black", -- python linters
		"clang_format", -- Cpp formatter
		"clang_check", -- Cpp linters
		"prettier", -- markdown formatter
		"stylua", -- lua formatter
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
