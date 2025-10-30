<img width="837" height="331" alt="Twitter post - 1 (1)" src="https://github.com/user-attachments/assets/941b6808-afba-48c6-9c9b-f68a67f19050" />

# mirr0ing, lightweight Android screen mirroring tool via ADB. Simple, fast, no bullshit.

## features

realtime screen mirroring, minimal latency, lightweight (200mb~), works with usb or wi-fi, and fast startup :]

## requirements

adb, ffplay (from ffmpeg package), any android device with debugging feature

## code edits

if you want change window size or quality, just edit screen.bat

## recommended settings for window size:

```
-x 432 -y 864    # small (default)
-x 540 -y 1080   # medium
-x 648 -y 1296   # large
```

## recommended settings for quality change:

```
--bit-rate=2000000   # Low (2 Mbps)
--bit-rate=6000000   # High (6 Mbps, default)
--bit-rate=8000000   # Ultra (8 Mbps)
```
