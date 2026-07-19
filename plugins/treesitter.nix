{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      python
      ssh_config
      tmux

      nix
      query # treesitter queries
      vim
      vimdoc
      lua

      csv
      diff
      editorconfig
      git_config
      git_rebase
      gitattributes
      gitcommit
      gitignore
      ini
      markdown
      markdown_inline
      regex
      yaml

      rust
      toml # Also for ZMK `keymap.toml`

      css
      html
      javascript
      json
      sql
      typescript
    ];

    settings = {
      highlight = {
        enable = true;

        additional_vim_regex_highlighting = [
          "ruby"
        ];
      };

      indent = {
        enable = true;
        disable = [
          "ruby"
        ];
      };
    };
  };
}
