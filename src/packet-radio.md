---
title: Packet Radio
description: Running this website over packet radio with Dire Wolf, a NinoTNC and tncattach
created: "Friday, 24 April 2026"
---

# {{ title }}

For a long time I've wanted to make good use of the [NinoTNC](https://tarpn.net/t/nino-tnc/nino-tnc.html) and [AIOC](https://github.com/skuep/AIOC) that I'd built a while ago. There's a real resurgence happening in the UK for packet radio and it's good to be a part of it in a way.

What better way to do this than running this website over packet? Using [tncattach](https://github.com/markqvist/tncattach), I setup up two endpoints and used the npm package [http-server](https://github.com/http-party/http-server) to host on the NinoTNC side with my ever venerable Wouxun. The AIOC side used [Dire Wolf](https://github.com/wb2osz/direwolf) as the TNC, into one of the popular Quansheng handhelds. It was painfully slow, but very fun to see it working! 

![](/img/packet-radio/tncattach-server.jpg)
![](/img/packet-radio/tncattach-client.jpg)

I hope to have a go again at 9600 baud. I have a Tait TM8100, but need another radio that has the flat response to be 9600 capable, I think I'll modify a Quansheng.
I'd like to run a BPQ node too and properly join the UK packet network.
