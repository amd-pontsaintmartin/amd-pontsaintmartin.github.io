---
layout: single
title: L'association
permalink: /association/
toc: true
---

Gérée par une équipe de bénévoles dynamiques, investis et avec l’appui de la municipalité de Pont Saint Martin, l’association a à cœur de :
- Mettre la musique et la danse à la portée de tous,
- Promouvoir un enseignement de qualité, adapté à un public amateur, par des professionnels compétents sur le plan technique et pédagogique,
- Contribuer à une meilleure qualité de vie et à l’épanouissement individuel des adhérents,
- Participer à l’animation culturelle de la commune.
{: .text-justify}

## Nos professeurs

### Musique

<table>
{% assign gauche = true %}
{% for prof in site.professeurs_musique %}
  <tr>
    {% if gauche == true %}
    {% assign gauche = false %}
    <td><img src="{{ prof.image }}" alt="Instrument"></td>
    <td><h2>{{ prof.prenom }} - {{ prof.instrument }}</h2> 
    {{ prof.content }}</td>
    {% else %}
    {% assign gauche = true %}
    <td><h2>{{ prof.prenom }} - {{ prof.instrument }}</h2> 
    {{ prof.content }}</td>
    <td><img src="{{ prof.image }}" alt="Instrument"></td>
    {% endif %}
  </tr>
{% endfor %}
</table>

### Danse

<table>
{% assign gauche = true %}
{% for prof in site.professeurs_danse %}
  <tr>
    {% if gauche == true %}
    {% assign gauche = false %}
    <td><img src="{{ prof.image }}" alt="Instrument"></td>
    <td><h2>{{ prof.prenom }} - {{ prof.instrument }}</h2> 
    {{ prof.content }}</td>
    {% else %}
    {% assign gauche = true %}
    <td><h2>{{ prof.prenom }} - {{ prof.instrument }}</h2> 
    {{ prof.content }}</td>
    <td><img src="{{ prof.image }}" alt="Instrument"></td>
    {% endif %}
  </tr>
{% endfor %}
</table>