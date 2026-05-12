---
title: BSD Adventures
description: Ongoing fun porting things to FreeBSD
created: "Wednesday, 11 March 2026"
---

# {{ title }}

The BSD OSes have some very appealing qualities to me. Delivered as complete systems, beautifully documented, preferable licensing and true derivatives of an early Unix implementation, while still sworn on using C for the core aspects as every good OS seems to do. And the dang cool mascot Beastie!
Long term (and by that I mean probably 10 years time), I'm hoping to be able to run FreeBSD as my main personal desktop OS. However while moving from Windows to Linux was a bit of a learning curve, moving to FreeBSD asks to remove even more home comforts. So I'm very slowly doing what I can to close the gap on what I need BSD to be.

While nearly all the software I use is in FreeBSD's ports, some need a bit more help. To start, my favourite code editor had an issue with [find and replace](https://github.com/orbitalquark/textadept/issues/676) due to Clang's boolean return values being interpreted oddly by GTK. That was a fun bug hunt!

But by far the biggest hurdle preventing me from truly diving into BSD is music software. The main killer feature I need in my workflow is the ability to do "handsfree looped multitakes". Back when I had a Mac, this feature in Garageband is the drug I didn't know I needed. I'd previously struggled to find software that does this in Linux too, I only found three FLOSS applications that could. Ardour unfortunately just couldn't get on with, and Qtractor works but is so MIDI focused. Eventually I tried the very lightly crafted and modular [Non DAW](https://non.tuxfamily.org/) which felt very focused on the features I needed.

Eventually I caved on _needing_ a FLOSS tool and now I'm a happy REAPER user. I really like REAPER as using a professional, popular and cross platform DAW is really important to me, as I need to know that if I head into a studio or start collaborating with others, the software I use works. Yet at this time, FreeBSD is not a platform REAPER supports natively. There has been some luck using the Linux emulation, but there is always caveats. While I wait for BSD to be popular enough to warrant support by major DAW developers, I'll try and bridge the gap so FreeBSD becomes ever more viable and the workflows I need at least exist.

First up I needed to get my music gear working, namely my trusty Axe-FX II. [Thankfully that went quite well](/axeii-loader/#:~:text=Update%2013%2F02%2F26%20%2D%20Porting%20to%20FreeBSD) but UAC2 devices are definitely not perfect quite yet, as there's a seriously delay before recording starts when using it in Audacity via OSS, and JACK outright fails. Thankfully my Scarlett 2i2 works flawlessly. Here's a picture of me running FreeBSD on my netbook for testing and development, I was pretty amazed at how nippy it was compared to Debian and Windows 7 that it had been using before.

![](/img/bsd-on-netbook.jpg)

I wrote a [script for Audacity](https://github.com/M0JXD/audacity-multitake) to handle the "looped multitakes" feature. I had thought previously about maybe diving into Audacity's code to integrate it with the the new looped selection feature, but with the move to v4 they're discouraging contributions right now and that also demands signing a CLA. The script is stupidly simple, but better than nothing and works on FreeBSD.

I've also initially started work on porting the [Non](https://github.com/Stazed/non-mixer-xt/pull/61) [forks](https://github.com/Stazed/non-timeline-xt/pull/12), and the maintainers of it and related projects have been very enthusiastic and helpful on my mission, far outdoing my initial measly patches!
