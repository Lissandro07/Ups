#!/usr/bin/env bash

# Autor/Author: Lissandro
# Descrição/Description: Automatizar atualizações de pacotes .Deb, Snap e Flatpak/Automate .Deb, Snap and Flatpak package upgrades.
# Versão/Version: 1.1
# Licença/License: GPL 2

# Atualizar os repositórios/Update repositories

echo [Atualizar os repositórios apt...]
sudo apt update

# Atualizar pacotes .deb/Update .deb Packages

echo "________________________________________
[Atualizar pacotes já instalados...]"
sudo apt dist-upgrade -y

# Remover pacotes .deb desnecessários/Remove unnecessary .deb Packages

echo "________________________________________
[Remover pacotes desnecessários...]"

sudo apt autoremove --purge -y

# Atualizar pacotes Snap/Upgrade Snap packages

echo "________________________________________
[Atualizar Snaps...]"
sudo snap refresh

# Atualizar pacotes Flatpaks/Upgrade Flatpak packages

echo "________________________________________
[Atualizar Flatpaks...]"
sudo flatpak update -y

echo "________________________________________
Pronto! :)"
