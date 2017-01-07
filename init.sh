#!/usr/bin/env bash

# Initialize (install plugins, bundles, etc.)

echo "Start initialization"

# Install NeoBundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > /var/tmp/install_neobundle.sh
sh /var/tmp/install_neobundle.sh

# For Python
pip install jedi --user

# For Haskell
stack install ghc-mod hlint hasktags codex hscope stylish-haskel
