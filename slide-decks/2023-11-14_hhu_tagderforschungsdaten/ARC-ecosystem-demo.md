---
marp: true
paginate: true
theme: marp-theme_dataplant-ceplas-ccby
license: '[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)'
title: ARC Ecosystem Demo
date: 2023-11-14
author:
- name: Dominik Brilhaus
  github: https://github.com/brilator
  orcid: https://orcid.org/0000-0001-9021-3197
---

<style>

figcaption {
  font-size: 10px;
  font-style: italic;
}

.reference-bgright {
  font-size:15px;
  line-height: 1.2em;
  position: fixed;
  right: 0px;
  bottom: 0px;
  transform: translate(-50%, -50%);
  margin: 0 auto;
}

</style>

# Annotated Research Contexts (ARCs)

<!--  _color: white; -->
<!-- _paginate: false -->

<style scoped>section {background: none; background-color: white;}</style>

### *A FAIR RDM journey along a (mutable) data life cycle*

<br>
Tag der Forschungsdaten in NRW 2023

November 14<sup>th</sup>, 2023
Dominik Brilhaus, CEPLAS Data Science & Data Management

![bg fit](./../../public/images-tm/ceplas/ceplas-background-title.drawio.svg)

---

# Data Stewardship between DataPLANT and the community  <!-- fit -->

![w:880](././../../public/images-tm/ceplas/ceplas-dataplant-collaboration.drawio.png)

---

# The research data life cycle

<br>

![w:350](./../../public/images-tm/rdmkit-data-life-cycle-9.svg)

<span class="footer-reference">https://rdmkit.elixir-europe.org, [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)</span>

---

# Annotated Research Context (ARC)

![width:950](./../../public/images-tm/arc-datacentricintegration.svg)

---

# What does an ARC look like?

![width:950](./../../public/images-tm/arc-fillwithdata-seq1.png)

---

# ARCs store experimental data

![width:950](./../../public/images-tm/arc-fillwithdata-seq3.png)

---

# Computations can be run inside ARCs

![width:950](./../../public/images-tm/arc-fillwithdata-seq5.png)

---

# ARCs come with comprehensive metadata

![width:950](./../../public/images-tm/arc-fillwithdata-seq6.png)

---

# ARC builds on standards

![w:880](./../../public/images-tm/arc-buildsonstandards2.png)

<span class="footer-reference">https://isa-tools.org/ | https://www.commonwl.org/
https://www.researchobject.org/ro-crate/ | https://git-scm.com</span>

---

<!-- _paginate: false -->

<style scoped>section {background: none; background-color: white;}</style>

---


# Collect <img align="left" class="center" style="height:75px" src='./../../public/images-tm/teaching-rdm-fundamentals/screenshot-rdmkit-02-collect.png'/>

![width:800](./../../public/images-tm/arc-fillwithdata-experimental.png)

<!-- 

- create study folder
  - take a picture (add more demo pictures)
- create assay folder
  - add fastq data

-->

---

# Process (e.g. annotate)  <img align="left" class="center" style="height:75px" src='./../../public/images-tm/teaching-rdm-fundamentals/screenshot-rdmkit-03-process.png'/>

<style scoped>

section p img {
width: 900px;
height: 400px;
object-fit: cover;
object-position: 50% 60%;
/* display: block; */;
}
</style>

![](./../../public/images-tm/swate-metadatatemplates.png)

<!-- 

- annotate plant samples
- annotate rnaseq extraction -->

---

# Analyse <img align="left" class="center" style="height:75px" src='./../../public/images-tm/teaching-rdm-fundamentals/screenshot-rdmkit-04-analyse.png'/>

<!-- 
- run fastqc
- receive back results
-->

![w:800](./../../public/images-tm/tpj16474-fig-0005-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Preserve  <img align="left" class="center" style="height:75px" src='./../../public/images-tm/teaching-rdm-fundamentals/screenshot-rdmkit-05-preserve.png'/>

<!--
1. Validation: CQC on each DataHUB commit
2. Publication: DOI
-->

![h:400](./../../public/images-tm/tpj16474-fig-0008-m-modified.png)

<span class="footer-reference"> adapted from Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Preserve and publish <img align="left" class="center" style="height:75px" src='./../../public/images-tm/teaching-rdm-fundamentals/screenshot-rdmkit-05-preserve.png'/>

<!--
1. Validation: CQC on each DataHUB commit
2. Publication: DOI
-->

![h:400](././../../public/images-tm/tpj16474-fig-0008-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Share and collaborate <img align="left" class="center" style="height:75px" src='./../../public/images-tm/teaching-rdm-fundamentals/screenshot-rdmkit-06-share.png'/>

![w:700](./../../public/images-tm/arc-datasharing-experts02-img1.png)

---

# Reuse <img align="left" class="center" style="height:75px" src='./../../public/images-tm/teaching-rdm-fundamentals/screenshot-rdmkit-07-reuse.png'/>

![w:800](./../../public/images-tm/tpj16474-fig-0001-m.jpg)

<!-- 
- via ARC https://arcregistry.nfdi4plants.org/arcsearch
- via ISA https://arcregistry.nfdi4plants.org/isasearch 
-->

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# **Mutable** data life cycle

![w:700](./../../public/images-tm/tpj16474-fig-0006-m.jpg)

<!-- 

- Invite other (demo) account
- add notes from there
-->

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Plan &ndash; ARC scale <img align="left" class="center" style="height:75px" src='./../../public/images-tm/teaching-rdm-fundamentals/screenshot-rdmkit-01-plan.png'/>

![w:800](./../../public/images-tm/tpj16474-fig-0007-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

<!--
 
 - **ARCitect**: Create empty ARC
   - description
   - author
     - first name
     - last name
     - email
 - **ARCitect**: Upload ARC to DataHUB
 - **DataHUB**
   - Discuss, collect meeting minutes in Wiki
   - design / plant investigation (datahub wiki, issues)

-->

---

# Plan  &ndash; proposal scale <img align="left" class="center" style="height:75px" src='./../../public/images-tm/teaching-rdm-fundamentals/screenshot-rdmkit-01-plan.png'/>

<span class="footer-reference">**Zhou *et al.* (2023)**, DataPLAN: a web-based data management plan generator for the plant sciences, bioRxiv 2023.07.07.548147; doi: https://doi.org/10.1101/2023.07.07.548147 </span>

https://dmpg.nfdi4plants.org

![w:800](././../../public/images-tm/zhou2023-dataplan.png)

---

# The ARC ecosystem

![w:850](./../../public/images-tm/arc-ecosystem-07.drawio.png)

---

# The ARC ecosystem

![w:850](./../../public/images-tm/arc-ecosystem-09.drawio.png)

---

# The ARC ecosystem

![w:850](./../../public/images-tm/arc-ecosystem.drawio.svg)

---

---

# Contributors

Slides presented here include contributions by

- name: Dominik Brilhaus
  github: https://github.com/brilator
  orcid: https://orcid.org/0000-0001-9021-3197
- name: Cristina Martins Rodrigues
  github: https://github.com/CMR248
  orcid: https://orcid.org/0000-0002-4849-1537
- name: Martin Kuhl
  github: https://github.com/Martin-Kuhl
  orcid: https://orcid.org/0000-0002-8493-1077
