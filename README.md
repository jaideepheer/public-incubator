# nix-dev-env

VSCode devcontainer with Nix package manager, running inside Alpine docker image

## Pre-Requisites

- [Visual Studio Code](https://code.visualstudio.com/)
- [Docker](https://www.docker.com/get-started/)

## Usage

- Create your own repo. from template
- Clone your repo. to a directory with **no spaces** in its path
- Make sure Docker Desktop/daemon is running
- Open repo. folder with VSCode
- Install recommended extensions in VSCode
- Press `Ctrl+Shift+P` and select `Devcontainers: Reopen Folder in Container`
- Allow direnv to access environment and restart/reload when direnv ask to do so (takes a few min.)
- [Optional] Test GUI support by running command `xeyes` in terminal

> Note: GUI support is configured to work for Windows using WSLg. Check here to see if it is already installed in your system: https://github.com/microsoft/wslg#pre-requisites

## Configuration

The packages are managed by [devenv](https://devenv.sh/).

For changing available packages modify either `devenv.nix` or `devenv.local.nix` (local only config).

See devenv docs for more info: https://devenv.sh/files-and-variables/

If a feature cannot be added using Nix or devenv, check out container level features here: https://containers.dev/features