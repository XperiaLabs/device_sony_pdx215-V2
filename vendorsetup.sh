#!/bin/bash

echo -e
echo 'Start Applying needed patches'
echo -e
echo 'Applying Dolby patch in frameworks/av'
echo -e
cd frameworks/av
git reset --hard FETCH_HEAD
echo -e
git am ../../device/sony/pdx215/configs/patches/frameworks_av/0001-Fixes-vtservice-cpu-hogging.patch
cd ../..
echo -e
echo 'Done applying'
echo -e
echo 'Continue'
