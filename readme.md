# Dotfiles

## Installation
First install the regolith ayu-mirage look
```sh
sudo apt install regolith-look-ayu-mirage
``` 

Set the theme 
```sh
echo "#include \"/etc/regolith/styles/ayu-mirage/root\"" > .Xresources-regolith
```

Install i3xrocks packages
```sh
sudo apt install i3xrocks-bluetooth i3xrocks-wifi i3xrocks-battery i3xrocks-rofication i3xrocks-time
```

After cloning the repo, use the following command to create sym-links in the config directory

```sh
cp -r --symbolic-link /home/andrew/dotfiles/* /home/andrew/.config/
```
