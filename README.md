# Eaglercraft 1.13 Project
- Currently this is a fork of the 1.8 repository but will have 1.9 files as I start updating...

![EaglercraftX 1.8 Screenshot Main Menu](https://media.discordapp.net/attachments/1042594789943689327/1057655404454223932/eaglerx-480p.png)

## ATTENTION MOJANG/MICROSOFT EMPLOYEE ASSIGNED TO STALK ME:

### THIS REPOSITORY DOES NOT CONTAIN YOUR INTELLECTUAL PROPERTY

### FILING A FALSE DMCA IS ILLEGAL AND IMMORAL

### This repository WILL contains:

 - **Utilities to decompile Minecraft 1.9 and apply patch files to it**
 - **Source code to provide the LWJGL keyboard, mouse, and OpenGL APIs in a browser**
 - **Source code for an OpenGL 1.3 emulator built on top of WebGL 2.0**
 - **Patch files to mod the Minecraft 1.9 source code to make it browser compatible**
 - **Browser-modified portions of Minecraft 1.9's open-source dependencies**
 - **Plugins for Minecraft servers to allow the eagler client to connect to them**

### This repository WILL NOT contain:

 - **Any portion of the decompiled Minecraft 1.8 source code or resources**
 - **Any portion of Mod Coder Pack and it's config files**
 - **Data that can be used alone to reconstruct portions of the game's source code**
 - **Code configured by default to allow users to play without owning a copy of Minecraft**


## Making a Server:

**EaglercraftX 1.8's server is a BungeeCord/Waterfall PLUGIN, not an entire "fork" of bungeecord like the 1.5 Eaglerbungee was, and I can't believe I have to clarify this too but the EaglerXBungee 1.8 plugin is not compatible with the old 1.5 bungee, you must migrate to the latest version of official BungeeCord/Waterfall to use it**

Simply set up the latest version of BungeeCord or Waterfall and download [EaglerXBungee-Latest.jar](https://gitlab.com/lax1dude/eaglercraftx-1.8/-/raw/main/gateway/EaglercraftXBungee/EaglerXBungee-Latest.jar) and place it in the plugins directory.

Then to actually log in to the server with Eaglercraft, first join your server using vanilla Minecraft Java Edition 1.8 and run the new `/eagler` command to set a password. Then leave the server and switch to your EaglercraftX client. 

Set your EaglercraftX username to the same username as the vanilla minecraft account you set the password with, then when you try to join your server it will present you with a login screen where you can enter the password you set. If the password is correct it will let you join the server.

**NOTE: If you set `online_mode` to `false` on BungeeCord/Waterfall's config.yml, the password system will be disabled and you will be able to join with any username without setting a password like Eaglercraft 1.5. This should only ever be used for testing.**

A config guide will be added here too eventually

## Contributing:

https://discord.gg/GMhmEWrr5d

## Developing a Client:

To be determined
