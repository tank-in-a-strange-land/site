---
layout: post
---
{{ content }}

<div class="post-nav-links">
  {% if page.next %}
  <a class="post-nav-link post-nav-link-next" href="{{ page.next.url }}">
    <span class="text">Newer Post</span><br/>
    <small>{{ page.next.title }}</small>
  </a>
  {%- endif -%}
  {%- if page.previous -%}
  <a class="post-nav-link post-nav-link-previous" href="{{ page.previous.url }}">
    <span class="text">Older Post</span><br/>
    <small>{{ page.previous.title }}</small>
  </a>
  {% endif %}
</div>

{% include wowdb.html %}
