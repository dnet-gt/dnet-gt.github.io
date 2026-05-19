---
title: "DNet GT Lab - Industry Collaborations"
layout: gridlay
excerpt: "DNet GT Lab -- Industry Collaborations."
sitemap: false
permalink: /industry/
---

# Industry Collaborations

The Secure Systems Lab actively collaborates with industry partners to address
real-world challenges in software engineering, cybersecurity, AI-assisted development,
smart contracts, and software quality assurance.

Our collaborations focus on transforming research outcomes into practical tools,
methodologies, and technologies that provide measurable industrial impact.

---

## Featured Collaborations

{% assign number_printed = 0 %}
{% for company in site.data.industrylist %}
{% assign even_odd = number_printed | modulo: 2 %}
{% if company.highlight == 1 %}
{% if even_odd == 0 %}
<div class="row">
{% endif %}
<div class="col-sm-6 clearfix">
 <div class="well">
  {% if company.image %}
  <img src="{{ '/images/industry/' | append: company.image | relative_url }}"
       class="img-responsive"
       style="max-height:120px; margin:auto; padding-bottom:15px;" />
  {% endif %}
  <pubtit>{{ company.title }}</pubtit>
  <p>{{ company.description }}</p>
  <p>{{ company.collaboration }}</p>
  <p><em>{{ company.impact }}</em></p>
  {% if company.technologies %}
  {% for tech in company.technologies %}
  <span class="label label-primary">{{ tech }}</span>
  {% endfor %}
  <br><br>
  {% endif %}
  <p><strong><a href="{{ company.link.url }}" target="_blank" rel="noopener noreferrer">{{ company.link.display }}</a></strong></p>
 </div>
</div>
{% assign number_printed = number_printed | plus: 1 %}
{% if even_odd == 1 %}
</div>
{% endif %}
{% endif %}
{% endfor %}
{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


---

## Full List of Collaborations

{% for company in site.data.industrylist %}

### {{ company.title }}

{{ company.description }}

**Collaboration focus:**  
{{ company.collaboration }}

**Impact:**  
{{ company.impact }}

<a href="{{ company.link.url }}" target="_blank" rel="noopener noreferrer">
{{ company.link.display }}
</a>

<br><br>

{% endfor %}

---

## Interested in collaborating?

We welcome collaborations with companies and organizations interested in:

- AI-assisted software engineering
- Software quality and reliability
- Vulnerability detection
- Smart contract security
- Embedded systems
- Mining software repositories
- Software analytics

### We collaborate through

- Joint research projects
- Industrial PhD programs
- Internship supervision
- Software analysis consulting
- Joint funding applications
- Open-source collaboration

Please contact us if you are interested in research partnerships,
student internships, or technology transfer activities.
