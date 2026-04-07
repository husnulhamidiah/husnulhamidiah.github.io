---
title: "How to Install Xposed on Nexus 5x (Oreo)"
date: 2018-05-12T17:20:22+07:00
author: "Husnul Anwari"
draft: false
---

## Introduction

After installing TWRP and rooted my nexus 5x last week, the first thing that pops into my head is installing Xposed Framework. If you don't know what is Xposed Framework, here what brief explanation as on its official website.

> Xposed is a framework for modules that can change the behavior of the system and apps without touching any APKs. Xposed gives developers the ability to modify pretty much whatever they want—mostly aimed at individual applications but even system-wide features can be modified.

In short, it's a tool to do awesome things on your phone that you can't do with regular Android.

In this post, I will share my story about how to install Xposed framework on Nexus 5x. All steps in this post are quite generic, it may be working on any device as long as it meets the requirements.

## Prerequisites

Before installing Xposed framework, make sure your Nexus 5x is rooted and already have TWRP or another custom recovery installed on it. You can read my previous [blog post]() about how to do it.

Next, you need to download these files and then put both of them into your internal storage if your phone.

1. [Xposed framework](https://dl-xda.xposed.info/framework/) - For Oreo, SDK26 is Android 8.0 and SDK27 is Android 8.1. Pick arm64 and latest version.
2. [Xposed installer](https://forum.xda-developers.com/showthread.php?t=3034811) - The latest installer is v3.15.

## Step 1 - Installing Xposed

1. Turn off your phone. While it off, press and hold power button + volume down simultaneously to boot into recovery mode.
2. Use the volume key to scroll and power button to select **Reboot Recovery** to boot into recovery mode (TWRP).
3. Inside TWRP, enter install menu.
4. Navigate to where you put **xposed-v90-sdk27-arm64-beta3.zip** on your internal storage and select it. The file may have a different name, depends on what version you download.
5. Swipe install.
6. Once you've installed Xposed you'll have an option to wipe cache/dalvik and an option to reboot the system. Wipe the cache/dalvik, hit the back button and hit the reboot system button.
7. After reboot, open file explorer on your phone and navigate to where you put **XposedInstaller_3.1.5.apk** and install it.
8. Reboot your phone for convenience. That's it.

**Note**: If you prompt from SuperSU asking for root permission, just tap allow.

Now you should have an app called Xposed in your nexus 5x. You can install Xposed modules to tweak your nexus 5x as you wish. I will write about the best Xposed modules for nexus 5x, but for now, just let's call it a day.