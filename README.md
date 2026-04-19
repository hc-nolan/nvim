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

# Install treesitter; depending on Debian or Arch based Linux
sudo apt install -y tree-sitter-cli
sudo pacman -S tree-sitter-cli

```


Install
- Treesitter
- gofmt, gopls, stylua, ruff/black, rustfmt, codespell
- Blink.cmp fuzzy matching library: `cd ~/.local/share/nvim/site/pack/core/opt/blink.cmp && cargo build --release`

- May or may not want this: https://github.com/Vimjas/vim-python-pep8-indent
