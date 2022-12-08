local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
    return
end

local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
    -- formatting
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command([[augroup Format]])
        vim.api.nvim_command([[autocmd! * <buffer>]])
        -- vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
        vim.api.nvim_command([[augroup END]])
    end
end

-- nvim_lsp.diagnostic.show_line_diagnostics()

-- LSP for TypeScript
nvim_lsp.tsserver.setup({
    on_attach = on_attach,
    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    cmd = { "typescript-language-server", "--stdio" },
})

-- LSP for Lua
nvim_lsp.sumneko_lua.setup({
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the 'vim' global
                globals = { "vim" },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                },
            },
        },
    },
})

-- LSP for Rust
nvim_lsp.rust_analyzer.setup({
    on_attach = on_attach,
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true,
            },
            procMacro = {
                enable = true,
            },
        },
    },
})

-- LSP for Java
-- nvim_lsp.jdtls.setup({
--     on_attach = on_attach,
--     cmd = { "jdtls" },
--     filetypes = { "java" },
--     -- root_dir = nvim_lsp.util.root_pattern(
--     -- 	".git",
--     -- 	"pom.xml",
--     -- 	"build.gradle",
--     -- 	"settings.gradle",
--     -- 	"gradle.properties",
--     -- 	".project"
--     -- ),
--     init_options = {
--         bundles = {
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.core.resources_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.core.expressions_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.core.runtime_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.core.filesystem_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.text_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.osgi_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.jdt.core_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.jdt.ui_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.jdt.ls.core_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.jdt.ls.debug_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.jdt.ls.tests_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.core_*.jar"),
--             -- vim.fn.glob(
--             -- 	"/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.logback.appender_*.jar"
--             -- ),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.jdt_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.maven.runtime_*.jar"),
--             -- vim.fn.glob(
--             -- 	"/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.maven.runtime.slf4j.simple_*.jar"
--             -- ),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.workspace.cli_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.wtp_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.wtp.jaxrs_*.jar"),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.wtp.jsf_*.jar"),
--             -- vim.fn.glob(
--             -- 	"/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.wtp.mavenarchiver_*.jar"
--             -- ),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.wtp.overlay_*.jar"),
--             -- vim.fn.glob(
--             -- 	"/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.wtp.runtimes.tomcat_*.jar"
--             -- ),
--             -- vim.fn.glob(
--             -- 	"/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.wtp.runtimes.wildfly_*.jar"
--             -- ),
--             -- vim.fn.glob("/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.m2e.wtp.war_*.jar"),
--             -- vim.fn.glob(
--             -- 	"/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.wst.common.componentcore_*.jar"
--             -- ),
--             -- vim.fn.glob(
--             -- 	"/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.wst.common.project.facet.core_*.jar"
--             -- ),
--             -- 	        vim.fn.glob(
--             -- 	"/home/username/.config/nvim/lsp/eclipse.jdt.ls/plugins/org.eclipse.wst.common.project.facet.ui_*.jar"
--             -- ),
--         },
--     },
-- })
