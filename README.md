dotfiles
========

This is really just a reference for me on setting up.

## Setup

Type in your favorite shell the following command:

```
git clone git@github.com:xmonraz/dotfiles.git
cd dotfiles
sh setup.sh
```


### Laptop

When using the laptop docked, update the power settings to prevent sleep when closing lid. Update: /etc/systemd/logind.conf

```
[Login]
HandleLidSwitchExternalPower=ignore
```
