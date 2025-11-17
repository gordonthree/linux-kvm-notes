# linux-kvm-notes
Notes and configurations for KVM virtualization in Linux

# some modules to blacklist
* blacklist-iwlmvm.conf
* blacklist-iwlwifi.conf
* blacklist-nouveau.conf
* blacklist-snd_hda_intel.conf


# create network bridge in NetworkManager
Get info about the current connection:
``nmcli con show``

Add a new bridge:
``nmcli con add type bridge ifname br0``

Create a slave interface:
``nmcli con add type bridge-slave ifname eno1 master br0``

Configure IP settings for the bridge:
``nmcli con edit bridge-br0``

Turn on br0:
``nmcli con up br0``
