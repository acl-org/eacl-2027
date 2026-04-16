---
title: Organizing Committee
layout: single
excerpt: "EACL 2026 organizing committee."
permalink: /committees/organization/
sidebar:
  nav: committees
---
<style>
.committee-list{display:grid;grid-template-columns:repeat(auto-fill,minmax(420px,1fr));gap:1.25rem;margin-bottom:2rem;}
.committee-card{display:flex;align-items:center;gap:.75rem;}
.committee-card img{width:64px;height:64px;border-radius:9999px;object-fit:cover;}
.committee-card__text{flex:1 1 auto;}
.committee-card__name{font-weight:700;font-size:1.125rem;line-height:1.2;white-space:normal;overflow:visible;text-overflow:unset;}
.committee-card__affil{white-space:normal;overflow:visible;text-overflow:unset;line-height:1.35;margin-top:.125rem;}
/* remove any residual dividers inside cards */
.committee-card, .committee-card * { border: 0 !important; box-shadow: none !important; }

/* grey line just under each section title (applies only when a .committee-list follows) */
h3 + .committee-list {
  border-top: 1px solid #e5e7eb;  /* gray-200 */
  padding-top: .75rem;            /* space between line and cards */
  margin-top: .25rem;             /* space between title and line */
}

/* optional: a little space above each title */
.page__content h3 { margin-top: 2rem; }

/* contact line & thin divider (for ED&I section) */
.committee-contact{margin:.25rem 0 .5rem;color:#4b5563;font-size:.95rem;}
.heading-divider{border-top:1px solid #e5e7eb;margin:.25rem 0 1rem;}
</style>

{% comment %} 
  NOTE: Ensure these keys match the exact "Role" string in your _data/organizers.yml 
  Example: if your data says "Communications", this list must say "Communications" (not "Internal Communications").
{% endcomment %}
{% assign preferred = "General|Program|Local Organization|Workshop|ACL Workshop Officers|Tutorial|Internal Communications|Open Review Technical Platform Chair|Softconf Technical Platform Chair" | split:"|" %}
{% assign groups = site.data.organizers | group_by: "Role" %}

{% comment %} 1) Print preferred roles in this exact order {% endcomment %}
{% for r in preferred %}
  {% assign bucket = groups | where: "name", r | first %}
  {% if bucket and bucket.items.size > 0 %}

    {% comment %} MAPPING LOGIC REPLACEMENT {% endcomment %}
    {% assign _mapped = nil %}
    {% case r %}
      {% when "Student SRW" %}{% assign _mapped = "Student Research Workshop Chair" %}
      {% when "Faculty SRW" %}{% assign _mapped = "Faculty Advisor to the Student Research Workshop" %}
      {% when "Communications" %}{% assign _mapped = "Internal Communications Chair" %}
      {% when "Local" %}{% assign _mapped = "Local Chair" %}
      {% when "ED&I" %}{% assign _mapped = "Diversity and Inclusion Chair" %}
      {% when "Diversity and Inclusion" %}{% assign _mapped = "Diversity and Inclusion Chair" %}
    {% endcase %}

    {% if _mapped %}
      {% assign heading = _mapped %}
    {% else %}
      {% assign _raw_role = r | strip %}
      {% assign _nochair = false %}
      {% if _raw_role contains "Editors-in-Chief" or _raw_role contains "Editor-in-Chief" %}
        {% assign _nochair = true %}
      {% endif %}
      {% if _raw_role contains "Team" or _raw_role contains "Staff" or _raw_role contains "Officers" or _raw_role contains "Volunteer" or _raw_role contains "Infrastructure" %}
        {% assign _nochair = true %}
      {% endif %}
      {% if _raw_role contains "Audio Visual" %}
        {% assign _nochair = true %}
      {% endif %}
      {% if _raw_role == "Underline" %}
        {% assign _nochair = true %}
      {% endif %}

      {% if _nochair %}
        {% assign heading = _raw_role %}
      {% else %}
        {% assign _last = _raw_role | split: ' ' | last %}
        {% if _last == "Chair" or _last == "Chairs" %}
          {% assign heading = _raw_role %}
        {% else %}
          {% assign heading = _raw_role | append: " Chair" %}
        {% endif %}
      {% endif %}
    {% endif %}

    {% comment %} Pluralize when more than one person {% endcomment %}
    {% if bucket.items.size > 1 %}
      {% assign _last_word = heading | split: ' ' | last %}
      {% if _last_word == "Chair" %}
        {% assign heading = heading | append: "s" %}
      {% endif %}
    {% endif %}

### {{ heading }}
{% comment %} ED&I contact line (preferred loop) {% endcomment %}
{% if r == "ED&I" or r == "Diversity and Inclusion" %}
<p class="committee-contact">
  Contact: <a href="mailto:eacl2026deichairs@gmail.com">eacl2026deichairs@gmail.com</a>
</p>
<div class="heading-divider"></div>
{% endif %}
<div class="committee-list">
  {% if r == "Local Organization" %}
    {% comment %} 
       SPECIAL CASE: For Local Organization, DO NOT SORT. 
       Respect the order in the _data file.
    {% endcomment %}
    {%- for person in bucket.items -%}
      {% include committee_card.html
           name=person.Name
           affiliation=person.Affiliation
           photo=person.Photo
           url=person.Scholar %}
    {%- endfor -%}
  {% else %}
    {% comment %} For all other roles, sort alphabetically by surname {% endcomment %}
    {%- assign _annot = "" -%}
    {%- for p in bucket.items -%}
      {%- assign _name = p.Name | strip -%}
      {%- comment -%} take last token as surname; strip parentheses like "(May)" {%- endcomment -%}
      {%- assign _surname = _name | replace: "(", " " | replace: ")", " " | split: " " | last | downcase -%}
      {%- assign _annot = _annot
          | append: _surname | append: "§" | append: forloop.index0
          | append: "¶" -%}
    {%- endfor -%}
    {%- assign _rows = _annot | split: "¶" | sort_natural -%}
    {%- for row in _rows -%}
      {%- unless row == "" -%}
        {%- assign _parts = row | split: "§" -%}
        {%- assign _idx = _parts[1] | plus: 0 -%}
        {%- assign person = bucket.items[_idx] -%}
        {% include committee_card.html
             name=person.Name
             affiliation=person.Affiliation
             photo=person.Photo
             url=person.Scholar %}
      {%- endunless -%}
    {%- endfor -%}
  {% endif %}
</div>

  {% endif %}
{% endfor %}

{% comment %} 2) Then print any remaining roles not listed above {% endcomment %}
{% for g in groups %}
  {% unless preferred contains g.name %}

    {% comment %} MAPPING LOGIC REPLACEMENT {% endcomment %}
    {% assign _mapped = nil %}
    {% case g.name %}
      {% when "Student SRW" %}{% assign _mapped = "Student Research Workshop Chair" %}
      {% when "Faculty SRW" %}{% assign _mapped = "Faculty Advisor to the Student Research Workshop" %}
      {% when "Communications" %}{% assign _mapped = "Internal Communications Chair" %}
      {% when "Local" %}{% assign _mapped = "Local Chair" %}
      {% when "ED&I" %}{% assign _mapped = "Diversity and Inclusion Chair" %}
      {% when "Diversity and Inclusion" %}{% assign _mapped = "Diversity and Inclusion Chair" %}
    {% endcase %}

    {% if _mapped %}
      {% assign heading = _mapped %}
    {% else %}
      {% assign _raw_role = g.name | strip %}
      {% assign _nochair = false %}
      {% if _raw_role contains "Editors-in-Chief" or _raw_role contains "Editor-in-Chief" %}
        {% assign _nochair = true %}
      {% endif %}
      {% if _raw_role contains "Team" or _raw_role contains "Staff" or _raw_role contains "Officers" or _raw_role contains "Volunteer" or _raw_role contains "Infrastructure" %}
        {% assign _nochair = true %}
      {% endif %}
      {% if _raw_role contains "Audio Visual" %}
        {% assign _nochair = true %}
      {% endif %}
      {% if _raw_role == "Underline" %}
        {% assign _nochair = true %}
      {% endif %}

      {% if _nochair %}
        {% assign heading = _raw_role %}
      {% else %}
        {% assign _last = _raw_role | split: ' ' | last %}
        {% if _last == "Chair" or _last == "Chairs" %}
          {% assign heading = _raw_role %}
        {% else %}
          {% assign heading = _raw_role | append: " Chair" %}
        {% endif %}
      {% endif %}
    {% endif %}

    {% if g.items.size > 1 %}
      {% assign _last_word = heading | split: ' ' | last %}
      {% if _last_word == "Chair" %}
        {% assign heading = heading | append: "s" %}
      {% endif %}
    {% endif %}

### {{ heading }}

<div class="heading-divider"></div>

{% comment %} ED&I contact line (remaining-groups loop) {% endcomment %}
{% if g.name == "ED&I" or g.name == "Diversity and Inclusion" %}
<p class="committee-contact">
  Contact: <a href="mailto:eacl2026deichairs@gmail.com">eacl2026deichairs@gmail.com</a>
</p>
{% endif %}

<div class="committee-list">
  {%- assign _annot = "" -%}
  {%- for p in g.items -%}
    {%- assign _name = p.Name | strip -%}
    {%- assign _surname = _name | replace: "(", " " | replace: ")", " "
                              | split: " " | last | downcase -%}
    {%- assign _annot = _annot
        | append: _surname | append: "§" | append: forloop.index0
        | append: "¶" -%}
  {%- endfor -%}
  {%- assign _rows = _annot | split: "¶" | sort_natural -%}
  {%- for row in _rows -%}
    {%- unless row == "" -%}
      {%- assign _parts = row | split: "§" -%}
      {%- assign _idx = _parts[1] | plus: 0 -%}
      {%- assign person = g.items[_idx] -%}
      {% include committee_card.html
           name=person.Name
           affiliation=person.Affiliation
           photo=person.Photo
           url=person.Scholar %}
    {%- endunless -%}
  {%- endfor -%}
</div>

  {% endunless %}
{% endfor %}

## Contact

**📞 Looking for a specific contact? Visit our [Complete Contact Directory](/committees/contact-directory/)** for a comprehensive list of all EACL 2026 email contacts organized by category.

- **General Chair**: [Aline Villavicencio](https://sites.google.com/view/alinev)
- **Program Chairs**: [Vera Demberg](https://www.uni-saarland.de/en/lehrstuhl/demberg.html), [Kentaro Inui](https://kentaro-inui.github.io/), Lluís Marquez Villodre

**Quick Contact Guide:**
- Paper submission questions: [editors@aclrollingreview.org](mailto:editors@aclrollingreview.org)
- Paper commitment & program: [eacl26-pcs@googlegroups.com](mailto:eacl26-pcs@googlegroups.com)
- All other questions: [eacl2026.contact@gmail.com](mailto:eacl2026.contact@gmail.com)
- **Visa invitation letters**: See [Visa Page](/participants/visa/)
- **Registration questions**: See [Registration Page](/registration/)
