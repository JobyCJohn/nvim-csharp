local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    local opts = { noremap=true, silent=true }

    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', opts)
    buf_set_keymap('n', '<Leader>v', '<cmd>Telescope lsp_document_symbols<CR>', opts)
    buf_set_keymap('n', '<Leader>V', '<cmd>Telescope lsp_workspace_symbols<CR>', opts)
    buf_set_keymap('n', '<Leader>d', '<cmd>Telescope diagnostics bufnr=0<CR>', opts)
    buf_set_keymap('n', '<Leader>D', '<cmd>Telescope diagnostics<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
    buf_set_keymap('n', 'gh', '<cmd>Lspsaga lsp_finder<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>Lspsaga rename<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>Lspsaga signature_help<CR>', opts)
    buf_set_keymap('n', '<C-f>', [[<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>]], opts)
    buf_set_keymap('n', '<C-b>', [[<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>]], opts)
    buf_set_keymap('n', '<Leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    buf_set_keymap('n', '<A-CR>', '<cmd>Lspsaga code_action<CR>', opts)
    buf_set_keymap('v', '<A-CR>', '<cmd><C-U>Lspsaga range_code_action<CR>', opts)
end

local function get_lsp_capabilities()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities.textDocument.colorProvider = { dynamicRegistration = false }
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

    local handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false
        })
    }

    return {
        capabilities = capabilities,
        on_attach = on_attach,
        handlers = handlers
    }
end

local function get_lsp_config(server)
    local config = get_lsp_capabilities()
    if server == 'omnisharp' then
        local pid = vim.fn.getpid()
        local omnisharp_path = vim.fn.stdpath("data") .. "/lsp_servers/omnisharp/omnisharp/OmniSharp.exe"
        config.cmd = { omnisharp_path, "--languageserver" , "--hostPID", tostring(pid) }
    elseif server == 'powershell_es' then
        config.bundle_path = "C:/Tools/lsp/PowerShellEditorServices"
    elseif server == 'sumneko_lua' then
        local runtime_path = vim.split(package.path, ';')
        table.insert(runtime_path, "lua/?.lua")
        table.insert(runtime_path, "lua/?/init.lua")
        config.default_config = {
            settings = {
                Lua = {
                    runtime = {
                        version = 'LuaJIT',
                        path = runtime_path,
                    },
                    diagnostics = {
                        globals = {'vim'},
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                    telemetry = {
                        enable = false,
                    },
                },
            },
        }
    end
    return config
end

local function setup_servers()
    if vim.api.nvim_eval('&diff') == 0 then
        local lsp_installer_servers = require'nvim-lsp-installer.servers'
        local servers = { 'omnisharp', 'powershell_es', 'tsserver', 'sumneko_lua', 'eslint', 'html', 'cssls', 'jsonls' }
        for _, server in pairs(servers) do
            local server_available, requested_server = lsp_installer_servers.get_server(server)
            if server_available then
                requested_server:on_ready(function ()
                    local config = get_lsp_config(server)
                    requested_server:setup(config)
                end)
                if not requested_server:is_installed() then
                    requested_server:install()
                end
            end
        end
    end
end

setup_servers()
