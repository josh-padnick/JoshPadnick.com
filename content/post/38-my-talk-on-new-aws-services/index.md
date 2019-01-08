---
title: "My Talk on New AWS Services"
date: 2016-09-06T00:00:00-07:00
draft: false
categories:
- aws
- software

---
I recently gave a talk to the [AWS Phoenix Meetup](http://www.meetup.com/AWSArizona/events/233240781/) on three new services and updates from AWS: the Application Load Balancer (ALB), EC2 Container Service (ECS), and Kinesis Analytics.

More than half the software teams I meet today run Docker in production, so there was high interest in how you can use the ALB with an ECS cluster to have a more streamlined docker cluster setup.

Some important details I since learned that are worth mentioning:

1. The ALB’s costs scale with use. For example, if you have 1,000,000 idle web socket connections, you’ll pay $2,000/month! But presumably if you have 1,000,000 active users that kind of cost is ok. Thanks to [nivertech on Hacker News](https://news.ycombinator.com/item?id=12269453) for pointing this out.
1. The ALB currently has a [bug that impacts its ability to do zero-downtime deployments](https://forums.aws.amazon.com/thread.jspa?messageID=740335). Special credit to my colleague [Yevgeniy Brikman](http://www.gruntwork.io/#who-we-are) for discovering and reporting this!

Check out the presentation on the [Gruntwork Blog](https://blog.gruntwork.io/a-talk-on-the-new-aws-application-load-balancer-updates-to-ecs-and-kinesis-analytics-abb599cb3cb8#.4ulsz2m3g)!