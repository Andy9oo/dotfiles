# Dotfiles

## Setup
First install the `fish` shell
```sh
$ sudo apt install fish git curl
$ chsh -s /usr/bin/fish
$ curl -L https://get.oh-my.fish | fish
```

Once `fish` has been installed, clone the dotfiles repo: 
```sh
$ git clone git@github.com/Andy9oo/dotfiles ~/.dotfiles
```
and run the setup script

```sh
$ ~/.dotfiles/setup.sh
```

This will install all programs, create folders, and copy the configs from this repo.

## Laptop Fixes

### Fix "Dummy Output" / "No Codecs Found"
To fix the issue with "Dummy output" or "No Codecs Found" run the following two commands:

```sh
$ echo "options snd-hda-intel dmic_detect=0" | sudo tee -a /etc/modprobe.d/alsa-base.conf
$ echo "blacklist snd_soc_skl" | sudo tee -a /etc/modprobe.d/blacklist.conf
```

After this `reboot` and sound should be working.

### Fix Soundbar Issues

Install alsa-tools

```sh
$ sudo apt install alsa-tools-gui
```

Once installed perform the following steps:

1. Open `hdajackretask`
2. Tick "Show unconnected pins" in "Options"
3. Select "Realtek ALC298" under "Select a codec"
4. Set pin with ID 0x17 to "Override" with "Dock Headphone"
5. Click "Install boot override" 
6. reboot

Once finished uninstall `alsa-tools-gui`
```sh
$ sudo apt purge alsa-tools-gui
```

**_NOTE:_** The headphone jack will not working correctly with these settings enabled. If headphones are plugged in, run the following command and set the `<Speaker+L>` channel to 100%

```sh
$ alsa-mixer
```

## Regolith
First install the regolith ayu-mirage look
```sh
$ sudo apt install regolith-look-ayu-mirage
``` 

Install i3xrocks packages
```sh
$ sudo apt install i3xrocks-bluetooth i3xrocks-wifi i3xrocks-battery i3xrocks-rofication i3xrocks-time
```

To get high DPI scaling working correctly, also copy the `.profile` file. This will result in the screen beening scaled to 200%, which can then be scaled back to 150% using the following command:

```sh
$ xrandr --output $(xrandr | grep -w connected | awk '{print $1}') --scale 1.5x1.5
```

**_NOTE:_** This command will not work in `fish`
