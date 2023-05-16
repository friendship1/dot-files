## Installation Guide
clone and run

```
make all
```
or 
```
make pre1 pre2
```

## Post make
### For Server
- ssh configuration
  - git ssh login setting
  - server ssh auth.
  - .ssh/config direct / VPN
- wireguard setting
  - go into jw@pi
- vim install plugin
  - `:PlugInstall`
  - `:UpdateRemotePlug`

### + For Desktop
- change to Xorg `sudo vim /etc/gdm3/custom.conf` uncomment wayland
  - Mathpix only supports Xorg
- korean language setting (ibus-setup, keyboard input)
- gnome-tweaks setting
  - tweaks change R_alt / R_ctrl to hangul / hanja
  - display second on tweaks
  - change mouse acceleration setting to adaptive
- teams PWA (start with login / turn on notification)
- vmware install [vmware17.0 url](https://customerconnect.vmware.com/en/downloads/info/slug/desktop_end_user_computing/vmware_workstation_player/17_0)
  - Download Windows ISO [link](https://www.microsoft.com/software-download/windows11) (to many downloads could be banned)
    - 8Core 8GB
  - login as windows account
  - ISO remove / Screen Setting
  - Update Window
  - Install VMware Tools
  - Install hangul & MS office
  - Install Kakaotalk
  - Install teams for work
  - Share insync folder (with network)
- install matlab (if need)
- edge
  - login and sync
  - search engine setting
  - vertical tab
- geary login and sync (only google account)
- zotero login and sync 
- vscode login and sync settings
- login discord
- login tictick
- setting autostart app
  - geary `geary`
  - ticktick `flatpak run com.ticktick.TickTick`
  - startup imwheel
- YouTubeMusic PWA
- install zim [url](https://launchpad.net/~jaap.karssenberg/+archive/ubuntu/zim) [url2](https://zim-wiki.org/downloads.html)
  - `sudo add-apt-repository 'deb http://ppa.launchpadcontent.net/jaap.karssenberg/zim/ubuntu kinetic main'` (because there is no 23.04 support right now...)
- install gnome-extension [clipboard-history](https://extensions.gnome.org/extension/4839/clipboard-history/)
- change sshd port [after 22.10](https://askubuntu.com/questions/1439461/ssh-default-port-not-changing-ubuntu-22-10)