---
title: "My Thoughts from DockerCon 2016"
date: 2016-06-21T00:00:00-07:00
draft: false
categories:
- aws
- software

---
I just finished attending [DockerCon 2016](http://2016.dockercon.com/), and overall it was a pretty useful conference! I like to summarize what I learned both for my own mental clarity, and so others can benefit. So here we go.

**How Many Different Ways Can You Deploy a Production Container Cluster?**

I love Docker as a format for deploying things, but oh my gosh, how many different options are there for deploying it?

If you’re looking for “Heroku for Containers”, Docker has a pretty nice offering called Docker Cloud that seems really good. But once you’re ready to manage your own infrastructure, well, there was a long list to consider.
<!--more-->

There was Amazon’s EC2 Container Service (ECS), Google’s Kubernetes, Mesos + Mesosphere, and to a lesser extent Docker Swarm. At the conference, I met a bunch of commercial options as well like Apcera, Rancher (they have both open source and commercial options), RedHat, and a few others.

I keep using the past tense because then Docker announced that it was building in “Orchestration” features to Docker 1.12. Basically, this means that the Docker client itself can be used to easily bootstrap a pretty good container cluster.

It uses Docker’s Swarm clustering tech under the hood, so I’ll this cluster a “Swarm Cluster.” Swarm Cluster is running [etcd](https://github.com/coreos/etcd) under the hood and makes it really easy to get a cluster bootstrapped. Some of the nodes in Swarm cluster are “management nodes” and will be responsible for issuing private keys so that each node can cryptographically identify itself as the node it claims to be, as attested to by one of the management nodes when it first joined the cluster.

It also includes built-in container scheduling and scaling, and includes automatic restart, automatic failover if a node fails, and lots of other goodies.

It looks like a really good solution, and since it’s more of an assembly of existing technologies rather than some ground-breaking new technology, I think it’ll probably be ready for production-grade infrastructure relatively soon, in about 3 – 6 months.

It’s technically superior to Amazon’s ECS (even though ECS is good enough for 80% of teams), it’s about 1,000x easier to setup than Mesos, and since it’s built in to the Docker client, getting a cluster bootstrapped with it looks straightforward. Exhibit A: There’s only a single binary to download!

**Docker for AWS**

Docker also realized that even with all the goodies they just announced, it’s still hard to deploy everything in actual public cloud provider. So that’s why they released [Docker for AWS](https://blog.docker.com/2016/06/docker-datacenter-aws-azure-cloud/).

This is basically just a link to an AWS CloudFormation template that provisions Docker Datacenter, which is their paid product for managing containers at scale. It’s a good idea and makes sense, but of course you might need to customize what they’ve done, so I see it more as a reference point rather than a plug-and-play kind of thing.

**Docker’s Business Model: Still an Open Question**

I love Docker the technology, but still wonder about their business model. So far, they earn money from Docker Cloud (their “Heroku for Containers”), and Docker Datacenter (their option for running a container cluster), but I’m sure they’re still not profitable yet.

All the Docker Orchestration stuff they announced is all free, and their Docker Datacenter stuff is really just the UI, a very nice Docker Registry, and support that sits on top of that.

So…what’s the end game here? I suspect they’re just focused on building up the Docker ecosystem as much as possible so that Docker is the de-facto standard for running containers, which it mostly already is. But I still don’t see how they get to capitalize on that long term?

**General Industry Trend #1: Declarative Policies for Running Stuff**

One thing I saw a lot of were commercial services that let you declare some kind of security policy — e.g. the “Latte” service should only be deployed by Users A, B, and C; or Docker Image X should only be allowed to scale to a certain number of nodes — and then building tooling around enforcing those policies.

What I hate is that it seems like just to get some policy enforcement you have to sign up for a whole new commercial platform, which sucks. So this feels more like a feature of some bigger picture tool.

**Trend #2: Expose Infrastructure Operations Panels to Different Stakeholders**

SysAdmins should be able to see everything going on in your infrastructure. Dev’s should be able to see only things that pertain to their app. Non-technical people should be able to provision infrastructure as part of their job without worrying about breaking anything.

No great tool exists to provide all this, but I heard lots of people requesting this and a few companies (IMO doing a poor job of) providing this.

**Trend #3: Streamlined Dev Environments**

People have already been using Docker for a while to streamline dev environment setup, but it’s gotten really good now.

I saw a demo that involved using a Docker Compose file to launch a complete dev environment that allowed local editing on your editor of choice and even debugging, despite that your code was running in a container.

Also, [Docker for Mac](https://www.docker.com/products/docker#/mac) is now mature enough that it’s just a few weeks from stable release, and it’s really easy to use. This means to get a new developer up and running, things can be as simple as:

* Download Docker for Mac or Windows
* Run “docker-compose up”

I remember taking a week to get someone set up. A few minutes is pretty awesome.

**Trend #4: Running Some Datastores in Docker**

It seems like it’s finally becoming possible to run a limited set of stateful services in Docker. Would I run Postgres or MySQL in a cluster of Docker containers for prod usage? Hell no.

But would I run Elasticsearch or Couchbase, or any other eventually consistent database that is built to handle node failures. With a healthy dose of paranoia, yes.

There are still weird issues here. For example,Couchbase tries to see how much CPU it has access to by querying for the number of underlying cores, and it turns out that this query, when run from a Docker container, reports the host’s cores, not the container’s allocated cores.

But these issues are small, non-critical, and increasingly documented. So, it still takes time to figure out how to administer your cluster and Docker won’t “just make it work,” but I think it’s a compelling way to run your workloads, and, in the right situation, I would strongly consider it.

**Trend #5: Nascent Consolidation**

Finally, all new industries start out highly fragmented and eventually consolidate. It’s just what happens in capitalism. People want the power of the innovations that have come out but with a minimum of overhead to use them. A few strong players emerge with the most compelling solutions, acquire or out-compete lesser players and the industry consolidates.

The “container management” industry hasn’t started doing that yet, but you can see the seeds being sown for that kind of trend.

I have a feeling that in 3 years, there’ll be a handful of options to choose from for running containers:

* The Amazon Way
* The Google Way
* The Docker Way (Azure actually pushes you to Docker’s Paid Product)

I suspect all the commercial container managers will fade away or be acquired for their clients.

There’s also a lot of companies that focus on one piece of the Docker puzzle:

* Setup a Docker network
* Setup portable Docker volumes
* Etc.

It seems like plug-and-play is something people like in the industry, but I suspect only a small number of high-quality plugins will rise to the top.

Amazon is really behind with ECS compared to Google and Docker, so I’m expecting that at re:Invent this year they’ll announce some updates. After all, running containers easily in Amazon just makes you more likely to use their platform, so it’s kind of a no-brainer.

**Summing Up**

Thanks for reading. There’s a lot more to share around insights I had around microservices, new product ideas, an easy approach to A/B testing, book recommendations and more, but I tried to limit this to the important, big-picture stuff.

It will be interesting as always to see where things go from here!