---
title: Sitemap
description: M0JXD's Website - Sitemap.
---

# {{ title }}

As this site isn't really a conventional blogging or portfolio site (at least not yet), most pages are manually linked to as I see appropriate.
Evidently this isn't using the full power of Eleventy/Nunjucks, but makes more sense for what I'm wanting to achieve.
However in the case of something missing, here is a complete list of all the pages on this site:

<ul>
{%- for post in collections.all -%}
  <li><a href="{{ post.url }}">{{ post.data.title }}</a></li>
{%- endfor -%}
</ul>
