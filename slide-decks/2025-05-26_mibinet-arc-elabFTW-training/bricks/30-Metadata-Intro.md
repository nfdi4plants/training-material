---
marp: true
paginate: true
theme: marp-theme_dataplant-ceplas-mibinet-ccby
license: '[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)'
title: Metadata-Intro
date: 2023-11-14
author:
- name: Dominik Brilhaus
  github: https://github.com/brilator
  orcid: https://orcid.org/0000-0001-9021-3197
- name: Sabrina Zander
  github: https://github.com/SabrinaZander
  orcid: https://orcid.org/0009-0000-4569-6126

---

# Metadata

What is metadata?

---

# ARCs come with comprehensive metadata

![width:900](./../../../public/images-tm/arc-fillwithdata-seq6.png)

---

<!--
# ARC builds on standards

![w:500](./../../../public/images-tm/arc-buildsonstandards3.png)

<span class="footer-reference">https://isa-tools.org/ | https://www.commonwl.org/
https://www.researchobject.org/ro-crate/ | https://git-scm.com</span>

---

 
# ARC builds on ISA

![w:900](./../../../public/images-tm/isamodel-arc01-img01.svg)

<span class="footer-reference">ISA Tools: https://isa-tools.org/format/specification.html</span>

---
-->

# ISA abstract model in a nutshell

![w:800](../../../public/images-tm/start-here/standards-isa-in-a-nutshell.svg)

---

# ARC builds on ISA to connect data

![w:900](./../../../public/images-tm/isamodel-arc01-img02.svg)

---

# ARC builds on ISA to link data

<div class="two-columns">

  <div>

  - Samples are linked study-to-assay, assay-to-assay
  - Raw data is linked to assays
  - Protocols can be referenced
  - ...

  </div>

  <div>
  
  ![w:800](./../../../public/images-tm/isamodel-arc01-img02.svg)
  
  </div>
</div>



---

# Annotation by flattening the knowledge graph

![w:700](./../../../public/images-tm/swate-parentchildterm.svg)

- Low-friction metadata annotation
- Familiar spreadsheet, row/column-based environment

---

# Annotation principle

![w:550](./../../../public/images-tm/swate-parentchildterm2.svg)

- Low-friction metadata annotation
- Familiar spreadsheet, row/column-based environment

---

# Adding new building blocks

![w:900](./../../../public/images-tm/swate-a-newbuildingblocks.png)

Swate (now integrated in ARCitect) can be used for the annotation of **isa.study.xlsx and isa.assay.xlsx** files

---

# Annotation Building Block types

<div class="two-columns" style="font-size: 25px">
  
  <div>
  
- Input (e.g. Source Name, Sample Name)
- Protocol columns
- Characteristic // Parameter // Factor // Component
- Output (e.g. Sample Name, Raw Data File, Derived Data File)

</div>
  
  <div>
  
  ![w:600px](./../../../public/images-tm/swate-a-overview.png)
    
  </div>
</div>


Let's take a detour on [Annotation Principles](https://nfdi4plants.github.io/AnnotationPrinciples/)

---

# Ontology term search

<style scoped>
h1{
  text-align: left
}
section {
  text-align: center;
}
</style>

![w:750](./../../../public/images-tm/swate-a-ontologytermsearch.png)

Enable **related term directed search** to directly fill cells with child terms

---

# Fill your table with ontology terms

![w:800](./../../../public/images-tm/swate-a-ontologytermsearch2.png)

---

# Realization of lab-specific metadata templates

![w:600px](./../../../public/images-tm/swate-metadatatemplates.png)

Facilities can define their most common workflows as templates

---

# Directly import templates via Swate

- DataPLANT curated
- Community templates

![bg right w:450](./../../../public/images-tm/swate-a-templates.png)

---

# Build on existing well-established standards

![w:800](../../../public/images-tm/start-here/standards.svg)

Integration of established (meta)data standards ensures compatibility by design

---

# ISA and CWL – Connected by similarity

![w:800](../../../public/images-tm/start-here/standards-isa-cwl.svg)

<!-- 
---

# Hierarchical combination of ontologies

![w:800](./../../../public/images-tm/swate-ontologycombination.svg)

---

# Checklists and Templates

![w:800px](./../../../public/images-tm/swate-templateschecklists.svg)

Metadata standards or repository requirements can be represented as templates

-->

