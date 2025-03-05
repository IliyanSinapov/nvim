return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  config = function()
    local jdtls = require("jdtls")
    local home = os.getenv("HOME")
    local workspace_dir = home .. "/workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
    local config = {
      cmd = { "jdtls", "-data", workspace_dir },
      root_dir = jdtls.setup.find_root({ ".git", "mvnw", "gradlew" }),
    }
    jdtls.start_or_attach(config)
  end,
}
