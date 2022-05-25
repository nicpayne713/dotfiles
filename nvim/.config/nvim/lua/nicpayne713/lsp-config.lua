local function on_attach()
end
require'lspconfig'.pylsp.setup{
        enable = true,
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
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

-- configs.kedro = {
--     default_config = {
--     -- cmd = {"kedro-lsp"};
--     cmd = {"/home/u_paynen3/third-party/kedro-lsp/.venv/kedro-lsp/bin/kedro-lsp"};
--     filetypes = {"python"};
--     root_dir = function(fname)
--         return vim.fn.getcwd()
--     end;
--     };
-- };

-- require'lspconfig'.kedro.setup{
--         on_attach=on_attach,
--         capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
--     }
require'lspconfig'.jedi_language_server.setup{
        on_attach=on_attach,
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    }

require'lspconfig'.bashls.setup{on_attach=on_attach, filetypes={"sh"},
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
}

require'lspconfig'.jsonls.setup{on_attach=on_attach,
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
}

require'lspconfig'.yamlls.setup{
    on_attach=on_attach,
    filetypes={"yml", "yaml"},
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    settings = {
        yaml = {
            format = {enable = true},
            completion = true, 
            customTags = {  -- for CloudFormation
                "!fn",
                "!Equals",
                "!And",
                "!If",
                "!Not",
                "!Equals",
                "!Or",
                "!FindInMap sequence",
                "!Base64",
                "!Cidr",
                "!Ref",
                "!Ref Scalar",
                "!Sub",
                "!GetAtt",
                "!GetAZs",
                "!ImportValue",
                "!Select",
                "!Split",
                "!Join sequence"
            },
            schemas = {
                -- ["https://raw.githubusercontent.com/quantumblacklabs/kedro/develop/static/jsonschema/kedro-catalog-0.17.json"]= "conf/**/*catalog*",
                {
                    fileMatch="/conf/**/*catalog*",
                    url="/home/u_paynen3/.caterpillar/kedro-catalog-0.17.json"
                },
                {
                    fileMatch="/.azure-pipelines/*.yaml",
                    url="/home/u_paynen3/.caterpillar/azure-pipelines-schema.json"
                },
                {
                    fileMatch="/.azure-pipelines/*.yml",
                    url="/home/u_paynen3/.caterpillar/azure-pipelines-schema.json"
                },
                -- ["/home/u_paynen3/.caterpillar/kedro-catalog-0.17.json"]= "/conf/**/*catalog*",
                -- ["https://json.schemastore.org/github-workflow.json" ]= "/.github/workflows/*",
                -- -- ["https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json"]= "/.azure-pipelines/*.yml",
                -- ["/home/u_paynen3/.caterpillar/azure-pipelines-schema.json"]= "/.azure-pipelines/*.yml",
                -- ["https://raw.githubusercontent.com/docker/compose/master/compose/config/config_schema_v3.7.json"]= "/docker-compose.yml",

            }
        }
    }
}
require('lspconfig').texlab.setup{
    cmd = {"texlab"},
    filetypes = {"tex", "bib"},
    settings = {
        texlab = {
            rootDirectory = nil,
            --      ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓
            build = _G.TeXMagicBuildConfig,
            --      ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑
            forwardSearch = {
                executable = "evince",
                args = {"%p"}
            }
        }
    }
}
-- require('telescope').load_extension('dap')
--
require('lspconfig').terraformls.setup{}
