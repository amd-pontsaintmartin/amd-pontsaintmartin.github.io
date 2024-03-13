---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: splash
excerpt: Pont Saint Martin
title: Association Musique et Danse
header:
  overlay_image: /assets/images/header.jpg
  overlay_filter: 0.5
  actions:
    - label: "Nous contacter"
      url: "mailto://musiquepsm@gmail.com"
classes: wide
feature_row:
  - image_path: /assets/images/musiqueetdanse.png
    title: "L'association"
    excerpt: "Description rapide de l'association"
    url: "/association/"
    btn_label: "En savoir plus"
    btn_class: "btn--inverse"
  - image_path: /assets/images/musique-1.png
    title: "Musique"
    excerpt: "Description rapide de la Musique"
    url: "/musique/"
    btn_label: "En savoir plus"
    btn_class: "btn--inverse"
  - image_path: /assets/images/danse-2.png
    title: "Danse"
    excerpt: |
      **Éveil corporel** \
      à partir de 5 ans
      {: .notice--info}
   
      **Modern’ Jazz** \
      enfants, adolescent.e.s, adultes
      {: .notice--warning}
  
      **Hip Hop** \
      enfants, adolescent.e.s
      {: .notice--success}
 
      **Danses à deux** rock, salsa, bachata… \
      adultes
      {: .notice--danger}
      
      **Danses en ligne** \
      adultes
      {: .notice--primary}

    url: "/danse/"
    btn_label: "En savoir plus"
    btn_class: "btn--inverse"
---

{% include feature_row %}

<h3 class="archive__subtitle">{{ site.data.ui-text[site.locale].recent_posts | default: "Recent Posts" }}</h3>

{% if paginator %}
  {% assign posts = paginator.posts %}
{% else %}
  {% assign posts = site.posts %}
{% endif %}

{% assign entries_layout = page.entries_layout | default: 'list' %}
<div class="entries-{{ entries_layout }}">
  {% for post in posts %}
    {% include archive-single.html type=entries_layout %}
  {% endfor %}
</div>

{% include paginator.html %}
