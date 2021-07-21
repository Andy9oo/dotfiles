# Dotfiles

## Setup
First install the `fish` shell
```sh
$ sudo apt install fish
$ chsh -s /usr/bin/fish
$ curl -L https://get.oh-my.fish | fish
```

Once `fish` has been installed, run the setup script

```sh
$ ./setup.sh
```

This will install all programs, create folders, and copy the configs from this repo.

## Laptop Fixes

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