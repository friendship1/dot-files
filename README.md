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
- ~~teams PWA (start with login / turn on notification)~~ (my installation include ms teams as flatpak now)
- ~~vmware install [vmware17.0 url](https://customerconnect.vmware.com/en/downloads/info/slug/desktop_end_user_computing/vmware_workstation_player/17_0)~~
- vmware acquired by braodcom... [vmware workstation pro 17.5.2 url](https://softwareupdate.vmware.com/cds/vmw-desktop/ws/17.5.2/23775571/linux/core/) (might be blocked)
  - Download Windows ISO [link](https://www.microsoft.com/software-download/windows11) (to many downloads could be banned)
    - 8Core 8GB
  - login as windows account
  - ISO remove
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
- or firefox
  - TST, vimium
  - [hide tab](https://superuser.com/questions/1424478/can-i-hide-native-tabs-at-the-top-of-firefox)
- geary login and sync (only google account) 
  - if cannot login at 23.04 use `WEBKIT_DISABLE_COMPOSITING_MODE=1 gnome-control-center` [link](https://askubuntu.com/questions/1222378/cant-login-into-google-in-online-accounts-section/1467164#1467164?newreg=f006ccf8ba884133af4f3e695aca378f)
- zotero login and sync 
- vscode login and sync settings
- login discord
- login tictick
- setting autostart app
  - geary `geary`
  - ticktick `flatpak run com.ticktick.TickTick`
  - ~~startup imwheel `imwheel -b "4 5"`~~ (it has bug on 23.04, when scroll vertically with shift)
- YouTubeMusic PWA
- install zim [url](https://launchpad.net/~jaap.karssenberg/+archive/ubuntu/zim) [url2](https://zim-wiki.org/downloads.html)
  - `sudo add-apt-repository 'deb http://ppa.launchpadcontent.net/jaap.karssenberg/zim/ubuntu kinetic main'` (because there is no 23.04 support right now...)
- install gnome-extension
  - [clipboard-history](https://extensions.gnome.org/extension/4839/clipboard-history/)
  - [alttab-scroll-workround](https://extensions.gnome.org/extension/5282/alttab-scroll-workaround/?c=145434)
- change sshd port [after 22.10](https://askubuntu.com/questions/1439461/ssh-default-port-not-changing-ubuntu-22-10)
- install mathpix appimage [link](https://mathpix.com/docs/snip/linux-overview) (keep file position)
