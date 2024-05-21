return {
  "kevinhwang91/nvim-hlslens",
  branch = "main",
  keys = { "*", "#", "n", "N" },
  init = function ()
    local map = vim.keymap.set
    local api = vim.api

    local hlslens = require("hlslens")

    hlslens.setup({
      calm_down = true,
      nearest_only = true,
    })

    local activate_hlslens = function (direction)
      local cmd = string.format("normal! %s%szzzv", vim.v.count1, direction)
      local status, msg = pcall(vim.cmd, cmd)

      if not status then
        local start_idx, _ = string.find(msg, 'E486', 1, true)
        local msg_part = string.sub(msg, start_idx)
        api.nvim_err_writeln(msg_part)
        return
      end

      hlslens.start()
    end

    map("n", "n", "", {
      callback = function ()
        activate_hlslens("n")
      end
    })

    map("n", "N", "", {
      callback = function ()
        activate_hlslens("N")
      end
    })

    map("n", "*", "", {
      callback = function ()
        vim.fn.execute("normal! *N")
        hlslens.start()
      end
    })

    map("n", "#", "", {
      callback = function ()
        vim.fn.execute("normal! #N")
        hlslens.start()
      end
    })
  end
}
