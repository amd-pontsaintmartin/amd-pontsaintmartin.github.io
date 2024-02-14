---
layout: single
title: L'association
permalink: /association/
toc: true
---

## blabla

blabla

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