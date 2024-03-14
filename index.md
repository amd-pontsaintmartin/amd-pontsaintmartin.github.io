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
entries_layout: grid
feature_row:
  - #image_path: /assets/images/musiqueetdanse.png
    title: "L'association"
    excerpt: |
      Depuis de très nombreuses année, l’Association Musique et Danse de Pont Saint Martin (loi 1901) propose à destination de tous les publics (enfants, adolescents, adultes) des cours dispensés par des professeurs qualifiés.
      {: .text-justify} 
      {: .notice--primary}

    url: "/association/"
    btn_label: "En savoir plus"
    btn_class: "btn--primary"
  - #image_path: /assets/images/musique-1.png
    title: "Musique"
    excerpt: |
      **Découverte instrumentale** \
      À partir de 6 ans \
       \
      **Formation musicale** \
      Enfants, adolescent.e.s, adultes \
       \
      **Pratique d’instruments** \
      Enfants, adolescent.e.s, adultes \
       \
      *Piano* \
      *Guitare classique/électrique* \
      *Trompette* \
      *Saxophone* \
      *Flûte traversière* \
      *Batterie*
      {: .notice--primary}
     
    url: "/musique/"
    btn_label: "En savoir plus"
    btn_class: "btn--primary"
  - #image_path: /assets/images/danse-2.png
    title: "Danse"
    excerpt: |
      **Éveil corporel** \
      À partir de 5 ans \
       \
      **Modern’ Jazz** \
      Enfants, adolescent.e.s, adultes \
       \
      **Hip Hop** \
      Enfants, adolescent.e.s \
       \
      **Danses à deux** rock, salsa, bachata… \
      Adultes \
       \
      **Danses en ligne** \
      Adultes
      {: .notice--primary}

    url: "/danse/"
    btn_label: "En savoir plus"
    btn_class: "btn--primary"
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
