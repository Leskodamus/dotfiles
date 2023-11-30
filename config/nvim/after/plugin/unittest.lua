-- Test plugin for unit tests and theirlike

require('nvim-test').setup {
    termOpts = {
        direction = "vertical",
        width = 50
    },

    runners = {
        python = "nvim-test.runners.pyunit"
    }
}

