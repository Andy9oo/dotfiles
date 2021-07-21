# Dotfiles

## Installation
First install the regolith ayu-mirage look
```sh
sudo apt install regolith-look-ayu-mirage
``` 

Install i3xrocks packages
```sh
sudo apt install i3xrocks-bluetooth i3xrocks-wifi i3xrocks-battery i3xrocks-rofication i3xrocks-time
```

After cloning the repo, use the following command to create sym-links in the config directory

```sh
cp -r --symbolic-link --remove-destination /home/andrew/dotfiles/.* /home/andrew/
```

## Laptop Fixes

Install alsa-tools

```sh
$ sudo apt install alsa-tools-gui
```

Open `hdajackretask`

## Notes
- fish needs to be installed first
- including omf 
- maybe create a script to do that
- ssh key needs to be added to github as well