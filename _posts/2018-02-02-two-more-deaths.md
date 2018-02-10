---
title: Two More Deaths
date: 2018-02-02 18:45 -0700
---
Only managed three dungeons last night. I continued to tweak my UI modifications. I also died. Twice. I'm not happy about this.

## Quick Stats

|-----------------|-------------------|-------|
|                 | Since Last Update | Total |
|-----------------|------------------:|------:|
| Deaths          | 2                 | 6     |
| Dungeons Tanked | 3                 | 20.5  |
| Levels Gained   | 3                 | 35    |
|-----------------|-------------------|-------|

## Progress Made

First up was Scarlet Monastery, where I joined a group in progress (uh oh, that's never a good sign), and then I found out why when the healer fell asleep and we wiped on the trash leading up to Brother Korloff. "I had a LOS issue", the healer said. I seem to [really have trouble with Brother Korloff]({% post_url 2018-01-31-quick-runs %}#progress-made). Then the healer pulled Korloff early, along with half the guys surrounding him. I died about twenty seconds in, and the party wiped again. "They must have changed the encounter." the healer said. Ah well. We all make mistakes. Compared to this run, the other two runs (one Gnomeregan [Cordolvar's first full run there], and one Razorfen Kraul) were cakewalks, if a bit slow in the burn down the boss department. A bit slow is actually good for me at this point, it gives me more time to practice my rotation, practice my [situational awareness checklist](/situation-awareness-checklist), and generally get comfortable with things.

## Random Notes

* &#x1f44d; Got upgrades for my boots and belt.
* &#x1f44e; Still haven't managed even a short session without dying.
* &#x1f44d; The [Shield Slam][shield-slam] passive is very nice!

### UI Modifications

I've switched from Tidy Plates: Threat Plates to Kui Nameplates. So far I like <abbr title="Kui Nameplates">KNP</abbr> better, at least out of the box, it's less distracting. I still had to change a bunch of colors though. KNP for example uses grey for interruptible spell casts, and a rose color for uninterruptible ones. That's backwards to me, though I'm not sure why. Isn't there a grey shield on the cast bar for non-interruptible spells in the default UI? Maybe I should double check that.

I also tried using some darker colors for threat plates when I have aggro, but I went too dark (I think I did 50/0/50), so I lightened those up a little.

My [Shield Slam](http://www.wowdb.com/spells/23922-shield-slam) weak aura now overlaps with the default spell alert triggered by the [Shield Slam][shield-slam-rank-2] passive power. Since you can't turn off individual spell alerts in the stock UI, I'll have to compile a list of other spell alerts and reimplement them in Weak Auras. Maybe I can find something on [wago.io](https://wago.io) to get me started.

{% include powers.md %}
