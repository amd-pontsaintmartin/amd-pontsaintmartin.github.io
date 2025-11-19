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

## Nos professeurs de musique

![alt](/assets/images/professeurs_musique/Groupe.JPG)


<style>

.column {
  float: left;
}

.row {
  display: flex;
  flex-direction: column;
}

.narrow { order: 1; }

.wide { order: 2; }

@media only screen and (min-width: 600px) {
  .narrow {
    display: flex;
    flex: 0.75;
    align-items: center;
    order: 0;
  }

  .wide {
    flex: 1;
    order: 0;
  }

  .row {
    display: flex;
    flex-direction: row;
  }
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

img {
  padding: 5px;
}

</style>


{% assign gauche = true %}
{% for prof in site.professeurs_musique %}
  
  {% if gauche == true %}
  {% assign gauche = false %}
  <h2 style="text-align: right;">{{ prof.prenom }} - {{ prof.instrument }}</h2> 
  <div class="row">
  <div class="column narrow">
    <img src="{{ prof.image }}" alt="Instrument">
  </div>
  <div class="column wide">
    {{ prof.content }}
  </div>
  </div>
  {% else %}
  {% assign gauche = true %}
  <h2>{{ prof.prenom }} - {{ prof.instrument }}</h2> 
  <div class="row">
  <div class="column wide">
    {{ prof.content }}
  </div>
  <div class="column narrow">
    <img src="{{ prof.image }}" alt="Instrument">
  </div>
  </div>
  {% endif %}
{% endfor %}
