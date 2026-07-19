{
  plugins.lint = {
    enable = true;

    lintersByFt = {
      nix = [ "nix" ];
      markdown = [
        "markdownlint"
      ];
      dockerfile = [ "hadolint" ];
      json = [ "jsonlint" ];
      terraform = [ "tflint" ];
      text = [ "vale" ];
    };

    autoCmd = {
      callback.__raw = ''
        function()
          if vim.opt_local.modifiable:get() then
            require('lint').try_lint()
          end
        end
      '';
      group = "lint";
      event = [
        "BufEnter"
        "BufWritePost"
        "InsertLeave"
      ];
    };
  };

  autoGroups = {
    lint = {
      clear = true;
    };
  };
}
