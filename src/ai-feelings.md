---
title: My feelings on AI
description: M0JXD's incoherent ramblings on AI technology.
---

# {{ title }}

I have many complicated feelings on AI that I'm hoping to articulate here. I'm not really done working through and articulating it yet so this page is an incoherent mess. I'm also aware many people do not care or want to see my opinions on this technology. Hence you'll only find it via the sitemap.

I think my internal turmoil stems from an a conflict of my geeky/nerd side being in amazement, saying "Holy crap! Computers can do this now?!" and my artistic side crying despair saying "Holy crap? Computers can do this now?!".

I appreciate the soul of things, with the hard work and talent required to make something truly beautiful. I really feel using AI takes away from that. As such I have made a point to use it infrequently.

I also don't agree with the sentiment of "you have to use it or you'll get left behind". The whole point is to be able to talk to it like you would another human. Look how annoyed everyone gets when a new release comes out and all the prompting techniques they've refined go down the trash. From my perspective, it's more important to get good at socialising and expressing your ideas *to other people*. As AI progresses, the ability to do that will naturally work when prompting the machines that are designed to understand you in this manner. Despite saying this thought, good communication one of my weaknesses - I am simply not a very social person!

AI has consistently made mistakes for me. I'm a junior and arguably mediocre developer and all things considered (not that I want to be, I'm always aiming to improve!). While I did ask ChatGPT and Gemini to help me with some of the weird oddities with the CSS on this site (the footer and aligning the sitemap link), it took a while before we got there and the reality was that its constant mistakes required me to learn enough that I was nearly doing it myself anyways. I asked Gemini to try and fix the image scaling before I ended up scrapping it's long over-bloated solution that wasn't quite right to one that works how I wanted in 20 lines.

Another example is when ChatGPT generated syntactically incorrect C code for the IUP GUI I was drafting for Axe-FX II loader. Runtime bugs are one thing, but making code that won't even compile due to syntax errors is another. Many pro-AI people say "it never makes a syntax errors", well let me tell you, PhD level smart ChatGPT 5.1 [most certainly did, you can see even the syntax highlighting goes haywire!](https://chatgpt.com/share/691b851f-0dc8-8001-83e1-f58034df940f). I was so annoyed and disguted with the AI that the README included this:

> ## AI Usage
> 
> I want to be clear and transparent about my AI usage. Often I see projects that the developer claims is their own work, when in fact they merely prompted it into existence. I like programming and am hoping to become good enough to be employed doing it full time, so I want anyone reviewing my work to understand what I'm actually capable of. Prior projects of mine (the Flutter & old CLI version, the morse trainer etc.) make very minimal usage of AI.
> 
> ChatGPT was used in the earlier stages of building the IUP GUI, but after it generated code with [the wrong attributes and even a syntax error](https://chatgpt.com/share/691b851f-0dc8-8001-83e1-f58034df940f) I completely lost faith in using the technology, and when reading back through the code found many places even a mediocre programmer like myself was able to improve (it often resorted to fixing sizes instead of using IUPs layout engine to it's advantage). Hence from the commit "Rewrite ChatGPT's dodgy layout code" I have done mostly everything myself, but even a Google search gives AI overviews these days.
> 
> As oppose to a code generator I find AI useful as a suped up Google search (and occasionally it surprises me, e.g. I tried to build the UI on Windows and it worked out from the very unclear error message that the problem is that IUP's pre-compiled MinGW (MSVCRT) binaries don't work with the UCRT environment, which I simply could not find an answer to with Google), and I make a genuine effort to truly understand what it gives me.

Frankly, I'm quite capable of making my own terrible code, I don't need a computer to write it. If the AI writes something wrong, I then have to spend ages trying to read the code (which as we all know is harder than writing code) to then be able to fix it. If I write it, then by nature I've already read it and debugging goes quicker.

I think are people are overhyping AI so much. Yes, so we saw that Linus Torvalds vibe coded last week. Did you see what was actually vibe coded though? It's a 600 line Python script using Matplotlib to display data the same way the AI has seen it done many times in it's training data. The real good stuff, the audio effects, was done without AI's help.

I don't know if it's truly related to the AI explosion, but I feel there's been a general decline in software quality over the last few years. More internet/services outages than I remember previously, and my experience with Windows 11 has been terrible compared it's predecessors.

## An old draft reply

This is an old drafted reply to a conversation I was having on a popular online forum that I never posted, where the original poster proclaims to be a senior engineer who is using AI a lot in their job, with in-house AI's etc. and is convinced anyone not adapting to the technology will, quite frankly, get left behind. With some determination you can probably find the original post. I want to pull what I'm trying to say here into the page, but for now I've dumped it here for my own reference as I get this page fixed up, and also because even without context it sums up a lot of my complex feelings very well. BTW, I'm now not long turned 25.

---

Note when you say "fix that"... this is the exact sort of thing this article alludes to. In another comment you mentioned your probably older than most people here, so you clearly have experience to spot the mistakes the AI is making. A junior likely doesn't. None of what you said changes the copyright problem either, accidentally having GPL in your codebase is a big deal.

Regardless, I gotta be honest, I've been having a bit of an existential crisis about AI. I'm 24, so the potential for change in my lifetime is huge. What will my life look like in the next 5, 10, 20 and 50 years time? (with some optimism lifespans will have gone up by then, and with some pessimism also retirement ages).

Look back 50 years from now - in the 70s we had the early Intel processors like the 4004, C was a fledgling language. We're still using C and the x86 architectures. From the 80s/90s we've come a long way, but then again so much is still the same that old foundational books like K&R and "The Art Of Electronics" continue to be considered a definitive books of the industry.

But ChatGPT came out less than three years ago, and since then AI has completely changed the game in many fields. Usually a technology disrupts one area, maybe spreading to others over the course of a decade. But programming, the arts, writing (both creative and not), translators and various other fields are all feeling the pressure from what is a very recent technological development.

At the moment though I'm safe - as you said in another comment, the free stuff that's not tailored/trained such as CoPilot sucks.

My company doesn't have an in house AI, and they sure as hell don't want me entering our code into one of the free ones. Would it improve things to have one? Probably, but it's not my call to make. They seem pretty happy for me to keep doing as I am, and AFAIK the business is doing well. My manager isn't exactly up to date on new developments, he'd never even heard of Rust until I mentioned I was learning it a few months back - and given it's the only language other than C that's been allowed into the Linux kernel I thought Rust was a bloomin big deal. Then again, for our projects there's not even good C++ tooling. Retooling and retraining is a big investment so I doubt it's with any urgency we'll have an in house AI.

Still, I have to worry about AI's impact throughout my life though. Short term, if I lose my job getting hired as a Junior sucks. I'm very lucky to have got my job, so I'm taking every opportunity to do things in a involved way and avoiding shortcuts to maximise my learning and skills for my employer and myself. That way I can stand out both internally and, if SHTF, as a candidate for another job. Then again, plenty of software is showing up where we require experienced devs - the biggest anti-testament to AI in it's current quality from my perspective is clearly Zed - a company backed AI centric code editor (they most definitely have in house AI's) that has had "Windows is coming soon" for a LONG time, and suffers 150GB memory leaks, written in apparently fully safe Rust?!

Long term - well programming will likely be defunct. AI will get better, and anyone who could communicate an idea to an engineer could communicate it to an AI. All language, no code. "And when everyone's super, no one is."

So what will I and the millions of other people in my situation do? Personally, I could easily pivot to Electrical as it was part of my qualification - but I'd hate it, and let's face it it's a stop gap measure until a robot can do it, which likely will happen in my lifetime. What jobs won't be taken? The end goal is to make a better than human intelligence after all. Gotta pray for a UBI singularity.

I don't want to live in an AI world. I'm seeing the beginnings of the dead internet already. In a few years time it'll be impossible to discern human from chatbot, at some point there will probably be hyper-realistic humanoid robots walking the streets. What the fuck will real be?

The one hope I have is that there will always be an appreciation for humanity, stuff that gets done thanks to dedication, blood, sweat and tears. Quite frankly, I don't want or like AI art, music, code and other *AI stuff*, and other's don't too. I can see a market for "#humanmade" in the future. In a post "singularity" world I guarantee there will be many a project not using AI simply because it robs the fun of doing it yourself.
