#!/bin/bash
BASEADDR="0000:02:00"
#DEVID="10de 2184"

# unbind
echo $BASEADDR.0 > "/sys/bus/pci/devices/$BASEADDR.0/driver/unbind"
echo $BASEADDR.1 > "/sys/bus/pci/devices/$BASEADDR.1/driver/unbind"
echo $BASEADDR.2 > "/sys/bus/pci/devices/$BASEADDR.2/driver/unbind"
echo $BASEADDR.3 > "/sys/bus/pci/devices/$BASEADDR.3/driver/unbind"

# bind to vfio
#echo $DEVID      > /sys/bus/pci/drivers/vfio-pci/new_id
#echo $BASEADDR.0 > /sys/bus/pci/drivers/vfio-pci/bind
#echo $BASEADDR.1 > /sys/bus/pci/drivers/vfio-pci/bind
#echo $BASEADDR.2 > /sys/bus/pci/drivers/vfio-pci/bind
#echo $BASEADDR.3 > /sys/bus/pci/drivers/vfio-pci/bind
