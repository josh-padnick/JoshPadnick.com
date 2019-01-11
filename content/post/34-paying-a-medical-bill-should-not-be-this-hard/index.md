---
title: "Paying a Medical Bill Should Not Be This Hard"
date: 2013-11-24T00:00:00-07:00
draft: false
categories:
- general

---
When it comes to paying a medical bill, I’ve had a backwards experience.  As the founder of [Omedix](http://omedix.com/), I built software that’s collected tens of millions of dollars in healthcare bill payments, but I hardly ever paid any healthcare bills of my own.  I was under 30 and hardly went to the doctor!

Next month I turn 34 and I am fortunate that neither my wife nor I has any chronic medical issues, but now we go to the doctor for the usual annual checkups.  In 2013, our health visits amounted to:

* Annual well-checks with our primary care physician (PCP)
* The lab tests our PCP’s requested
* In her case, annual visit with an OB/GYN
* In my case, annual check up at the dermatologist (skin doctor)
* In my case, annual check up at the ophthalmologist (eye doctor)

Today, I’m about 4 hours in and almost done paying all the healthcare bills.  The experience has been…traumatizing.  First, multiple bills are sent for the same service, but with slight differences.  Second, our doctor tried to bill insurance, had the wrong info, sent us a bill for the full amount, was later informed the insurance was wrong, adjusted the bill, and sent an updated one.
<!--more-->

Let’s see what else: We got several bills from companies other than our doctor who did the actual lab results processing.  In one case, we got a bill from a routine lab test we had done nearly two years ago!  When I log in online to pay the bill, sometimes I can see my statement, sometimes not.  In some cases, the online system mysteriously says the bill is paid in full, despite no corresponding paper statement.

It’s also hard to trace which third-party bills trace to which original doctor visits.  Not all the statements have an invoice date, so it’s not always clear when it’s due.

I think worst of all, there are just so many different bills from so many different organizations — The visits listed above constituted around 15 total different statements — that it becomes confusing.  So I had to make a spreadsheet to make sure I didn’t overpay or underpay.

**Why It’s So Bad**

Since I actually work in Health IT, I know what some of the challenges are.  First, there’s significant fragmentation.  There are literally hundreds of different billing software systems used throughout the country, so it’s hard to create some kind of standardized solution that reads the data and presents it in a nice format.

All those different systems mean the format of the data is fragmented, and location of the data is distributed…all behind heterogeneous network environments under the management of different organizations.

Second, the fact that the customers doesn’t pay his own bill adds endless complexity.  Nope, in healthcare, I pay this middle man called the payor (i.e. the health insurance company) and he negotiates discounts on my behalf and pays all my bills for me.  He tells me that in some cases I have to pay a small amount upfront for a service (my copay), but in other cases he tells me to let the doctor bill him first, they’ll settle things, and then I’ll pay whatever’s left over.

It turns out that settling things can take months because he likes to play a lot of games with the doctors I go to.  For example, one time I got a check for $600 from him which I was supposed to just pass on directly to my doctor.  Why didn’t he pay the doctor himself?  Those are part of the games.

So, we’ve got (1) Technology and data fragmentation, and (2) High domain-specific complexity.  Those seem like solvable problems, don’t they?

**How It Should Be**

They’re challenging problems, but they are still solvable.  The way it should work is that I log in to one “portal” where I see all my healthcare bills.  That system should display all my bills in a highly streamlined format, and should be coordinated with what my insurance company has done so that I can get all available information on the doctor-payor games going on.

I should be able to arrange payment plans with those doctors that support that, or pay in full.  And I should be able to easily run reports on all payments since many of these payments are separately reimbursable.

For good measure, I’ll also throw in alerts via text, email, or voice that tell me when I have a new payment, and maybe even authorize me to pay it just by texting back, provided I’ve done the right authorizations through a secure channel.  Text messages aren’t secure, so I can approve a payment there, but I can’t set up a payment method.

**What’s Out There Today**

There are some solutions available that help doctors offer online bill payments.  This is what [Omedix](http://omedix.com/products/patient-portal/online-bill-pay/) does,  the solution works pretty well, and our customers are pretty happy with it.  In our case, we can do online bill pay as a standalone solution or part of the patient portal we offer.

Other patient portals usually offer online bill pay as well, usually with the option to view statements.  Those are the practice-centric solutions where the customer is the clinic and the end user is the patient.

There are some companies that are not patient portal vendors, but specialize in online patient payments.  [Salucro](http://salucro.com/) comes to mind.  [Googling this](https://www.google.com/search?q=online+patient+payment) reveals several other solutions.

There are also a handful of consumer-focused patient payment solutions.  The first solution that comes to mind is Simplee, which looks pretty well designed.  To solve the data fragmentation problem, they go right to your insurance company and get all the data the insurance company sees.

That’s one piece of the puzzle for sure, and in some cases they’ll go directly to the clinic’s billing system to reconcile the data, too.  But of course they only go to those clinics with whom they have an existing relationship.

Intuit also used to have a solution in this space.  They did a great job on the user experience, but they never addressed the data fragmentation problem since they signed up one clinic at a time.

**What the Future Holds**

I fancy myself a technologist.  I can’t get enough of technology, I love creating software, and it is incredibly fun to continue learning about the latest & greatest technologies — new software, new devices, new concepts, new paradigms — that will continue to come.

It is inevitable that a superior solution for this one segment of the healthcare experience — along with all others — will arrive.  And many of the technologies to make this happen are just now gaining maturity.

It will be a pleasure when I can go to the doctor and pay my bills by texting YES instead of spending 4 hours on a Sunday making sure I’m not being overbilled.
