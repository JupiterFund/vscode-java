# vscode-java

[![Docker Pulls](https://img.shields.io/docker/pulls/jupiterfund/vscode-java.svg)](https://hub.docker.com/r/jupiterfund/vscode-java/)

## How to build

```
docker build -t jupiterfund/vscode-java .
```

## Getting Started

```
docker run -d -p 8080:8080 -v "${HOME}/.local/share/code-server:/home/coder/.local/share/code-server" -v "$PWD:/home/coder/project" jupiterfund/vscode-java .
```
