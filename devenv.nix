{pkgs, ...}: {
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [
    # Language server for Nix support in VSCode
    pkgs.rnix-lsp

    # Sample GUI program, run using command: xeyes
    pkgs.xorg.xeyes
  ];

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo hello from $GREET";

  enterShell = ''
    hello
    git --version
  '';

  # https://devenv.sh/languages/
  # languages.java.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks.deadnix.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
