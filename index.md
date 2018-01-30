---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: default
---
## Latest Blog Posts

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

## Dungeon Tanking Notes
<ul>
  {% for notes in site.dungeon_tanking_notes %}
    {% if notes.title == "Dungeon Tanking Notes" %}
    {% continue %}
    {% endif %}
    <li>
      <a href="{{ notes.url }}">{{ notes.title }}</a>
    </li>
  {% endfor %}
</ul>

## UI Modifications

* [Weak Auras](/ui-mods/weak-auras)
