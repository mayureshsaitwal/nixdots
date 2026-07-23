{
  plugins.dap = {
    enable = true;
    configurations = {
      cpp = [
        {
          type = "codelldb";
          request = "launch";
          name = "Launch executable";
          program.__raw = ''
            function()
              return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
            end
          '';
          cwd = "\${workspaceFolder}";
          stopOnEntry = false;
        }
        {
          type = "codelldb";
          request = "attach";
          name = "Attach to process";
          pid.__raw = "require('dap.utils').pick_process";
          cwd = "\${workspaceFolder}";
        }
      ];
    };
  };

  plugins.dap-lldb.enable = true;
  plugins.dap-python.enable = true;
  plugins.dap-ui.enable = true;
  plugins.dap-virtual-text.enable = true;
  keymaps = [
    {
      mode = "n";
      key = "<leader>dt";
      action.__raw = "function() require('dap').toggle_breakpoint() end";
      options.desc = "Toggle Breakpoint";
    }

    {
      mode = "n";
      key = "<leader>dc";
      action.__raw = "function() require('dap').continue() end";
      options.desc = "Continue";
    }

    {
      mode = "n";
      key = "<leader>dr";
      action.__raw = "function() require('dap').repl.open() end";
      options.desc = "Open REPL";
    }

    {
      mode = "n";
      key = "<leader>dk";
      action.__raw = "function() require('dap').terminate() end";
      options.desc = "Terminate";
    }

    {
      mode = "n";
      key = "<leader>dso";
      action.__raw = "function() require('dap').step_over() end";
      options.desc = "Step Over";
    }

    {
      mode = "n";
      key = "<leader>dsi";
      action.__raw = "function() require('dap').step_into() end";
      options.desc = "Step Into";
    }

    {
      mode = "n";
      key = "<leader>dsu";
      action.__raw = "function() require('dap').step_out() end";
      options.desc = "Step Out";
    }

    {
      mode = "n";
      key = "<leader>dl";
      action.__raw = "function() require('dap').run_last() end";
      options.desc = "Run Last";
    }

    {
      mode = "n";
      key = "<leader>duu";
      action.__raw = "function() require('dapui').toggle() end";
      options.desc = "Toggle DAP UI";
    }

    # {
    #   mode = "n";
    #   key = "<leader>duu";
    #   action.__raw = "function() require('dapui').open() end";
    #   options.desc = "Open DAP UI";
    # }

    # {
    #   mode = "n";
    #   key = "<leader>duc";
    #   action.__raw = "function() require('dapui').close() end";
    #   options.desc = "Close DAP UI";
    # }
  ];
}
