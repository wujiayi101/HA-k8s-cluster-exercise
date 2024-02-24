# Examples to spin a multi-cloud Kubernetes cluster

TODO

## Develop in a Dev Container

This project uses [`pre-commit`](https://pre-commit.com/) to enforce code standards.

[`Devcontainer`](https://code.visualstudio.com/docs/devcontainers/containers) allows you to run `pre-commit` hooks in a vscode devcontainer:

1. Ensure Docker is installed and running
2. Install [vscode](https://code.visualstudio.com/) and `Dev Containers` extension
3. Open this project in vscode
4. Launch `Command Palette` from the UI or run `⌘ + Shift + P` if you are on Mac
5. Select either `Reopen in Container` or `Rebuild Container` to start the Devcontainer
6. Once Devcontainer starts up, run git commands in vscode terminal to trigger `pre-commit` hooks
