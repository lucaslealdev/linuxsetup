set -e
cat << EOF
===========================
===========================
=== Atualizando pacotes ===
===========================
===========================
EOF
sudo apt update
cat << EOF
===========================
===========================
= Instalando dependências =
===========================
===========================
EOF
sudo apt install software-properties-common apt-transport-https wget -y
cat << EOF
===========================
===========================
===== Instalando ZSH ======
===========================
===========================
EOF
sudo apt install zsh -y
chsh -s $(which zsh)
cat << EOF
===========================
===========================
==== Instalando OMZSH =====
===========================
===========================
EOF
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
cat << EOF
===========================
===========================
===== Instalando NVM ======
===========================
===========================
EOF
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install --lts
nvm use --lts
cat << EOF
===========================
===========================
==== Instalando vsCode ====
===========================
===========================
EOF
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y
cat << EOF
===========================
===========================
== Instalação finalizada ==
======= Bora codar ! ======
===========================
EOF