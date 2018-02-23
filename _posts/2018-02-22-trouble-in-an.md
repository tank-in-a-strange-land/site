---
date: 2018-02-22 22:53:43 -0700
title: Trouble in Azjul-Nerub
---
Cordolvar continues to slum in Classic dungeons before deciding that spiders really hate him.

## Quick Stats

|-----------------|-------------------|-------|
|                 | Since Last Update | Total |
|-----------------|-------------------|-------|
| Deaths          | 5 (+ 3[^1])       | 31    |
| Dungeons Tanked | 1 (+ 5[^2])       | 59    |
| Levels Gained   | 2                 | 62    |
|-----------------|-------------------|-------|


## Progress Made

Cordolvar started out in Sunken Temple, running it with a guildmate. The run was as smooth as butter. Having now advanced to level 61, Cordolvar could no longer use the Dungeon Finder to queue for Classic dungeons, so he bid farewell to his guildmate (for now) and set off for Northrend and the Nexus.

The Nexus didn't go as smoothly. The party wiped twice on [Grand Magus Telestra](http://www.wowdb.com/npcs/26731-grand-magus-telestra), during which the healer healed the party's Death Knight DPS player far more than they healed Cordolvar. So when the healer complained in `/group`, I pointed this fact out, and we then cleared the rest of the instance easily. I can't be sure, but I suspect that the healer didn't notice that Cordolvar was the tank. I guess it's an easy enough mistake to make when you see a DK use their [Death Grip](http://www.wowdb.com/spells/49576-death-grip) power.

Afterwards, Cordolvar rolled the dice one more time, and the dice came up Azjol-Nerub. After a reasonably clean fight on the [Gatewatcher](http://www.wowdb.com/npcs/28684-krikthir-the-gatewatcher), the party advanced to [Hadronox](http://www.wowdb.com/npcs/28921-hadronox), which is where the trouble started. On the first pull, we fought valiantly in a frantic and long battle but eventually we were overwhelmed by spiders. I thought the fight was far more hectic than I remembered from other characters. After the second hectic fight and eventual wipe, I started asking if anyone else knew the mechanics and if I was making any mistakes. We decided to try to blitz Hadronox faster, but with the same result.

It was after our third wipe that the party kicked Cordolvar. I whispered the healer to thank him having done an excellent job, not expecting a reply. Instead we chatted for a few minutes about how neither of us could remember the fight's mechanics, and how he didn't think I was to blame for the group's failure. While we chatted, I checked the comments on wowhead.com and found:

> This boss is now a complete pain with 7.3.5 buffing her. There are a couple things you need to remember during this encounter. First, if you pull too early (before she comes up the ramp completely), she may bug and not web the doors, which means adds will not stop spawning.
>
> -- Kanariya <http://www.wowhead.com/npc=28921/hadronox#comments:id=2553890>

Sure enough, and the healer confirmed, one of the DPS had pulled the boss early in our first two attempts (in the third we all blitzed the boss together). This perfectly explained why the fights were so frantic---it was because the adds just kept pouring in. So I believe we were the victims of this bug.
I should have been angrier about getting kicked, but I really wasn't. I knew I was doing my best, and I'm glad to have found that it was a bugged encounter.

## Random Notes

* &#x1f44d; Cordolvar upgraded his boots.
* &#x1f44e; Cordolvar died. A lot.

This was overall a bad session, despite having a great start. After the disastrous <abbr title="Azjol-Nerub">AN</abbr> run, I still had some time, so I tried out a few things with Cordolvar's UI. I'm looking forward to having another shot at Hadronox though.

### UI Modifications

I've removed Kui Nameplates. I also played with a few options for my player and target unit frames, but in the end, didn't find anything I particularly liked. I'm now closer to stock than I was, but that's not necessarily a bad thing. I wish Shadowed Unit Frames had a means of anchoring the player unit frame to the Personal Resource Display (PRD), and then not showing the Personal Resource Display (basically, I'd like to style the PRD), but this isn't supported. Weak Auras can anchor to the PRD, but if the PRD is disabled, the auras lose their anchoring, i.e. they don't move with your view. Kui Nameplates can change the size and colors of the PRD, but not do the kind of things I really want. I think I want my target unit frame to be closer to the center of my screen, but anchored to the PRD. I think I can build something with Weak Auras, but I need more time to think about just what I want. Also, it's a lot of work to make a weak aura that displays all the things a standard unit frame can do easily.

{% include powers.md %}

#### Footnotes

[^1]: Somewhere along the way I missed a few deaths, this number is now accurate, according to the API, which I'll use for this number from now on.
[^2]: Just as I missed a few deaths, I've missed a few dungeons. I'll use the APIs values from here on.
