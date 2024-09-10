FROM mcr.microsoft.com/vscode/devcontainers/ruby:3.2-bookworm

# Install bun
ENV BUN_INSTALL=/usr/local/bun
ENV PATH=/usr/local/bun/bin:$PATH
ARG BUN_VERSION=1.0.35
RUN curl -fsSL https://bun.sh/install | bash -s -- "bun-v${BUN_VERSION}"
