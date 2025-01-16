---
marp: true
theme: marp-theme_dataplant-ceplas-mibinet-ccby
paginate: true
title: Hands-on
---

<style>

.yellowblock {
  display: inline-block;
  color: rgba(0, 0, 0, 0);
  width: 1em;
  height: 1em;
  background-color: #FFC000;
}

.blueblock {
  display: inline-block;
  color: rgba(0, 0, 0, 0);
  width: 1em;
  height: 1em;
  background-color: #2D3E50;
}

</style>

## Hands-on part 2: Start Here guide, study & assay part
[**Start Here** guide](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/start-here/) in the DataPLANT knowledge base.


---

## Divide and conquer for reproducibility

![](../../../images/start-here/arc-prototypic-study-divide-conquer.svg)

---

## Identifying the ‘study’ part

![w:900](../../../images/start-here/arc-prototypic-study-identify.svg)

---

## A table-based organization schema

![w:700](../../../images/start-here/arc-prototypic-metadata-table-representation.svg)

---

## Referencing a protocol

This allows you to reference the free-text, human-readable protocol.

![w:700](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-study-protocolref.svg)

:bulb: It is recommended that the protocol is in an open format (.md|.txt|.docx|…)
:bulb: But everything is possible also an URI to an electronic lab notebook

---

## Parameterizing the ‘study’

![w:900](../../../images/start-here/arc-prototypic-study-parameterization.svg)

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

![w:1000](../../../images/teaching-ontologies/ontology-lookup-service.svg)

Ontology Lookup Sevice (OLS): https://www.ebi.ac.uk/ols4/

---

## Finding the metadata vocabulary and descriptors

![](../../../images/start-here/arc-prototypic-metadata.svg)

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
## Identifying assays

![](../../../images/start-here/arc-prototypic-assay-identify.svg)

---

## Assay for sugar measurement

![w:900](../../../images/start-here/arc-prototypic-assay-sugar.svg)

---

## Separating different assay elements

![w:800](../../../images/start-here/arc-prototypic-assay-modular2.svg)

---

## Isolating the lab processes in an assay

![w:600](../../../images/start-here/arc-prototypic-assay-modular1.svg)

---

## Parameteterization: sugar extraction

- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> Vortex Mixer
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> 3 seconds
- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> Temperature  
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> 95 degree celsius

![bg right w:600](../../../images/start-here/arc-prototypic-assay-labprocess1-extraction.svg)

---

## Parameteterization: sugar measurement

- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> technical replicate
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> 1,2,3,...
- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> sample volume 
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> 10 `microliter`
- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> buffer volume 
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> 190 `microliter`
- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> cycle count
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> 5

![bg right w:600](../../../images/start-here/arc-prototypic-assay-labprocess2-measurement.svg)

---

## Save time using standard methods and SOPs

<div class=three-columns>

<div>

**Parameter []**

- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> Protein Precipitation
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> acetone
- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> cleavage agent name 
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> Trypsin
- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> sample preparation
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> reversed-phase solid-phase extraction
- ...

</div>
<div>

**Component []**

- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> chromatography instrument model 
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> nanoElute2
- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> chromatography column model 
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> PepSep C18 1.9u, 25cm x 75um
...

</div>
<div>

![](../../../images/start-here/arc-prototypic-assay-sop-proteomics.svg)
</div>

</div>

---

## Applying standard procedures to sample record

![w:700](../../../images/start-here/arc-prototypic-assay-sop.svg)

---

## Realization of lab-specific metadata with templates

![w:650px](./../../../images/swate-metadatatemplates.png)

Facilities can define their most common workflows as templates

---

## Hands-on part 2: ARCitect (and Swate)

Continue the [**Start Here** guide](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/start-here/) in the DataPLANT knowledge base.

:pencil: Stop after step **Add assay data**