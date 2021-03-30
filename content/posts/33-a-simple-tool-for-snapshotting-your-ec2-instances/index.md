---
title: "A Simple Tool for Snapshotting Your EC2 Instances"
date: 2015-06-18T00:00:00-07:00
draft: false
categories:
- aws
- software

---
**TL;DR**

I wrote a simple tool that makes it easy to create an AMI of your EC2 instance, and then to delete all AMI’s older than X days/hours/minutes with a single command. Check it out at https://github.com/josh-padnick/ec2-snapper.

This works especially well for backing up WordPress blogs hosted on a single instance in AWS.

**Full Post**

There are many ways to do backups in AWS. One of them is creating an Amazon Machine Image (AMI) of your EC2 Instance so that you have a moment-in-time backup which you can use to launch a new EC2 instance in minutes.

It’s not the world’s most robust backup method. First, in order to guarantee that your file system is consistent at the moment of your snapshot, you have to agree to reboot your instance. Second, if you’re backing up data where even a few minutes of data loss is a big deal, this solution isn’t for you.

But sometimes it’s actually the best solution.
<!--more-->

The website you’re reading right now is running on a single t2.small instance, and for my needs, using AMIs as backups works great. I have a little cron job that runs nightly to create an AMI of the whole site (without rebooting). My “Recovery Point Objective” (how much data loss I can sustain) is about 24 hours, and my “Recovery Time Objective” (how quickly I want to be back online in the event of an outage) is minutes, so the AMI is a great solution for my needs.

Since I’m running WordPress, there are lots of backup plugins for WordPress, but rarely have I seen such a horrendous security model as in the WordPress plugin system, and recovering my site from a WordPress backup seems like a pretty miserable way to spend a few hours.

I’m happy with my AMI backups, but the one snag with all of this is how to delete AMIs from, say, 30 days ago. I don’t really need long-term backup on my blog. I just want a backup every 24 hours, and then I need maybe a week’s worth of backups.

But AWS makes it a total pain to do this manually. First, deleting AMIs is a cumbersome two-step process where you have to manually locate the EBS Snapshot that corresponds to your AMI. Second, there’s no way to tell AWS to delete all AMIs older than X days.

So, I wrote a little tool to help me accomplish this, and I call it ec2-snapper. You can view the source code and download a working binary for Windows, Linux, or OS X at https://github.com/josh-padnick/ec2-snapper.

It’s my first time writing in Golang, but I found Go and the AWS SDK for Go pretty nice to work with. It’s a simple tool. Nothing ground breaking here. But it made life easier for me, and hopefully does the same for you.