#update
sudo apt update -y && sudo apt upgrade -y

#onlyoffice-bin
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb
sudo apt install -y ~/onlyoffice-desktopeditors_amd64.deb && \

#normcap pypi

# install pip
sudo apt install -y python3-pip && \
# Install dependencies (Ubuntu/Debian)
sudo apt install -y build-essential tesseract-ocr tesseract-ocr-eng libtesseract-dev libleptonica-dev wl-clipboard && \
# Install normcap
pip install normcap && \
#fix $PATH
echo 'export PATH=$PATH:/home/doods/.local/bin' >> ~/.bashrc && \
source ~/.bashrc && \
#create executable file
echo '#!/bin/bash
/home/doods/.local/bin/normcap' > run_normcap.sh && \
chmod +x ~/run_normcap.sh && \

#microsoft-edge-stable-bin
wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_122.0.2365.92-1_amd64.deb && \
sudo apt install -y microsoft-edge-stable_122.0.2365.92-1_amd64.deb && \
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/ && \
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-stable.list' && \
sudo rm microsoft.gpg && \
sudo apt update -y && \


#clean-up files
sudo rm -rf ~/Linux_terminal_color.zip ~/google-chrome-stable_current_amd64.deb ~/megasync-xUbuntu_22.04_amd64.deb ~/PimpMyStremio-linux.zip ~/stremio-service_amd64.deb ~/Stremio_v4.4.165.deb ~/teamviewer_amd64.deb ~/zoom_amd64.deb ~/onlyoffice-desktopeditors_amd64.deb && \
#clean-up folders
sudo rm -rf ~/timeshift-autosnap-apt && \

#maintenance
sudo apt autoremove --purge -y && sudo apt clean && sudo apt purge $(dpkg -l | awk '/^rc/ { print $2 }') && sudo journalctl --vacuum-size=50M && flatpak uninstall --unused && \

#update
sudo apt update -y && sudo apt upgrade -y
