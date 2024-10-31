---
marp: true
theme: marp-theme_dataplant-ceplas-ccby
paginate: true
title: Hands-on
---

# Hands-on part 2: ARCitect (and Swate)

Follow the **Start Here** guide in the DataPLANT knowledge base.

Until "Data analysis"

---

## Identifying assays

![](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-identify.svg)

---

## Assay for sugar measurement

![w:900](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-sugar.svg)

---

## Separating different assay elements

![w:800](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-modular2.svg)

---

## Isolating the lab processes in an assay

![w:600](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-modular1.svg)

---

## Parameteterization: sugar extraction

- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> Vortex Mixer
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> 3 seconds
- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> Temperature  
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> 95 degree celsius

![bg right w:600](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-labprocess1-extraction.svg)

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

![bg right w:600](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-labprocess2-measurement.svg)

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

![](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-sop-proteomics.svg)
</div>

</div>




---

## Applying standard procedures to sample record

![w:700](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-sop.svg)

---

# Realization of lab-specific metadata with templates

![w:650px](./../../../images/swate-metadatatemplates.png)

Facilities can define their most common workflows as templates
