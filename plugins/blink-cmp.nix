{
  plugins.friendly-snippets = {
    enable = true;
  };

  plugins.luasnip.enable = true; # autoEnableSources not enough

  plugins.blink-cmp = {
    enable = true;

    settings = {

      keymap = {
        # All presets have the following mappings:
        # <tab>/<s-tab>: move to right/left of your snippet expansion
        # <c-space>: Open menu or open docs if already open
        # <c-n>/<c-p> or <up>/<down>: Select next/previous item
        # <c-e>: Hide menu
        # <c-k>: Toggle signature help
        preset = "default";
      };

      appearance = {
        # 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        # Adjusts spacing to ensure icons are aligned
        nerd_font_variant = "mono";
      };

      completion = {
        # By default, you may press `<c-space>` to show the documentation.
        # Optionally, set `auto_show = true` to show the documentation after a delay.
        documentation = {
          auto_show = false;
          auto_show_delay_ms = 500;
        };
      };

      sources = {
        default = [
          "lsp"
          "path"
          "snippets"
          "lazydev"
        ];
        providers = {
          lazydev = {
            module = "lazydev.integrations.blink";
            score_offset = 100;
          };
        };
      };

      snippets = {
        preset = "luasnip";
      };

      # Blink.cmp includes an optional, recommended rust fuzzy matcher,
      # which automatically downloads a prebuilt binary when enabled.
      #
      # By default, we use the Lua implementation instead, but you may enable
      # the rust implementation via `'prefer_rust_with_warning'`
      #
      # See :h blink-cmp-config-fuzzy for more information
      fuzzy = {
        implementation = "lua";
      };

      signature = {
        enabled = true;
      };
    };
  };
}
