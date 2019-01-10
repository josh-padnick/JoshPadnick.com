---
title: "Ally Bank. I Hardly Knew Ye."
date: 2014-09-10T00:00:00-07:00
draft: false
categories:
- software
- lessons learned

---
This is my review of my first couple of weeks with Ally Bank, and why I ultimately decided to stay with stodgy, old Chase.

{{< imgproc "images/ALLY_Bank_withRegistration.jpg" Fit "400x500" />}}

When I was 16 years old, I went with my Mom to a local Bank One branch to open my own personal checking account. Bank One eventually got acquired by Chase, and so I’ve effectively been a Chase customer for more than half my life!

But it’s been a love-hate relationship. On the positive side, it seems that no matter where in the United States I am, I’m always less than 3 miles from a Chase branch, so it’s definitely convenient. I also don’t worry about Chase failing so it seems like a safe place to keep my family’s money. Their iPhone app is actually pretty good, especially the ability to remotely deposit checks.

But on the downside, I often get a “big bank” feel from them, mostly owing to the fact that I don’t really have a personal relationship with anyone there. I find I’m usually just engaging the “Chase Infrastructure” rather than contacting a specific person I know.
<!-- more -->

A few months ago, I noticed a $20/month fee started appearing in my account. This was puzzling because I didn’t make any account changes, and my average daily balance had either stayed the same or increased. That $20/fee is still being charged but it’s just small enough money that I’m too lazy to call up, inquire, complain, make changes, etc.

So I decided to invest my energy in trying out a new bank. After all, it’s 2014! Do banks even need branches anymore? Surely, there have been some major disruptions in the space.

**Meet Ally Bank**

After googling around for a while, I eventually concluded that Ally Bank was the embodiment of the new banking paradigm.  At least from their website.

I was excited by this:
{{< imgproc "images/Screen-Shot-2014-09-06-at-12.26.18-PM.png" Fit "400x500" />}}

Ah, they’re exactly addressing my problem.  Transparency in fees!  Digging a little deeper I also saw these exciting benefits:

* No minimum balance to open an account so I can open multiple accounts to track money more intuitively.
* I can use any ATM in the country for free. Ally charges nothing and will reimburse me any other fees.
* I’ll get dramatically higher interest rates on liquid savings (1.0% APY, which while still pitiful as an annual rate of return, is still better than Chase’s 0.1% APY for liquid savings.)
At the end of the day I decided (1) no fees, plus (2) lots of accounts so I can more intuitively divide my money, plus (3) no ATM fees, plus (4) higher interest rate on liquid savings made this a go.  The next step was a trial run.

**The Disillusionment Begins**

I began doing my research, and stumbled on some [encouraging reviews](https://www.creditkarma.com/reviews/banking/single/id/ally-bank2), and then the [slaughterhouse of reviews](https://www.depositaccounts.com/banks/reviews/ally-bank.html).

But then I noticed the negative reviews tended to concentrate around 2010 – 2013 and were sometimes user error.  But they were often legitimate, too.  The most striking thing about them was that people who were negative were often enraged because they felt they couldn’t get access to their money when they needed it.  And really, what else is a bank for, if not to safely store your money?

I looked on LinkedIn and discovered I had a connection in common with a senior member of the Ally Bank management team.  So I inquired about this person with our shared connection and she reported that:

*“He is a fantastic guy (and I don’t say that about all my former colleagues…). He is a very smart, solid, salt of the earth type of person. Him – I would certainly trust with my money.”*

Just one data point, but a positive data point given his position.  The next step was to dip my toes in the water.  So I opened one checking account, and two savings accounts (all free!) and deposited $400 between them.

And thusly I encountered **Issue #1, that access to your checking account funds is not always easy or predictable**.  I opened my account on August 30, the money was available there on September 4, but I didn’t receive my welcome kit in the mail until September 9, so, unless I chose to transfer this money out of Ally — which would also have a delay of a few days — for an uncomfortable 1.5 weeks, I didn’t really have access to these funds.

On the positive side, I could write my own personal labels for each accounts, so I experimented with this and found it quite pleasing:



But I couldn’t actually access these funds 🙁

Next, I had a $100 check I wanted to deposit, and thusly I encountered **Issue #2, that the IT side still needs some work**.  I used the Ally iPhone App, which, as a modern bank, should be the centerpiece of their customer experience, right?

On the positive side, they seem to have some great security procedures in place.  I had to login, get a text or email with a security code since this was a new device, and answer multiple security questions.  I appreciate the extra security with my bank.

But, here my professional software engineering background clued me into some bad smells.  First, it appears that Ally is using a native app that sometimes uses native components and sometimes wraps HTML. I don’t mind this strategy, except that the app was not very touch-responsive (a delay of 2 – 3 seconds between tapping an account and viewing its contents).

One of the most troubling things was that I could see some information on the app…

{{< imgproc "images/ally-bank-iphone-app.png" Fit "400x500" />}}

that simply wasn’t available on the online site!

The online site doesn’t anywhere show “scheduled” activity, so there’s no indication at all there that I ever made an eDeposit.  Contrast that with stodgy, old Chase where my eDeposits are reflected online and on iPhone within seconds.

The other issue that’s concerning about that online check deposit is the schedule of when those funds are available.  And thusly, we have **issue #3, that you don’t get access to new deposits as quickly.**

Indeed, according to their website…

{{< imgproc "images/Screen-Shot-2014-09-06-at-1.13.49-PM.png" Fit "400x500" />}}

Since almost every check is not from Ally Bank, that means I get $200 the next business day (which is reasonable), but $4800 two business days later, and more than $5,000 after 5 business days.  Yuck!

Again, stodgy old Chase wins out.  Chase limits the amount of of online deposits I can do far more than Ally…

{{< imgproc "images/Screen-Shot-2014-09-06-at-1.20.05-PM-1024x1871.png" Fit "400x500" />}}

But they have a physical branch I can walk into if I need to deposit more, so I’m covered either way.

In fairness to Ally, they do process ACH transfers from other banks (which has no amount limits) within 3 business days, and wire transfers the next business day.  But for personal matters, I’m usually only dealing with direct deposits or personal checks, so using Ally effectively delays access to my money by a few days.

This is an interesting point because it’s rare that I actually need the money I’m depositing right away, but psychologically, I just hate the idea that I have a waiting period.

It also starts to raise other interesting points which thusly introduced me to issue **#4, that Ally requires that you really think ahead about when you’ll need to draw on your account**.  Suppose I need a cashier’s check to close on a mortgage or some other event?  Ally will issue a cashier’s check for free, but I had better give them 7 days notice.  Versus Chase where I can walk in and get it immediately (free on some account types, a small fee on other account types).

Or suppose I need cash?  Ally will let me withdraw up to $1,000/day from an ATM, but that’s it.  With a traditional bank, I can withdraw any reasonable amount.

Ally also issues one debit card per account, with a $5,000 per day spending limit (no issues there). But from talking with the Ally Customer Support person (who was very helpful, actually), this is a very basic debit card.  You don’t get any of the typical benefits of using a credit card like a prepaid loss collision damage waiver when renting a car, extended warranty, etc.  And if you’re in a situation where you dispute the transaction, I got the impression that you will experience a lot more pain resolving this with an Ally debit card purchase than with a typical credit card.

While speaking with the customer service rep, I also asked her what she personally does for her own personal banking.  She explained that she uses both Ally and Wells Fargo. “Why keep your Wells Fargo account?” I asked.  “In case I ever need emergency access to funds for whatever reason.”

**Other Gotcha’s**

There was one other disappointment, too.  Those free ATM transactions? Actually, you’ll be reimbursed at the end of your statement period, not right away.  Again, it’s peanuts, less than $10/month on loan for usually less than 20 days, but it just feels irksome.

**Summing Up**

So there you have it.  In the end, I concluded that Ally Bank and pure online banks are a great concept in theory, but I don’t quite think they’re ready for primetime.

With banking, your IT has to be rock solid, and access to funds has to be as soon as possible.  After all, you are in the business of providing safe access to money so those things should be your core competency!  I really disliked the idea that I was trading fees transparency and small peanuts in interest for less peace of mind on my family’s money.

One thing I did discover, though, was now nice it is to have intuitively named accounts like “primary checking” and “short-term savings”.  Chase doesn’t provide that simple feature, but I’m sure I can make it work with Mint.com, or just train myself that account 1234 = primary checking.

This is actually part of a more general thought process I’ve been having lately on how I want to just build a habit for managing money so my day-to-day habits and routines serve my long-term goals.  In other words, I want my money management on auto-pilot.  I’ve been having other thoughts lately about how to manage this, and will share them here if I come up with anything good.
