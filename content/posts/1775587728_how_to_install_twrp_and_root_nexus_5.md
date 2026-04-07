---
title: "How to Install TWRP and Root Nexus 5x"
date: 2018-05-08T14:20:43+07:00
author: "Husnul Anwari"
draft: false
---

## Disclaimer

> These have all been tested BUT install TWRP and root at your own risk! I am **NOT** responsible for anything that may happen to your device. Your device warranty is now void.

## Introduction

This month I got my Frankenstein nexus 5x back (I will tell the story behind all of this later) since my previous phone was lost. Everything works fine with this phone, it already updated to April 2018 security patch. I install Evie launcher, some productivity apps, and a couple games.

But it's a Nexus phone, it wouldn't cool if I use as it is. So, I decided to install TWRP and root my phone to see if there are some awesome things I can do with the power of root.

In this post, I will share my story, in case you want to root your nexus 5x too. Let's begin, shall we?

## Prerequisites

Before we begin, you'll need some tools and files to work with.

1. First, you need a working adb/fastboot environment on your computer. Below is an option — the easiest way to install adb/fastboot on a mac. If you are using Linux or windows you can follow guides on this [post](https://www.xda-developers.com/install-adb-windows-macos-linux/).

    ```bash
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

    ```bash
    brew cask install android-platform-tools
    ```

2. Make sure adb is correctly installed by issuing this command `adb version`

3. Enable USB debugging on your device. Connect your device to your computer with a USB cable. In a terminal enter the `adb devices` command to launch adb daemon

    On your phone screen, you should see a prompt to allow or deny USB debugging access. Just tap **OK**. Tap always allow from this computer if you never want to see this prompt again.

    Finally, re-enter command `adb devices`, you should now see your device's serial number. Yay!

4. Download latest [TWRP Recovery](https://dl.twrp.me/bullhead/) onto your PC.
5. Download [SuperSU Stable](https://forum.xda-developers.com/showthread.php?t=1538053)  or [SuperSU Service Release (beta)](https://forum.xda-developers.com/apps/supersu/2014-09-02-supersu-v2-05-t2868133) onto your PC.
6. **Important!** Put your freshly downloaded SuperSU file into your phone internal storage. You'll need it later.

## Step 1 — Unlock Your Bootloader

1. Connect your device to your computer via USB cable.
2. Check your device by issuing this command, you should see your device listed in your terminal.

    ```sh
    adb devices
    ```

3. Use the following command to boot into bootloader.

    ```sh
    adb reboot bootloader
    ```

4. You can test fastboot connection by issuing following command.

    ```sh
    fastboot devices
    ```

    It should return your device serial number, if not you need to make sure your drivers are installed correctly.

5. Once you've confirmed your fastboot connection issue this command. **This will erase all your data from device**.

    ```sh
    fastboot OEM unlock.
    ```

6. You should now see a screen on your phone asking you to confirm this action, use the volume keys to scroll and the power key to confirm if you're sure you want to go ahead.
7. Allow the process to complete and then issue this command.

    ```sh
    fastboot reboot
    ```

## Step 2 — Install TWRP Recovery

1. Boot to bootloader using `adb reboot bootloader` command.
2. Flash TWRP Recovery file you just downloaded by issuing this command.

    ```sh
    fastboot flash recovery twrp-3.2.1-0-bullhead.img
    ```

    The recovery filename may be different from yours depending on which version you download.
3. Use the volume key to scroll and power button to select the **Reboot Bootloader** option. Once your phone has booted back into bootloader, use the volume key and power button, select **Reboot Recovery** to boot into your newly flashed TWRP recovery.

    NOTE: If you see a dead android with no command — just press the power button, while holding power button press power up once. This should bring you into the recovery.

    ANOTHER NOTE: Up to this point, **if you want to root your phone, don't reboot your phone and proceed to the next step directly**. Otherwise, TWRP recovery will disappear and back to stock recovery on next reboot.

## Step 3 — Install SuperSU

1. While in recovery mode (TWRP), enter the install menu.
2. Navigate to where you put SuperSU file on your internal storage and select it.
3. Swipe install.
4. Once you've installed SuperSU you'll have an option to wipe cache/dalvik and an option to reboot the system. Wipe the cache/dalvik, hit the back button and hit the reboot system button.
5. Go to Play Store and install SuperSU app. That's it.

## Conclusion

Now my Nexus 5x and probably yours already rooted. It's time to explore root-only apps like Xposed and others.