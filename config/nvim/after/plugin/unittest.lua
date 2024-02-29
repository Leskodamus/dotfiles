-- Test plugin for unit tests and theirlike

require('nvim-test').setup {
    termOpts = {
        direction = "float",
        stopinsert = "auto",
        keep_one = true,
    },

    runners = {
        go = "nvim-test.runners.go-test",
        python = "nvim-test.runners.pyunit"
    }
}

