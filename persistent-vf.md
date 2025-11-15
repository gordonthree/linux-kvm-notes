Make the Virtual Functions persistent

To make the Virtual Functions persistent across reboots, use the editor of your choice to create an udev rule similar to the following, where you specify the intended number of VFs (in this example, 2), up to the limit supported by the network interface card. In the following example, replace enp14s0f0 with the PF network device name(s) and adjust the value of ENV{ID_NET_DRIVER} to match the driver in use:

```
# vim /etc/udev/rules.d/enp14s0f0.rules

ACTION=="add", SUBSYSTEM=="net", ENV{ID_NET_DRIVER}=="ixgbe",
ATTR{device/sriov_numvfs}="2"
```

This will ensure the feature is enabled at boot-time.
