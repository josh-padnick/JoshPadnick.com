---
title: "Play Framework + Docker + CircleCI + AWS + EC2 Container Service"
date: 2015-11-11T00:00:00-07:00
draft: false
categories:
- aws
- software
- presentations
---
I was invited to speak earlier tonight at [the Phoenix Java User’s Group](http://www.phxjug.org/) on Play Framework, DevOps, and AWS.

I decided to do a basic walkthrough of Play Framework, and to build a continuous deployment pipeline live as part of the presentation. I wanted to actually implement something so that (a) I would be forced to pick specific technologies I could talk about, and (b) I could talk about the real-world challenges of implementing something.

<!--more-->

I created 4 public GitHub repos to implement this:

* https://github.com/PhoenixDevOps/phxjug-ctr-base
* https://github.com/PhoenixDevOps/phxjug-ctr-base-play
* https://github.com/PhoenixDevOps/phxjug-play-framework-demo
* https://github.com/PhoenixDevOps/phxjug-ecs-cluster

Check out slide 36 for some directions on how to use all these items together, although I recognize the overall documentation may not be suitable for beginners since the presentation itself filled in the gaps in the slides. Enjoy!

{{< slideshare id="55026763" >}}