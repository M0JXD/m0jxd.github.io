---
title: PlayStation PSIO Switchboard Install
description: Installing the PSIO switchboard in a PlayStation.
created: "Tuesday, 12 May 2026"
---

# {{ title }}

You might have seen on the [gaming page](/gaming) that we found an old PlayStation in the garage. While we do have some discs that I play in our PSOne (the slim model that can't be fitted with this), the PSIO is a very neat loading solution I'd seen about and fancied trying. I will sadly admit this is a knockoff kit from Aliexpress. The developers of the _real_ PSIO do a great job and much more arguably deserve my money, but I'm a cheapskate and it's not a small price difference between them, and their sign up requirement even for the basic install documents puts me off. I understand the reasoning to do it, but it's not a very community spirited thing to do.

For whatever reason the Aliexpress seller sends two switchboards? They're exactly the same so I'm unsure why that is, but I guess I can modify another console now should I want to.

![](/img/psio-install/before-start.jpg)

The usual disassembly ensues...

![](/img/psio-install/disassemble-1.jpg)
![](/img/psio-install/disassemble-2.jpg)

Despite the installation manual stating that the board should have tape, it didn't (probably because it's just the original manual). Guess you're expected to use your own:

![](/img/psio-install/pcb-needs-tape.jpg)
![](/img/psio-install/stuck-down.jpg)

Now on to the fun part! First up was cutting the trace to the parallel port's pin five, and then adding the enable wire:

![](/img/psio-install/cut-pin5-track.jpg)
![](/img/psio-install/enable-soldered.jpg)

Next the CD signals that it needs to reroute. I'd realised by now that my little maginifier wasn't cutting it, so out rolled the Andonstar microscope to aid with the job!

![](/img/psio-install/cd-signals-traces.jpg)
![](/img/psio-install/cd-signals-soldered.jpg)

A couple of other wires up to the parallel port:

![](/img/psio-install/other-parallel-pins.jpg)

And finally the XE/XI signals and power lines:

![](/img/psio-install/x-signals-mask.jpg)
![](/img/psio-install/x-and-power-soldered.jpg)

At this point I checked over and assembled the console to find that it didn't work. Turns out that the protection diode added in the Aliexpress version drops too much voltage for the switchboard to actually work, so the common solution as stated in the reviews is to bypass it entirely:

![](/img/psio-install/pointless-protection-diode.jpg)

Before fully reassembling again I tested PSIO loading (the disc loading still works too), they'd already put some games on the card (cheeky!).

![](/img/psio-install/testing-1.jpg)
![](/img/psio-install/testing-2.jpg)

Now time to sit back and enjoy some games! Tank Racer is an undeniable classic in our house 🙂.

![](/img/psio-install/bit-of-tank-racer.jpg)
