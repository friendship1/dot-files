# wget https://github.com/GitCredentialManager/git-credential-manager/releases/download/v2.0.605/gcmcore-linux_amd64.2.0.605.12951.deb
# sudo dpkg -i ./gcmcore-linux_amd64.2.0.605.12951.deb
cd install
url=$(curl -s https://api.github.com/repos/GitCredentialManager/git-credential-manager/releases/latest | sed -n 's|.*\(https.*\.deb\).*|\1|p')
curl -Lo gcm.deb "$url"
sudo dpkg -i gcm.deb

# original code error
sudo mv /usr/local/share/gcm-core/Release/* /usr/local/share/gcm-core/
git-credential-manager-core configure
mkdir -p ~/.config/git
cd ..
