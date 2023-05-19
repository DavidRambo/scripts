#!/bin/bash
# Undervolt nVidia RTX 3080ti
# Afterwards, run +100 to clock speed through Green With Envy

# set persistent
nvidia-smi -pm 1

# set power limit to 225W
nvidia-smi -i 0 -pl 225

# limit clock speeds to min 200 and max 1785
nvidia-smi -i 0 -lgc 200,1785

# frequency offset
# nvidia-settings -a '[gpu:0]/GPUGraphicsClockOffset[4]=100' -a '[gpu:0]/GPUGraphicsClockOffset[3]=100' -a '[gpu:0]/GPUGraphicsClockOffset[2]=100'
