# Ubuntu Preferred Packages Playbook

> :warning: __Note:__
>
> This will install packages from `bionic` repositories.
> E.g.: Linux Mint 19, Ubuntu 18.04.
>
> For `xenial`, check out the `xenial` branch.

> :information_source: __Note:__ The _Thinkpad X1 Yoga Provisioning Playbook_ has moved [here](https://github.com/Redsandro/thinkpad-x1-yoga).

Download the repo:

```
git clone https://github.com/Redsandro/ansible-ubuntu-software /tmp/ansible-ubuntu-software
```

Get the latest `ansible`:

```
sudo apt-add-repository ppa:ansible/ansible
sudo apt update && sudo apt install ansible
```

Run playbook, skipping the packages you _don't_ want:

```
sudo env ANSIBLE_NOCOWS=1 ansible-playbook local.yml --skip-tags="firefox"
```

### Disclaimer

Use at your own risk. Inspect the source before using. Worst case scenario: Display manager failing. You might have to log into textmode and undo related things. Use at your own risk.

### Donate

__Ƀ__ `1Dj21fUCtt3RXBWuoJ2TpzAyNmh2BU5YSL`
