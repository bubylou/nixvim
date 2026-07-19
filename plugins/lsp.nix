{ ... }:
{
  plugins.fidget = {
    enable = true;
  };

  autoGroups = {
    "kickstart-lsp-attach" = {
      clear = true;
    };
  };

  plugins.lazydev = {
    enable = true; # autoEnableSources not enough
    settings = {
      library = [
        {
          path = "\${3rd}/luv/library";
          words = [ "vim%.uv" ];
        }
      ];
    };
  };

  plugins.lsp = {
    enable = true;
    servers = {
      gopls.enable = true;
      pyright.enable = true;
      ts_ls.enable = true;
      nil_ls.enable = true;

      lua_ls = {
        enable = true;
        settings = {
          completion = {
            callSnippet = "Replace";
          };
        };
      };
    };

    keymaps = {
      diagnostic = {
        "<leader>q" = {
          mode = "n";
          action = "setloclist";
          desc = "Open diagnostic [Q]uickfix list";
        };
      };

      extra = [
        {
          mode = "n";
          key = "grr";
          action.__raw = "require('telescope.builtin').lsp_references";
          options = {
            desc = "LSP: [G]oto [R]eferences";
          };
        }
        {
          mode = "n";
          key = "gri";
          action.__raw = "require('telescope.builtin').lsp_implementations";
          options = {
            desc = "LSP: [G]oto [I]mplementation";
          };
        }
        {
          mode = "n";
          key = "grd";
          action.__raw = "require('telescope.builtin').lsp_definitions";
          options = {
            desc = "LSP: [G]oto [D]efinition";
          };
        }
        {
          mode = "n";
          key = "gO";
          action.__raw = "require('telescope.builtin').lsp_document_symbols";
          options = {
            desc = "LSP: Open Document Symbols";
          };
        }
        {
          mode = "n";
          key = "gW";
          action.__raw = "require('telescope.builtin').lsp_dynamic_workspace_symbols";
          options = {
            desc = "LSP: Open Workspace Symbols";
          };
        }
        {
          mode = "n";
          key = "grt";
          action.__raw = "require('telescope.builtin').lsp_type_definitions";
          options = {
            desc = "LSP: [G]oto [T]ype Definition";
          };
        }
      ];

      lspBuf = {
        "grn" = {
          action = "rename";
          desc = "LSP: [R]e[n]ame";
        };
        "gra" = {
          mode = [
            "n"
            "x"
          ];
          action = "code_action";
          desc = "LSP: [G]oto Code [A]ction";
        };
        "grD" = {
          action = "declaration";
          desc = "LSP: [G]oto [D]eclaration";
        };
      };
    };
  };
}
