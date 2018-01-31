---
title: Dungeon Tanking Notes
permalink: dungeon-tanking-notes/index.html
---

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
