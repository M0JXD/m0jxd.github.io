---
title: Axe-FX II Loader
---

# {{ title }}

I have mentioned I'm a guitar player, and despite being very much a "Guitar straight to Amp" kind of player, I always did love multi-effects processors for the sheer versatility they provide. I knew I wanted an Axe-FX unit and I finally treated myself to one. Whilst the unit is now responsible for some of the best tones I've ever achieved, it's a little disappointing that the world of music gear does not really support Linux users.

While Wine *sort of* worked, let's just say it was a poor experience. Also, a change to fxload meant that the udev rules installer script for the USB firmware had to be fixed. I realised that lot of the time I'm happy driving the unit from the front panel, and all I really wanted was a way to do the things that can't be done through that interface, which is only really loading/exporting files (which was broken when using Axe-Edit in Wine). A fair amount of the Axe-FX sysex messages are documented, so I decided that this is a doable thing.

I made my first start on the UI in Flutter, but quickly realised I needed to do some additional reverse engineering which would go faster with developing a CLI tool instead, and opted to use C and ALSA's RawMIDI protocol directly. I found Geert Bevin's ReceiveMIDI tool very handy for tracking the SYSEX messages that were sent by Fractal-Bot (Fractal Audio's official tool for transferring SYSEX files), and it was quite obvious to decode what they meant. A funny thing I found is that when I implemented the SYSEX checksum algorithm, -O2 optimisations would cause it to fail.

Once the CLI tool was up and running I returned to the Flutter version. While I did finish it (and it looks very nice!), overall it was a miserable failure. The main fail point was the MIDI package it relied on, it had become almost completely unmaintained. Whilst it would work in Debug mode, something about Dart's AOT release mode would cause it to struggle with re-connections, which was even evident using their example app. Now a few months later, the package will not even build against the latest Flutter. Also, Flutter's Textfield widget has slowdown issues on Linux Mint due to it's accessibility semantics, which can be worked around, but is a bit annoying.

![](/img/axe-loader/axeiiloader-flutter-light.jpg)

Disappointed, I took the original CLI tool I made and split it's core code into a library to use as the base of new UI, while also retaining a CLI frontend. 
I had gained a big appreciation for applications that look/feel native to the OS and are performant, and also wanted to continue using C (not C++).

With those constraints, there's only a handful of choices for the UI library. I settled on IUP over the others like GTK, NAppGUI, libui etc. for a small variety of reasons, and feel the app turned out very well in the end. Not long after finishing the first version, I had a lot of help from the user @Wepeell who tested and logged MIDI transfers with their XL+ unit, allowing me to implement support for them too.

![](/img/axe-loader/axeiiloader-native.jpg)
