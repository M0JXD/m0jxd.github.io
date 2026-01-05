---
title: ValveWizard Arduino Analyser Plotter
---

# {{ title }}

Valves are wonderful things. You tell me there's nothing but some metal suspended in a glass vacuum, you heat some of it up and it becomes an active component?! How awesome is that?! Silicon never had this level of cool factor. But alas, such primitive design comes at a cost, and valves have a great level of variability in their characteristics.

As such I gained interest in the idea of building some kind of Valve Tester. After a very good experience reading Merlin Blencowe's book *"Designing Tube Preamps for Guitar and Bass"* I found his Arduino based design on his site. He mentioned on the site that a plotting application would be very nice, and feeling inspired I decided to give it a shot.

However, this is one of my first foray's into programming, and to call it rough around the edges is an understatement.
I made the app in Processing. At the time, I chose Processing due to it's heavy recommendation in *"Getting Started with Arduino"*, so I knew it's serial library would be guaranteed to work.

I was quite determined not to have to change Merlin's source code - an amateur mistake in retrospective. I did make a reduced "test sketch" that would fake good reads to flash to an Arduino so I could test plotting and curves. I wanted to make a plotter app ahead of building the real thing, the intention being that it would spur me on to build it.

![](/img/valve-tracer.png)

I still haven't built a Valve Tester, and it's now a good four years later! Making time for doing actual building has dropped of my radar these days. Nonetheless it was a very valuable learning experience and I remember scratching my head trying to make things work as a very amateur programmer in the days before AI could spot your stupid mistakes a mile off.

Not long after finishing it, I discovered another developer had made a much nicer app with Qt (although at the moment it's only for Windows), so my app feels a little defunct. I doubt mine worked on the real thing anyway!
