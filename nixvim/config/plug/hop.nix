{
  plugins.hop = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "f";
      action.__raw = ''
        function()
          require("hop").hint_char1({
            -- direction = require("hop.hint").HintDirection.AFTER_CURSOR,
            -- current_line_only = true,
          })
        end
      '';
    }

    # {
    #   mode = "n";
    #   key = "F";
    #   action.__raw = ''
    #     function()
    #       require("hop").hint_char1({
    #         direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
    #         -- current_line_only = true,
    #       })
    #     end
    #   '';
    # }

    # t and T...
  ];
}
