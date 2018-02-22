---
date: 2018-02-21 18:40:31 -0700
title: One Quick Run
---
Three nights ago I only had a little time to play, so Cordolvar only completed one dungeon run: Lower Blackrock Spire.

## Quick Stats

|-----------------|-------------------|-------|
|                 | Since Last Update | Total |
|-----------------|-------------------|-------|
| Deaths          | 0!!![^1]          | 22    |
| Dungeons Tanked | 1                 | 51    |
| Levels Gained   | 1                 | 59    |
|-----------------|-------------------|-------|

## Progress Made

No deaths! Amazing. Granted I only ran a single dungeon, but LBRS is hardly a short dungeon. It has a total of nine bosses, and Cordolvar's group defeated them all. Cordolvar looted [a belt upgrade](http://www.wowdb.com/items/51985-stalwart-belt), and a [really nice ring](http://www.wowdb.com/items/13143-mark-of-the-dragon-lord), that I'm surprised wasn't an upgrade for him. Trying to follow the maps from Quick Dungeon was kinda a joke (there are nine different levels), but thankfully, some of the other party members knew their way around pretty well. I wasn't totally lost, as I had run this dungeon a couple of times on a previous character.

## Random Notes

* &#x1f44d; No deaths! Amazing.
* &#x1f44d; Got a belt upgrade.
* &#x1f44e; Only ran a single dungeon.

I'm working on an "Old World Retrospective" that will review my goals and go over the highs and lows of tanking through levels 15-60.

### UI Modifications

Part of why I only had time to run a single dungeon, was because I was trying to fix my [ignore pain and shield block weak aura textures]({% link _ui_mods/weak-auras.md %}). I'm glad to say I was successful! The shield block texture now has three triggers:

1. Have aggro from at least one mob.
1. Action usable: Shield Block.
1. Aura: Shield Block: missing.

I had previously failed to be able to specify the third item in the list. Turns out there's a simple selection box in the trigger that needs to be set to "Missing" and voilà! Ignore pain's is similar, except that it also won't trigger unless the shield block aura is already present. This is because I want to prioritize [Shield Block][shield-block] over [Ignore Pain][ignore-pain], since Ignore Pain can drain all of Cordolvar's rage, leaving too little rage to then cast Shield Block. I could make this more sophisticated by adding a trigger to show the texture anyway if health drops below 70% or so. I could also show the texture if rage is high enough to cast both. Maybe I'll work on that next time.

{% include powers.md %}

#### Footnotes

[^1]: Of course, Cordolvar only ran a single dungeon, still, it's a small victory.
