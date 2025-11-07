#!/bin/sh -e
BASEADDR="0000:08:00"

# disable driver auto-probe
echo 0 > "/sys/bus/pci/devices/$BASEADDR.0/sriov_drivers_autoprobe"
echo 0 > "/sys/bus/pci/devices/$BASEADDR.1/sriov_drivers_autoprobe"

# enable 7 vf instances
echo 32 > "/sys/bus/pci/devices/$BASEADDR.0/sriov_numvfs"
echo 32 > "/sys/bus/pci/devices/$BASEADDR.1/sriov_numvfs"
