{
  plugins.mini = {
    enable = true;

    modules = {
      # Better Around/Inside textobjects
      #
      # Examples:
      #  - va)  - [V]isually select [A]round [)]paren
      #  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      #  - ci'  - [C]hange [I]nside [']quote
      ai = {
        n_lines = 500;
      };

      # Add/delete/replace surroundings (brackets, quotes, etc.)
      #
      # Examples:
      #  - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      #  - sd'   - [S]urround [D]elete [']quotes
      #  - sr)'  - [S]urround [R]eplace [)] [']
      surround = { };

      statusline = {
        use_icons.__raw = "vim.g.have_nerd_font";
      };
    };
  };

  extraConfigLua = ''
    require('mini.statusline').section_location = function()
      return '%2l:%-2v'
    end
  '';
}
