---
marp: true
theme: marp-theme_dataplant-ceplas-ccby
paginate: true
title: Hands-on
---

# Hands-on: ARCitect part 1

Follow the **Start Here** guide in the DataPLANT knowledge base.

Until step "add a study"

- 01-create-arc-scaffold.mdx
- 02-investigation.mdx
- 03-study.mdx

---

## ARC: Annotated research context

![w:900](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-bag.svg)

---

## The ARC scaffold structure

![w:900](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-scaffold.svg)

---

## A small prototypic project

![](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic.svg)

---

## Divide and conquer for reproducibility

![](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-study-divide-conquer.svg)

---

## Identifying the ‘study’ part

![w:900](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-study-identify.svg)

---

## A table-based organization schema

![w:700](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-metadata-table-representation.svg)

---

## Referencing a protocol

This allows you to reference the free-text, human-readable protocol.

![w:700](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-study-protocolref.svg)

:bulb: It is recommended that the protocol is in an open format (.md|.txt|.docx|…)
:bulb: But everything is possible also an URI to an electronic lab notebook

---

## Parameterizing the ‘study’

![w:900](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-study-parameterization.svg)

---

## Finding the right metadata vocabulary

<div class="two-columns">
  <div>
  
  ### Parameters []
  
  - Light intensity 200 µEinstein
  - Temperature 6°C / 25°C
  - Growing 4d
  
  </div>  
  <div>
  
  ### Characteristics []
  
  - Arabidopsis thaliana
  - Leaf
  - Hydroponic culture
  - Columbia
  
  </div>
</div>

---

## OLS: Finding the right metadata vocabulary

![w:1000](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/ontology-lookup-service.svg)

---

## Finding the metadata vocabulary and descriptors

![](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-metadata.svg)

---

## Finding the metadata vocabulary and descriptors

<div class="two-columns">

  <div>
  
  ### Parameters []
  
  - <span class="yellowblock"></span>
    - <span class="blueblock"></span> Light intensity 200 µEinstein
  - <span class="yellowblock"></span>  
    - <span class="blueblock"></span> Temperature 6°C / 25°C
  - <span class="yellowblock"></span>
    - <span class="blueblock"></span> Growing 4d
  
  </div>  

  <div>
  
  ### Characteristics []
  
  - <span class="yellowblock"></span>
    - <span class="blueblock"></span> Arabidopsis thaliana
  - <span class="yellowblock"></span>
    - <span class="blueblock"></span> Leaf
  - <span class="yellowblock"></span>
    - <span class="blueblock"></span> Hydroponic culture
  - <span class="yellowblock"></span>
    - <span class="blueblock"></span> Columbia
  
  </div>

</div>

---

## Finding the metadata vocabulary and descriptors

<div class="two-columns">

  <div>
  
  ### Parameters []
  
  - <span class="yellowblock"></span> Light intensity
    - <span class="blueblock"></span> 200 µEinstein
  - <span class="yellowblock"></span> Temperature  
    - <span class="blueblock"></span> 6°C / 25°C
  - <span class="yellowblock"></span> Growth time
    - <span class="blueblock"></span> 4d
  
  </div>

  <div>
  
  ### Characteristics []
  
  - <span class="yellowblock"></span> Organism
    - <span class="blueblock"></span> Arabidopsis thaliana
  - <span class="yellowblock"></span> Tissue
    - <span class="blueblock"></span> Leaf
  - <span class="yellowblock"></span> Growth medium
    - <span class="blueblock"></span> Hydroponic culture
  - <span class="yellowblock"></span> Ecotype
    - <span class="blueblock"></span> Columbia
  
  </div>

</div>

---
