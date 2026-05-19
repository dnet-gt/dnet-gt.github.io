---
title: "Secure Systems Lab - News"
layout: textlay
excerpt: "Secure Systems Lab at KU Leuven, Group T."
sitemap: false
permalink: /allnews/
---

# News

{% for article in site.data.news %}
<p>{{ article.date }} <br> {{ article.headline | markdownify}}</p>
{% endfor %}
