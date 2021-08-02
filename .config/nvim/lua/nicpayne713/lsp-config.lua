local function on_attach()
end
require'lspconfig'.pylsp.setup{
        enable = true,
        settings = {
            pylsp = {
                configurationSources = {"flake8"},
                plugins = {
                    pycodestyle = {enabled = false},
                    flake8 = {enabled = true},
                    mypy = {
                        enabled = true,
                        live_mode =true,
                        strict = true
                    },
                    jedi_completion = {fuzzy = true, enabled=true},
                    jedi_hover = {enabled = true},
                    jedi_references = {enabled = true},
                    jedi_signature_help = {enabled = true},
                    jedi_symbols = {enabled = true, all_scopes = true},
                }
            }
        },
        on_attach = on_attach
    }
local configs = require 'lspconfig/configs'
configs.kedro = {
    default_config = {
        cmd = {"kedro-lsp"};
        filetypes = {"python"};
        root_dir = function(fname)
            return vim.fn.getcwd()
        end;
    };
};
require'lspconfig'.kedro.setup{on_attach=on_attach}
require'lspconfig'.jedi_language_server.setup{on_attach=on_attach}
require'lspconfig'.yamlls.setup{on_attach=on_attach}
require'lspconfig'.bashls.setup{on_attach=on_attach}

