FROM gitpod/workspace-full

USER root

RUN curl -fsSL https://pkgs.tailscale.com/unstable/ubuntu/focal.gpg | sudo apt-key add - \
     && curl -fsSL https://pkgs.tailscale.com/unstable/ubuntu/focal.list | sudo tee /etc/apt/sources.list.d/tailscale.list \
     && sudo apt-get update \
     && sudo apt-get install -y tailscale