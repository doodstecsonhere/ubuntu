#update
sudo apt update -y && sudo apt upgrade -y

#stremio
wget https://dl.strem.io/shell-linux/v4.4.165/Stremio_v4.4.165.deb
sudo apt install -y ~/Stremio_v4.4.165.deb
#pimpmystremio-bin
wget https://github.com/sungshon/PimpMyStremio/releases/download/v1.2.2/PimpMyStremio-linux.zip
unzip PimpMyStremio-linux.zip
#stremio-service-bin
wget https://dl.strem.io/stremio-service/v0.1.12/stremio-service_amd64.deb
sudo apt install -y ~/stremio-service_amd64.deb
#stacer-bin
sudo add-aspt-repository ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt-get install -y stacer
#floorp-bin
curl -fsSL https://ppa.ablaze.one/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.ablaze.one/Floorp.list'
sudo apt update -y && \
sudo apt install -y floorp
#google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install -y ~/google-chrome-stable_current_amd64.deb && \
#megasync-bin
wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb && sudo apt install -y "$PWD/megasync-xUbuntu_22.04_amd64.deb"
#teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb && sudo apt install -y ~/teamviewer_amd64.deb
#zoom
wget https://cdn.zoom.us/prod/5.17.11.3835/zoom_amd64.deb && sudo apt install -y ./zoom_amd64.deb
#tgpt-bin
curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin && \
sudo apt install -y -f

#maintenance
sudo apt autoremove --purge -y && sudo apt clean && sudo apt purge $(dpkg -l | awk '/^rc/ { print $2 }') && sudo journalctl --vacuum-size=50M && flatpak uninstall --unused

#update
sudo apt update -y && sudo apt upgrade -y
