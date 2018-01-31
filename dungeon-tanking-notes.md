---
title: Dungeon Tanking Notes
layout: page
---
While I had somewhat grand plans for these pages---taking notes about the various bosses and encounter mechanics---I stumbled onto [Quick Dungeon](http://quickdungeon.com) which I think is a wonderful resource that fulfills all my needs. Give it a look.

{% assign sorted_notes = site.dungeon_tanking_notes | sort:"level_min" %}
{% for notes in sorted_notes %}
  {%- if notes.title == "Dungeon Tanking Notes" -%}
    {%- continue -%}
  {%- endif -%}
* [{{notes.title}}]({{notes.url}})
{% endfor %}
