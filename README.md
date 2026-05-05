# Setup

```bash
# Install Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
# change to .zshrc if using zsh
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.bashrc
source ~/.bashrc

# Clone this repository
git clone ssh://dev.hnolan.ca:6611/homelab/nvim.git ~/.config/nvim
```

## Installing misc dependencies

### Debian

```bash
sudo apt install -y unzip luarocks python3-pip fd-find ripgrep pipx
```

### Arch

```bash
sudo pacman -S unzip luarocks python3-pip fd-find ripgrep pipx
```

### Regardless of distribution

```bash
curl -LO https://github.com/jesseduffield/lazygit/releases/download/v0.61.1/lazygit_0.61.1_linux_x86_64.tar.gz
sudo tar -C /usr/local/bin -xvzf lazygit_0.61.1_linux_x86_64.tar.gz

curl -fsSL https://opencode.ai/install | bash

pipx ensurepath
pipx install debugpy codespell

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"

# install golang; get latest link from https://go.dev/dl/
curl -LO https://go.dev/dl/go1.26.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.26.2.linux-amd64.tar.gz
# change to ~/.zshrc if using zsh
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/go/bin" >> ~/.bashrc
source ~/.bashrc

go install golang.org/x/tools/cmd/goimports@latest
go install github.com/go-delve/delve/cmd/dlv@latest

# install nvm; get latest link from https://github.com/nvm-sh/nvm#installing-and-updating
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

source ~/.bashrc
nvm install node

npm install -g tree-sitter-cli

curl -LsSf https://astral.sh/uv/install.sh | sh
source ~/.bashrc
uv tool install ty@latest
```


- May or may not want this: https://github.com/Vimjas/vim-python-pep8-indent
