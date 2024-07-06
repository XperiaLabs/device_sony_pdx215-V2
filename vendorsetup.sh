#!/bin/bash

echo -e
echo 'Started applying needed patches...'
echo -e
echo 'Applying Dolby patch in frameworks/av'
echo -e
cd frameworks/av
git reset --hard FETCH_HEAD
echo -e
git am ../../device/sony/pdx215/configs/patches/frameworks_av/0001-Fixes-vtservice-cpu-hogging.patch
cd ../..
echo -e
echo 'Done applying VTService patch!'
echo -e
echo 'Applying Dolby AC4 patch in frameworks/av'
echo -e
cd frameworks/av
echo -e
git am ../../device/sony/pdx215/configs/patches/frameworks_av/0002-Revert-OMX-Remove-support-for-prebuilt-ac4-decoder.patch
cd ../..
echo -e
echo 'Done applying AC4 Decoder patch!'
echo -e
