#!/bin/bash
cd "$(dirname "$0")"

sips -Z 1024 icon/icon.001.png --out iconStore.png
sips -Z 512  icon_t.png        --out iconStorePlay.png

sips -Z 29   icon/icon.001.png --out icon29.png
sips -Z 36   icon/icon.001.png --out icon36.png
sips -Z 40   icon/icon.001.png --out icon40.png
sips -Z 48   icon/icon.001.png --out icon48.png
sips -Z 50   icon/icon.001.png --out icon50.png
sips -Z 57   icon/icon.001.png --out icon57.png
sips -Z 58   icon/icon.001.png --out icon58.png
sips -Z 60   icon/icon.001.png --out icon60.png
sips -Z 64   icon/icon.001.png --out icon64.png
sips -Z 72   icon/icon.001.png --out icon72.png
sips -Z 76   icon/icon.001.png --out icon76.png
sips -Z 80   icon/icon.001.png --out icon80.png
sips -Z 87   icon/icon.001.png --out icon87.png
sips -Z 96   icon/icon.001.png --out icon96.png
sips -Z 100  icon/icon.001.png --out icon100.png
sips -Z 114  icon/icon.001.png --out icon114.png
sips -Z 120  icon/icon.001.png --out icon120.png
sips -Z 144  icon/icon.001.png --out icon144.png
sips -Z 152  icon/icon.001.png --out icon152.png
sips -Z 167  icon/icon.001.png --out icon167.png
sips -Z 180  icon/icon.001.png --out icon180.png
sips -Z 192  icon/icon.001.png --out icon192.png
sips -Z 320  icon/icon.001.png --out icon320.png


sips -Z 36   icon_t.png        --out icon_t36.png
sips -Z 48   icon_t.png        --out icon_t48.png
sips -Z 72   icon_t.png        --out icon_t72.png
sips -Z 96   icon_t.png        --out icon_t96.png
sips -Z 144  icon_t.png        --out icon_t144.png
sips -Z 192  icon_t.png        --out icon_t192.png


sips -Z 1024 icon/icon.001.png --out icon.png
sips -Z 200  icon/icon.001.png --out logo.png