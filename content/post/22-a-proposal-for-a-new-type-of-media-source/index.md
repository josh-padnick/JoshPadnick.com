---
title: "A Proposal for a new type of media source 'True News'"
date: 2016-11-25T00:00:00-07:00
draft: false
categories:
- capitalism
- general
- lessons learned
- social dynamics

---
The November 2016 election has made me think about democracy, government, and our society in new ways for the first time in my life. One topic that seems to keep coming up is this idea of truth in the media.

I think most people would say they’d rather read news they know to be true than live in a fantasy world where they read news they like but which they know to be false. It’s basically an alternate take on the famous thought experiment, the [Experience Machine](https://en.wikipedia.org/wiki/Experience_machine), and comes to the same conclusion: truth matters.

In fact, truth may be the single-most important attribute of the news we read. And if you really start to think about it, truth becomes a really slippery concept.

<!--more-->

First, there’s a typical news article itself. Are all the factual claims in the article true? According to what source? Are there any material omissions from the article? Again, according to what source?

And what about the interpretation of the facts. Interpretation often involves creating a historical context, but is that an accurate reflection? Isn’t history itself often understood with controversy?

And if that’s not enough, think about which articles are presented the most prominently. Who made that decision? How?

The more you think about it, the more you realize that it takes many layers of fallible human decision-making to produce a single article that ultimately reaches a reader. One of the fallouts of the November 2016 election is that we as a society have a degraded level of trust in those media sources. The brand of a media source like CNN, The New York Times, or Fox News used to incorporate the degree (or perhaps lack thereof) of these biases while convincing ourselves that the facts themselves were never in question.

Well, now the facts are in question. And so is the interpretation element of an article. And so is the editorial decision making on which articles get the most prominence.

In other words, the news needs of today are no longer adequately served by the media sources of yesterday.

I am currently happily engaged as a co-founder of [Gruntwork](http://gruntwork.io/) where I get to be apolitical and help software teams more easily get their software out to the world by paving a road to a new and better paradigm of DevOps. So the idea I’m about to describe won’t see any effort by me on execution for quite some time. I write it here in the hopes that it inspires someone to do their own take on solving this problem. It’s a hard problem, but solutions start with an idea, so here’s mine.

I imagine a new format of news article that embraces our need for truth from inception. Let’s call such an article a “true news article.”

First, a true news article would clearly list all facts, and possibly even label them as such. Every single fact would be accompanied by a source. For example, in the recent New York Times Article [Trump Has Options for Undoing Obama’s Climate Legacy](http://www.nytimes.com/2016/11/25/science/donald-trump-obama-climate.html?ref=politics&_r=0), the article writes the following (bolding mine):

>*Mr. Trump, **who has claimed that global warming is a hoax**, said this week in an interview with The New York Times that he now saw “some connectivity” between humans and climate change, and that he would “keep an open mind” about whether to pull out of the Paris climate accord, as he threatened to do during the campaign.*

Putting my momentary melancholy about the content here aside, there’s a factual claim: “Donald Trump has claimed that global warming is a hoax.” But notice how it’s not substantiated here?

It turns out The New York Times got this from a [tweet](https://twitter.com/realdonaldtrump/status/265895292191248385?lang=en) Donald Trump made some 4 years ago. Wait, 4 years ago? Even I just made that connection about how old that tweet was. See how knowing all the facts changes your perception?

Facts could be a lot of different things:

* A tweet someone made
* A quote someone said
* Video someone recorded
* An event someone witnessed

See anything else interesting in this list? These “facts” have varying degrees of authoritativeness. A tweet someone made is a (presumably) indisputable record of their thought at a point in time. But an event someone witnessed is at the mercy of an individual’s memory, and countless studies have shown that [false memories](http://science.time.com/2013/11/19/remember-that-no-you-dont-study-shows-false-memories-afflict-us-all/) are a real thing.

Then there’s primary facts — here’s the actual tweet — versus secondary facts — this non-true-news-format article claimed Fact X.

All this nuance is buried in the modern accepted format of modern prose we read in the newspaper. But given the environment we live in today, I for one, would like to parse these facts myself.

Ideally, a true news journalist would be responsible for assembling facts as a bulleted list, each with their respective source, but a computer algorithm could generate that list into an article written in traditional prose since most people probably prefer to read prose rather than bullet points for the news.

There’s one more interesting things about facts. Does the historical record ever change? Well, yes, it does. People delete tweets all the time. That means that it wouldn’t be enough for a true news article to link to the original tweet, because the original author of that tweet could at any time take that tweet down.

So now we have another nuance of facts: historical record. Ideally, the true news article would link directly to the real tweet. But should that author delete the tweet, true news should have already captured the tweet, perhaps as a screenshot on twitter, and saved it in its archives.

Now, a fact comes from a “deleted tweet” and the reader would have to trust that True News has faithfully recorded it. There are technological solutions to this. For example, Twitter could publish a hash that allows you to cryptographically verify that a tweet was posted on Twitter, not just Photoshopped to look that way.

Ok, so that’s facts. The second and final piece of a true news article is interpretation.

Interpretation is valuable. I don’t read the news full time so knowing the historical background on something, and knowing the context are valuable so that I can interpret new facts.

Let’s again use The New York Times as an example. This time, I’ll quote an excerpt from [Ford Move, Cited as Victory by Trump, Has No Effect on U.S. Jobs](http://www.nytimes.com/2016/11/19/business/ford-move-cited-as-victory-by-trump-has-no-effect-on-us-jobs.html). First, I’ll quote the fact directly, which the article doesn’t do until the 10th paragraph:

Now the article adds some additional facts and gives me the following interpretation:

>Ford had never said it was moving a plant to Mexico, only that it was transferring the production of a small Lincoln sport utility vehicle there so it could fully dedicate a Louisville plant to a larger-selling model.

>That decision has now been reversed — but either way, it will have no impact on jobs at the factory. The plant is already operating virtually around the clock at full capacity.

First, here’s another interesting type of fact: “Ford has never said X.” That seems hard to prove and easy to refute! It suggests there’s a need for true news to allow “fact refutations” by the general public given credible sources.

Second, the article draws an important conclusion for me: … either way, it will have no impact on jobs at the factory. So according to this interpretation, our President-elect is basically twisting the facts and presenting a non-issue as a victory!

Is there another interpretation to this? I’m open-minded to know, but again we hit a limitation of traditional journalism: an article tends to have just one author. So by default, we get just one interpretation on the relevant set of facts.

In a true news article, there would be at least one traditionally liberal and one traditionally conservative viewpoint on a given set of facts.

Furthermore, these viewpoints would be authored by named people, not a nameless editorial board. And further-furthermore, true news readers would be free to rate the viewpoints on certain traits:

* Does the viewpoint bring in relevant historical facts?
* Does the viewpoint omit material information?
* Does the author take great license with her conclusions?

I’m not sure what the actual traits would be, but the point is that true news needs to reflect interpretations from both the left and right, and those interpretations need to be “authoritative” for the majority of people of that political persuasion.

In fact, there could even be one interpretation from each major political group, even offensive ones. Though, I’d hate for True News to present a fringe viewpoint as “equally important” to a mainstream one…unless of course it did represent the mainstream…but how to decide that? And who gets to review a viewpoint?

Internet trolls would abound in this kind of setup, so perhaps reviewers need to be verified by name, phone number, and email, and publicly declare themselves to be representatives of a particular viewpoint themselves. And perhaps even the reviewers need to be accountable to other reviewers!

Writing all this out makes me realize just how much mess and nuance gets lost in a single, even well-written piece of journalism.

More importantly, it makes me realize that in today’s world, yesterday’s format no longer cuts it.

As one final thought, like I said before, I don’t plan on putting any time into this concept beyond writing this blog post. So it would be awesome if someone felt inspired by this and ran with it. Thanks for reading.