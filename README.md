# nixvim

## Introduction

This repo is my personal nixvim configuration.
Mostly copied from "github:JMartJonesy/kickstart.nixvim".
I do not recommend anyone other than me use it.


## Use-cases

### 1. Standalone Usage (No Configuration Files Needed)

Run instantly without modifying any user or system configuration:
```nix
nix run github:bubylou/nixvim -- <FILE>
```
Or build your own runnable nvim that can be reused
```nix
nix build github:bubylou/nixvim
./result/bin/nvim <FILE>
```

### 2. NixOS Module
1. Add nixvim to your `flake.nix`:
```nix
inputs.nixvim.url = "github:bubylou/nixvim";
```
2. Import the nixosModules in your `configuration.nix`:
```nix
{
  imports = [
    inputs.nixvim.nixosModules.default
  ];

  programs.nixvim.enable = true;
}
```

### 3. Home Manager Module
1. Add nixvim to your `flake.nix`:
```nix
inputs.nixvim.url = "github:bubylou/nixvim";
```
2. Import the homeManagerModules in your `home.nix`:
```nix
{
  imports = [
    inputs.nixvim.homeManagerModules.default
  ];

  programs.nixvim.enable = true;
}
```

### 4. nix-darwin Module (macOS)
1. Add nxivim to your `flake.nix`:
```nix
inputs.nixvim.url = "github:bubylou/nixvim";
```
2. Import the darwinModules in your `darwin-configuration.nix`:
```nix
{
  imports = [
    inputs.nixvim.darwinModules.default
  ];

  programs.nixvim.enable = true;
}
