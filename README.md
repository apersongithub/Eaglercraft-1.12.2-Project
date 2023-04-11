# Eaglercraft 1.12 Project
- This is currently a fork of the 1.12 repository but it will have 1.12 files as I start updating it...

![EaglercraftX 1.12 Screenshot Main Menu](https://media.discordapp.net/attachments/1042594789943689327/1057655404454223932/eaglerx-480p.png)

## ATTENTION MOJANG/MICROSOFT EMPLOYEE ASSIGNED TO STALK ME:

### THIS REPOSITORY DOES NOT CONTAIN YOUR INTELLECTUAL PROPERTY

### FILING A FALSE DMCA IS ILLEGAL AND IMMORAL

### This repository WILL contains:

 - **Utilities to decompile Minecraft 1.12 and apply patch files to it**
 - **Source code to provide the LWJGL keyboard, mouse, and OpenGL APIs in a browser**
 - **Source code for an OpenGL 1.3 emulator built on top of WebGL 2.0**
 - **Patch files to mod the Minecraft 1.12 source code to make it browser compatible**
 - **Browser-modified portions of Minecraft 1.12's open-source dependencies**
 - **Plugins for Minecraft servers to allow the eagler client to connect to them**

### This repository WILL NOT contain:

 - **Any portion of the decompiled Minecraft 1.12 source code or resources**
 - **Any portion of Mod Coder Pack and it's config files**
 - **Data that can be used alone to reconstruct portions of the game's source code**
 - **Code configured by default to allow users to play without owning a copy of Minecraft**


## Making a Server:

**EaglercraftX 1.12's server is a BungeeCord/Waterfall PLUGIN, not an entire "fork" of bungeecord like the 1.5 Eaglerbungee was, and I can't believe I have to clarify this too but the EaglerXBungee 1.12 plugin is not compatible with the old 1.5 bungee, you must migrate to the latest version of official BungeeCord/Waterfall to use it**

Simply set up the latest version of BungeeCord or Waterfall and download [EaglerXBungee-Latest.jar](https://gitlab.com/lax1dude/eaglercraftx-1.12/-/raw/main/gateway/EaglercraftXBungee/EaglerXBungee-Latest.jar) and place it in the plugins directory.

Then to actually log in to the server with Eaglercraft, first join your server using vanilla Minecraft Java Edition 1.12 and run the new `/eagler` command to set a password. Then leave the server and switch to your EaglercraftX client. 

Set your EaglercraftX username to the same username as the vanilla minecraft account you set the password with, then when you try to join your server it will present you with a login screen where you can enter the password you set. If the password is correct it will let you join the server.

**NOTE: If you set `online_mode` to `false` on BungeeCord/Waterfall's config.yml, the password system will be disabled and you will be able to join with any username without setting a password like Eaglercraft 1.5. This should only ever be used for testing.**

A config guide will be added here too eventually

## Contributing:
(If you want to contribute join this discord server)
~~https://discord.gg/GMhmEWrr5d~~
- ATTENTION: SOME IDIOT REPORTED THE DISCORD, SO WE CURRENTLY DO NOT HAVE A SERVER.
- DO NOT JOIN THE SERVER IF YOU WANT TO BOTHER THE TEAM OF DEVELOPERS.
- THE MORE PEOPLE WILLING TO HELP WILL BE A HUGE HELP AND WILL MAKE THIS PROJECT RELEASE SOONER THAN EXPECTED.

## Schedule:
- Right now we are working on decompiling 1.12
- After the client is finished we will consider adding voice chat.
## Developing a Client:

Currently in development by aperson and other people willing to help.
- About 3% done
- Expected release is near the end of July
##plans

1. Deeply examine EC's source code to get a glimpse of what we're dealing with
2. Use the EC's source code for help creating the 1.12 client
3. Get the source code for 1.12
4. Add opengl emulators and apis
5. Making it compatible for browsers

...
6. create a bungee server

----------------------------------------------------

Eaglercraft uses the decompiled source of the official version of Minecraft 1.12 from Mojang decompiled by MCP http://www.modcoderpack.com/ and compiled to Javascript using TeaVM https://teavm.org/. Therefore it can join any Minecraft 1.12 server, as it is really running (a modified version of) Minecraft 1.12 in the browser. However, due to CORS restrictions it must use a modified version of Bungeecord which proxies the browser's Websocket connection to the pure TCP connection used by Minecraft. For graphics, a custom compatibility layer created by me allows the fixed function OpenGL 1.3 based rendering engine mojang uses to operate through an HTML5 WebGL canvas with minimal changes to the source.
