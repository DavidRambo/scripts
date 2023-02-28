#!/usr/bin/python3
"""Script to check for specific USB devices that are enabled to wake the
computer from suspend and then disable them.
The setting is in '/sys/bus/usb/devices/{device number}/power/wakeup'
The 'wakeup' text file reads either 'enabled' or 'disabled'.
I want it to read 'disabled' for my mouse and keyboard to avoid
accidental wakeups.
This is especially a problem with wireless mice.

Since the device number can change between system reboots,
I need to adjust which text file is modified.
The following values identify the peripherals I want to disable from waking
the system.

Logitech USB Receiver for wireless mouse:
idVendor: 046d

OLKB Preonic keyboard
idVendor: 03a8

foostan Corne keyboard
idVendor: 4653

Boardsource Lulu
idVendor: 4273
"""
from glob import glob
import os

# I could implement a dict: [{'LG': '046d\n'}, {'Preonic': '03a8\n'}] etc.
# This script checks for the presence of these values in the 'idVendor' text
# file: '/sys/bus/usb/devices/{device number}/idVendor'.
# It stores that device number to then rewrite its './power/wakeup' file
# to 'disabled'.

# I could also program it to accept an argument that indicates a new idVendor.


# idVendor values for USB peripherals
# include the newline code b/c that is included in the text file
vendor_ids = ["046d", "03a8", "4653", "4273"]

dirs_list = glob("/sys/bus/usb/devices/*/")

for directory in dirs_list:
    # create filename path for ease of readability
    vendor_path = directory + "idVendor"

    # ensure that 'idVendor' file exists
    if os.path.isfile(vendor_path):
        # read each idVendor text file and check for presence of vendor id
        with open(vendor_path, "r") as vendor:
            # read the first line, which contains the vendor id
            vendor_id = vendor.readline()

            # Check if the output of 'directory/idVendor' is in vendor_ids
            if vendor_id.rstrip() in vendor_ids:
                # then proceed to change 'directory/power/wakeup' to 'disabled'
                wakeup_path = directory + "power/wakeup"
                with open(wakeup_path, "w") as wakeup:
                    wakeup.write("disabled")
                    print(f"Rewrote {wakeup_path}")
