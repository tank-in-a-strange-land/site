---
layout: page
title: "Weak Auras: Shield Slam"
permalink: /ui-mods/weak-auras/shield-slam
---
This page documents my setup for a [Shield Slam][shield-slam] Weak Aura that blends Blizzard's default Spell Alert with a Weak Aura to trigger every time Shield Slam is available.

## Introduction

When my warrior was first able to cast [Shield Slam][shield-slam], I set up a Weak Aura texture that triggered on cooldown and played a sound. All was good.

Later, my warrior learned [Shield Slam: Rank 2][shield-slam-rank-2]. Now in addition to the Weak Aura I had set up, there was a Blizzard Spell Alert which triggered when the cooldown on Shield Slam was reset. The two effects sometimes overlapped on my screen, and this sort of clutter is something I strive to remove from my UI. Something had to be done!

## Experiments

My goal was to have a single texture displayed and a sound played every time Shield Block came off of cooldown, regardless of whether the cooldown had expired or was reset.

My first thought was to disable the Blizzard Spell Alert for Shield Slam's cooldown being reset, since then my existing Weak Aura would be all I needed. Unfortunately, Blizzard's Spell Alerts are either all on, or all off. Turning them all off meant that I would have to re-implement them all in Weak Auras, which would have been fine, except that my warrior was still low-level, and would likely gain spells in the future that had their own Spell Alerts that I would never know about.

Next I explored whether Weak Auras could identify when a spell came off of cooldown via a reset, but I wasn't able to find anything. I generated a combat log and scanned through it, looking for events that might indicate whether the cooldown was reset, but without any luck.

## The Solution

Finally I stumbled onto a Status in Weak Auras called "Spell Activation Overlay Glow". This status is true for my Shield Slam button (ie it glows) only if its cooldown was reset.

With two triggers:

1. Status / Type: Action Usable / Spell: Shield Slam
1. Status / Type: Spell Activation Overlay Glow / Spell: Shield Slam

I was nearly there. What I still needed was the Weak Aura to display when the first trigger was true, but the second trigger was false. This was accomplished by selecting "Custom Function" in the "Required for Activation" dropdown, then specifying the following function:

``` lua
function(trigger)
    return trigger[1] and not trigger[2]
end
```

I set up the aforementioned Weak Aura to display the same texture used by the Blizzard Spell Alert, then I created a separate Weak Aura that plays a sound every time Shield Slam is usable. So far it's working perfectly! I imagine that the Weak Aura probably isn't in exactly the same place as the Blizzard one, but I haven't been able to tell the difference so far.

{% include powers.md %}
{% include wowdb.html %}
