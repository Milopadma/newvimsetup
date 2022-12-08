local status, lspformat = pcall(require, "lsp-format")
if not status then
    return
end

-- lsp-format configuration
lspformat.setup({
    debug = false,
    log_file = vim.fn.stdpath("cache") .. "/lsp_format.log",
    check_on_open = true,
    check_on_save = true,
    check_on_write = true,
    formatter = "prettier",
    formatter_config_fallback = nil,
})

local on_attach = function(client)
    require("lsp-format").on_attach(client)
    -- ... custom code ...
end
-- for formatting go
require("lspconfig").gopls.setup({ on_attach = on_attach })

-- for formatting lua using sumneko lua instead
require("lspconfig").sumneko_lua.setup({
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = vim.split(package.path, ";"),
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

-- for formatting java, C and C++ using clang-format.py
-- require("lspconfig").clangd.setup({
--     on_attach = on_attach,
--     cmd = { "clangd", "--background-index", "--clang-tidy" },
--     filetypes = { "c", "cpp", "java" },
--     init_options = {
--         clangdFileStatus = true,
--     },
-- })
-- for formatting java using JDTLS
require("lspconfig").jdtls.setup({
    on_attach = on_attach,
    cmd = { "jdtls" },
    filetypes = { "java" },
    -- init_options = {
    --     bundles = {
    --         vim.fn.expand("$HOME/.local/share/nvim/lspinstall/java/vscode-java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar"),
    --         vim.fn.expand("$HOME/.local/share/nvim/lspinstall/java/vscode-java-test/server/com.microsoft.java.test.plugin/target/com.microsoft.java.test.plugin-*.jar"),
    --     },
    -- },
    -- root_dir = function(fname)
    --     return require("jdtls.setup").find_root({ "build.gradle", "pom.xml", ".git" }, fname)
    -- end,
    -- settings = {
    --     java = {
    --         signatureHelp = { enabled = true },
    --         contentProvider = { preferred = "fernflower" },
    --         sources = {
    --             organizeImports = {
    --                 starThreshold = 9999,
    --                 staticStarThreshold = 9999,
    --             },
    --         },
    --         configuration = {
    --             runtimes = {
    --                 {
    --                     name = "JavaSE-11",
    --                     path = "/usr/lib/jvm/java-11-openjdk/",
    --                 },
    --             },
    --         },
    --     },
    -- },
})
