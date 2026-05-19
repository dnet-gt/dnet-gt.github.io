---
title: "DNet GT Lab - Team"
layout: gridlay
excerpt: "DNet GT Lab Team members"
sitemap: false
permalink: /team/
---

# Group Members

<!--
**We are looking for new PhD students, Postdocs, and Master students to join the team**
[(see openings)]({{ '/vacancies' | relative_url }}) !
-->

Jump to:
[Head](#head),
[PostDocs](#postdocs),
[PhD Students](#phd-students),
[Master and Bachelor Students](#master-and-bachelor-students),
[Alumni](#alumni),
[Former Visitors](#former-visitors-bsc-msc-students)

{% assign heads = site.data.team_members | where: "role", "head" %}
{% assign postdocs = site.data.team_members | where: "role", "postdoc" %}
{% assign phd_students = site.data.team_members | where: "role", "phd" %}

{% assign sections = 
  "Head::heads|PostDocs::postdocs|PhD Students::phd_students" | split: "|" %}

{% for sec in sections %}
{% assign parts = sec | split: "::" %}
{% assign section_title = parts[0] %}
{% assign collection_name = parts[1] %}

## {{ section_title }}

{% assign members = nil %}

{% if collection_name == "heads" %}
  {% assign members = heads %}
{% elsif collection_name == "postdocs" %}
  {% assign members = postdocs %}
{% elsif collection_name == "phd_students" %}
  {% assign members = phd_students %}
{% endif %}

{% assign number_printed = 0 %}

{% for member in members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix" style="margin-bottom: 25px;">
  <img
    src="{{ '/images/teampic/' | append: member.photo | relative_url }}"
    class="img-responsive"
    width="25%"
    style="float: left; margin-right: 15px;"
  />

  <h4>{{ member.name }}</h4>

  <i>{{ member.info }}</i>

  <ul style="overflow: hidden;">
    {% for i in (1..member.number_educ) %}
      {% assign field = "education" | append: i %}
      <li>{{ member[field] | markdownify }}</li>
    {% endfor %}
  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

---

## Master and Bachelor Students

{% assign number_printed = 0 %}

{% for member in site.data.students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix" style="margin-bottom: 20px;">
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}</i>

  <ul>
    {% for i in (1..member.number_educ) %}
      {% assign field = "education" | append: i %}
      <li>{{ member[field] }}</li>
    {% endfor %}
  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

---

## Alumni

{% assign number_printed = 0 %}

{% for member in site.data.alumni_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix" style="margin-bottom: 25px;">
  <img
    src="{{ '/images/teampic/' | append: member.photo | relative_url }}"
    class="img-responsive"
    width="25%"
    style="float: left; margin-right: 15px;"
  />

  <h4>{{ member.name }}</h4>

  <i>{{ member.duration }} <br> Role: {{ member.info }}</i>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

---

## Former Visitors, BSc / MSc Students

<div class="row">

<div class="col-sm-4 clearfix">
<h4>Visitors</h4>

<ul>
{% for member in site.data.alumni_visitors %}
<li>{{ member.name }}</li>
{% endfor %}
</ul>
</div>

<div class="col-sm-4 clearfix">
<h4>Master Students</h4>

<ul>
{% for member in site.data.alumni_msc %}
<li>{{ member.name }}</li>
{% endfor %}
</ul>
</div>

<div class="col-sm-4 clearfix">
<h4>Bachelor Students</h4>

<ul>
{% for member in site.data.alumni_bsc %}
<li>{{ member.name }}</li>
{% endfor %}
</ul>
</div>

</div>
