---
marp: true
layout: slides
theme: marp-theme_dataplant-ceplas-mibinet-ccby
paginate: true
title: 2025-01-20_mibinet-arc-elabFTW-training
date: 2025-01-13
---

#  ARCify your research project

<!--  _color: white; -->
<!-- _paginate: false -->
<style scoped>section {background: none; background-color: white;}</style>

January, 2025

Sabrina Zander (MibiNet)
Stella Eggels (DataPLANT)

![bg fit](./../../../images/ceplas/ceplas-background-title-mibinet.drawio.svg)

---
# Tentative agenda

<div class="two-columns" style="font-size: 18px">
<div class="columns-left">

### Morning

Time | Topics
-------- | --------
09:00 - 09:15 | Welcome, Intro RDM and NFDI
09:15 - 09:45 | Overview DataPLANT, and DataPLANT Tool chain
09:45 - 10:30 | Hands-on ARCitect
10:30 - 10:45 | *Short break* :coffee:
10:45 - 11:45 | Intro and Hands-on DataHUB
11:45 - 12:00 | Q & A

</div>

<div class="columns-right">

### Afternoon

Time | Topics
-------- | --------
12:00 - 13:00 | *Lunch break* :pizza:
13:00 - 14:00 | Intro and Hands-on Metadata annotation with SWATE
14:00 - 15:00 | Create your own ARC
15:00 - 15:15 | *Short break* :coffee:
15:15 - 16:30 | Create your own ARC
16:30 - 17:00 | Q & A and wrap-up

</div>
</div>

---


# House-keeping

<div class="two-columns">
  <div>

  - Use the [pad](https://pad.hhu.de/BpqX_5KHSUiW5gDhrUFtgg) to raise questions and feedback
  - Copy / paste links (hands-on)

  </div>

  <div>
  <a href="https://pad.hhu.de/BpqX_5KHSUiW5gDhrUFtgg" target="_blank"> </a>
  </div>
</div>

---

# Training Materials

Slides are shared via [DataPLANT Training Material](https://github.com/nfdi4plants/training-material)

---

# Resources &ndash; join the open source movement

### <img align="left" style="height:35px" src='https://raw.githubusercontent.com/nfdi4plants/Branding/7e7d442aafeaa767b9c14a63a16e459dadcbdaaf/logos/DataPLANT/dataplant-logo-minimal-rounded-bg-darkblue.svg'/> DataPLANT (nfdi4plants)

DataPLANT Website: <a href="https://nfdi4plants.org/" target="_blank">https://nfdi4plants.org/</a>
Knowledge Base: <a href="https://nfdi4plants.org/nfdi4plants.knowledgebase/" target="_blank">https://nfdi4plants.org/nfdi4plants.knowledgebase/</a>
DataHUB: <a href="https://git.nfdi4plants.org" target="_blank">https://git.nfdi4plants.org</a>

GitHub: <a href="https://github.com/nfdi4plants" target="_blank">https://github.com/nfdi4plants</a>
HelpDesk: <a href="https://helpdesk.nfdi4plants.org" target="_blank">https://helpdesk.nfdi4plants.org</a>

:bulb: You can help us by raising issues, bugs, ideas...

:rocket: NEW! ARC website: <a href="https://arc-rdm.org" target="_blank">https://arc-rdm.org</a>

---

# Continuous support

Data managers in Düsseldorf, Cologne, Jülich and close by (CEPLAS, MibiNet, TRR341) offer support.

1. Slack Workspace for ad hoc support
2. Monthly user meeting (2nd Friday of the month)

[&rarr; Details](https://nfdi4plants.github.io/events/2025-01-10_arc-user-support/).

<div>
  <img style="height:40px;margin-right:50px" src='https://www.ceplas.eu/typo3conf/ext/fksitepackage/Resources/Public/Images/CEPLAS-Logo.svg'/>
  <img style="height:100px;margin-right:50px" src='https://trr341.uni-koeln.de/sites/crc_trr_341/TRR341_logo.png'/>
  <img style="height:70px;margin-right:50px" src='https://www.sfb1535.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Biologie/SFB1535/Bilder/MibiNet.png'/>
</div>

---

# Introduce yourself

- Lab
- MibiNet / CEPLAS / TRR / ?
- Used code / programming language before
- Experience with Git / GitLab / GitHub?
- Have an ORCID
- My motivation / expectation
- My favorite lab assay

---

# Let's draw a typical lab workflow :pencil:


---


# BYOD &ndash; Goals

- First few steps into ARC ecosystem
- Move existing datasets into ARCs
- Share them via the DataHUB
- Annotate with metadata
- Introduction into elabFTW 
- elab2ARC tool

![bg right w:500](./../../images/ceplas-arcs.drawio.svg)


---

<!-- 
# Why research data management (RDM)?

- Increase transparency
- Make data accessible
- Save time (writing, reusing)
- Reduce the risk of data loss
- Optimize the costs
- Facilitate future reuse and sharing
- Improve citations

![bg right:40% w:400](https://rdmpromotion.rbind.io/material/CC-BY-NC/futureself.png)

--- -->

# FAIR data stewardship

- **F**indable
- **A**ccessible
- **I**nteroperable
- **R**eusable

https://doi.org/10.1038/sdata.2016.18

![bg right:45% w:600](../../../images/wilkinson2016-FAIR.png)

---

# The FAIR principles

<style scoped>

section p img {
width: 1100px;
height: 450px;
object-fit: cover;
/* object-position: 100% 100%; */
}
</style>

![](./../../../images/ceplas/fair-benefits.png)

---

# Is your data FAIR?

**F**indable | **A**ccessible | **I**nteroperable | **R**eusable

- Where do you store your data?
- How do you annotate your data?
- How do you share your data?
- What tools do you use to analyse your data?
- How do you reuse other people's data?

![bg right:40% w:500](./../../../images/user-challenges-002.svg)

<!-- 
---

# The research data life cycle

![w:350](./../../images/rdmkit-data-life-cycle-9.svg)

<span class="footer-reference">https://rdmkit.elixir-europe.org, [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)</span> 

-->

---

# MibiNet &ndash; One SFB, six locations

![w:800](./../../../images/mibinet/data-fragmentation-mibinet00.drawio.png)

---

# Data silos impede collaboration

![w:800](./../../../images/mibinet/data-fragmentation-mibinet01.drawio.png)


---

# Missing interfaces impede collaboration

![w:800](./../../../images/ceplas/hhu-services-withoutdatahub.drawio.png)

---

<!-- 

TODO 

- Galaxy
- ARC / metadata registry

-->
# MibiNet connection to NFDIs

![](../../../images/ceplas/ceplas-nfdi-connection.drawio.png)

---

# Data Stewardship between DataPLANT and the community <!-- fit -->

![w:880](./../../../images/ceplas/ceplas-dataplant-collaboration-hhu.drawio.png)

---

# Annotated Research Context (ARC)

![width:850](./../../../images/arc-data-cycle-bag.drawio.png)

Your entire investigation in a single unified bag

---

# You can store your ARC in the DataHUB

![w:800](./../../../images/dataplant-bigpicture-seq2.png)

---

# ARCs are versioned

![w:800](./../../../images/dataplant-bigpicture-seq3.png)

---

# You can invite collaborators

![w:800](./../../../images/dataplant-bigpicture-seq4.png)

---

# Collaborate and contribute

![w:800](./../../../images/dataplant-bigpicture-seq5.png)

---

# Reuse data in ARCs

![w:800](./../../../images/dataplant-bigpicture-seq6.png)

---

# Publish your ARC

![w:800](./../../../images/dataplant-bigpicture-seq7.png)

---
# Publish your ARC, get a DOI

![w:800px](../../../images/arc-seamlesspublication.svg)

---
<!-- 
# ARC as single-entry point

![w:900](./../../images/data-publications/publication-outlets.svg)

---
-->
# From ARC to repositories

<style scoped>

section p img {
width: 1000px;
height: 400px;
object-fit: cover;
object-position: 100% 80%;
/* display: block; */;
}
</style>

![](../../../images/arc-repository03-img1.png)

---


# Moving from paper to data publications

![w:400px](../../../images/data-publications/calssical-to-arc-publication.svg)


---
<!--


# Validation


![h:400](./../../images/tpj16474-fig-0008-m-modified.png)

<span class="footer-reference"> adapted from Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Validate & publish


![h:400](././../../images/tpj16474-fig-0008-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Learning from Open-Source-Software development

![w:800](./../../images/arc-validation-cqc.drawio.png)

---

# Data analysis and workflows

![w:800](./../../images/tpj16474-fig-0005-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Galaxy integration: Extra value for plant research

<div class="two-columns">
<div>

![](./../../images/galaxy-integration.drawio.png)

</div>

<div>

- Full ARC compatibility
- Automated metadata generation
- Specialized tools and workflows for ‘omics processing and analysis
- Public repository compatibility
- Galaxy teaching resource for data analysis

</div>
</div>


---

# Enabling platforms


<div class="two-columns">
  <div>
  
  - Streamlined exchange of (meta)data
  - Communication and project management
  
  </div><div>
  
  ![](./../../images/ceplas/ceplas-enablingplatforms.drawio.png)
  
  </div>
</div>


---

# Streamlined data exchange

<img src="./../../images/enablingplatform-fileshare.drawio.png" style="width:60%;display: block;margin-left: auto;margin-right: auto;">

---

# Meet your collaborators in an ARC

<img src="./../../images/enablingplatform-timeline.drawio.png" style="width:80%;display: block;margin-left: auto;margin-right: auto;">

--- 
# Mutable data life cycle

![w:700](./../../images/tpj16474-fig-0006-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

--- -->

# Project management

![w:800](./../../../images/tpj16474-fig-0007-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

<!--
---

# DataPLAN &ndash; a DataPLANT DMP generator

<span class="footer-reference">**Zhou *et al.* (2023)**, DataPLAN: a web-based data management plan generator for the plant sciences, bioRxiv 2023.07.07.548147; doi: https://doi.org/10.1101/2023.07.07.548147 </span>

https://dmpg.nfdi4plants.org

![w:800](./../../images/zhou2023-dataplan.png)

-->
---

# The ARC ecosystem

![w:850](./../../../images/arc-ecosystem-10.drawio.png)

---

# What does an ARC look like?

![width:950](./../../../images/arc-fillwithdata-seq1.png)

---

# ARCs store experimental data

![width:950](./../../../images/arc-fillwithdata-seq3.png)

---

# Computations can be run inside ARCs

![width:950](./../../../images/arc-fillwithdata-seq5.png)

---

# ARCs come with comprehensive metadata

![width:950](./../../../images/arc-fillwithdata-seq6.png)

---

# ARC builds on standards

<div class="two-columns">
  <div>
  
  ![w:500](./../../../images/arc-buildsonstandards3.png)
  
  </div>
  <div>
  
  - RO-Crate: standardized exchange
  - ISA: structured, machine-readable metadata
  - CWL: reproducible, re-usable data analysis
  - Git: version control
  
  </div>
</div>

<span class="footer-reference">https://isa-tools.org/ | https://www.commonwl.org/
https://www.researchobject.org/ro-crate/ | https://git-scm.com</span>

---
# Everything is a file

DataPLANT employs a **data-centric** approach to RDM

![w:800](./../../../images/arc-data-centric-everything-is-a-file.drawio.png)

---

# No technical lock-in

![w:1000](./../../../images/arc-tool-assistance.drawio.png)

(Meta)data transparency with tool assistance but **no technical lock-in**



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

## Hands-on part 1: Start Here guide
[**Start Here** guide](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/start-here/) in the DataPLANT knowledge base.

- follow the fictional researcher Viola on her journey to create her first ARC


---

## A small prototypic project

![](../../../images/start-here/arc-prototypic.svg)

---


## Hands-on part 1: Setup and ARCitect

Follow the [**Start Here** guide](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/start-here/) in the DataPLANT knowledge base.

:pencil: Stop after step **Describing the Investigation**

:question: Please ask if you have any question/problems :question:

---


# ARCs come with comprehensive metadata

![width:950](./../../../images/arc-fillwithdata-seq6.png)

---

# ARC builds on standards

![w:600](./../../../images/arc-buildsonstandards3.png)

<span class="footer-reference">https://isa-tools.org/ | https://www.commonwl.org/
https://www.researchobject.org/ro-crate/ | https://git-scm.com</span>

---
 
# ARC builds on ISA

![w:900](./../../../images/isamodel-arc01-img01.svg)

<span class="footer-reference">ISA Tools: https://isa-tools.org/format/specification.html</span>

---

# ARC builds on ISA to connect data

![w:1000](./../../../images/isamodel-arc01-img02.svg)

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
  
  ![w:800](./../../../images/isamodel-arc01-img02.svg)
  
  </div>
</div>



---

# Annotation by flattening the knowledge graph

![w:800](./../../../images/swate-parentchildterm.svg)

- Low-friction metadata annotation
- Familiar spreadsheet, row/column-based environment

---

# Annotation principle

![w:650](./../../../images/swate-parentchildterm2.svg)

- Low-friction metadata annotation
- Familiar spreadsheet, row/column-based environment

---

# Adding new building blocks

![w:1000](./../../../images/swate-a-newbuildingblocks.png)

Swate can be used for the annotation of **isa.study.xlsx and isa.assay.xlsx** files

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
  
  ![w:600px](./../../../images/swate-a-overview.png)
    
  </div>
</div>


Let's take a detour on [Annotation Principles](https://nfdi4plants.org/nfdi4plants.knowledgebase/docs/teaching-materials/units/AnnotationPrinciples/isa_AnnotationPrinciples-slides.html)

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

![w:750](./../../../images/swate-a-ontologytermsearch.png)

Enable **related term directed search** to directly fill cells with child terms

---

# Fill your table with ontology terms

![w:800](./../../../images/swate-a-ontologytermsearch2.png)

---

# Hierarchical combination of ontologies

![w:800](./../../../images/swate-ontologycombination.svg)

---

# Checklists and Templates

![w:800px](./../../../images/swate-templateschecklists.svg)

Metadata standards or repository requirements can be represented as templates

---

# Realization of lab-specific metadata templates

![w:650px](./../../../images/swate-metadatatemplates.png)

Facilities can define their most common workflows as templates

<style scoped>
h1{
  text-align: left
}
section {
  text-align: center;
}
</style>

---

# Directly import templates via Swate

- DataPLANT curated
- Community templates

![bg right w:450](./../../../images/swate-a-templates.png)

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

![w:600](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-modular1.svg)

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

# Realization of lab-specific metadata with templates

![w:650px](./../../../images/swate-metadatatemplates.png)

Facilities can define their most common workflows as templates

---

## Hands-on part 2: ARCitect (and Swate)

Continue the [**Start Here** guide](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/start-here/) in the DataPLANT knowledge base.

:pencil: Stop after step **Add assay data**
---

## Hands-on part 3: Data

---

## Options to annotate the data analysis

![w:900](../../../images/start-here/arc-prototypic-workflows1.svg)

---

## A computational workflow is like a protocol

![w:900](../../../images/start-here/arc-prototypic-workflows2.svg)

---

## Option I: Create a virtual assay

![w:900](../../../images/start-here/arc-prototypic-workflows-virtual.svg)

---

## Option II: Create a workflow and run

![w:900](../../../images/start-here/arc-prototypic-workflows-cwl1.svg)

---

## Use CWL to wrap your workflow

![w:900](../../../images/start-here/arc-prototypic-workflows-cwl2.svg)

---

## Hands-on part 3: Data

Continue the [**Start Here** guide](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/start-here/) in the DataPLANT knowledge base.

:pencil: We will skip the **Add a datamap** step
:pencil: Do the **Data analysis** step and stop

---

# DataHUB concepts and terminology

---

<!-- TODO 

# Terminology

- commit
- repository / repo
- push / pull
- branch / fork

# add comparison GitLab vs. Cloud Services

---
-->

# Where do I store my ARC?

![](./../../../images/arc-storagelocations-withnotes.drawio.png)

---

# ARC storage and sharing

![w:600](./../../../images/arc-storagelocations-withnotes.drawio.png)

- DataHUB as "ground truth" / original clone
- You can sync and communicate all changes to your ARC via the DataHUB

<span style="font-size:0.8em"> :bulb: ARCitect and ARC commander provide options to avoid syncing large files (LFS = Large file storage) </span>

---

# Example setup to store and use ARCs

<div class=two-columns style="font-size: 25px">

  <div>
  
  ### Personal computer

  - work on small files
  - annotate metadata
  - add scripts, protocols
  
  ### Workstation / Server

  - work on large files
  - run computations
  
  </div>
  <div>

  ### FileShare
  
  - mount to local machine, sync ARC from there
  
  ### HPC

  - direct connection HPC to DataHUB (depends on security settings)
  - or mount to local machine and sync, ARC from there
  
  
  </div>

</div>

---


# **Projects** and **Groups** are not the same

- "Project" = ARC
- "Groups" = Group of users

---

## Project = ARC

- In the DataHUB, ARCs are called "projects"; they are the same.
- An ARC can be shared with individual users (invited as "members") or a group.

---

## DataHUB Groups

- A "Group" is a group of users with specific [permissions](#roles-and-permissions)
- A group can share ARCs
- A group can be invited to an ARC
- Groups can have subgroups

---

# Options to share an ARC via the DataHUB

<img src="./../../../images/arc-sharing-options.drawio.png" style="display: block; margin: auto" width=700px>

---

# Namespaces

- Every user has a personal namespace, where they can upload or create new ARCs
- Every group and subgroup has its own namespace

<div class="table-container" style="font-size: 25px">

Type | URL | Namespace | Name
--- | --- | --- | --- 
A **personal** ARC | https://git.nfdi4plants.org/brilator/Facultative-CAM-in-Talinum | `brilator` | Dominik Brilhaus
An **group**-shared ARC | https://git.nfdi4plants.org/hhu-plant-biochemistry/Samuilov-2018-BOU-PSP | `hhu-plant-biochemistry` | HHU Plant Biochemistry

</div>

:bulb: **Personal** is not the same as **private**

---

# Visibility

The visibility of ARCs and groups can be managed individually for each ARC or group
  
<img src="./../../../images/arc-sharing-visibility.drawio.png" style="display: block; margin: auto" width=800px>

:bulb: By default every ARC and every group is set to **private**.

---

# Permissions & Roles

When inviting new members to an ARC or group, you can choose between different levels.

<img src="./../../../images/arc-sharing-permissionsroles.drawio.png" style="display: block; margin: auto" width=800px>

:bulb: By default you are **Owner** of an ARC you create or upload to the DataHUB.

---

# ARC DataHUB members // ARC Investigation contacts <!-- fit -->

![](./../../../images/arc-sharing-membersvscontacts.drawio.png)

:bulb: Investigation contacts are not automatically invited as members to the ARC.

---

# Hands-on part 4: DataHUB

---

# DataHUB overview

![w:900px](./../../../images/dataplant-bigpicture-seq8.png)

---

# ARC builds on standards + Git

![w:900](./../../../images/arc-buildsonstandards2.png)

---

# The DataPLANT DataHUB &ndash; a GitLab ***Plus***

![](./../../../images/datahub/datahub-gitlab.drawio.png)

---

# On-premise DataHUBs

![alt text](../../../images/datahub/datahub-onpremise.drawio.png)

ARC services are available as on-premise option


---

## Using the DataHUB to collaborate

![](../../../images/start-here/collaboration-plantdatahub.svg)

---

## Project management

![w:800](../../../images/tpj16474-fig-0007-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

## ARCs come with their own wiki space

<div class="two-columns">

<div style="font-size: 27px">

- directly associated to your ARC
- same access rights as your ARC
- share meeting minutes or ideas with collaboration partners
- keep ARC clean of files that are not considered "research data"

</div>

<div>

![w:600](../../../images/datahub/datahub-wiki.png)

</div>
</div>



---

## Hands-on part 4: DataHUB

Continue the [**Start Here** guide](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/start-here/) in the DataPLANT knowledge base.

:pencil: Until the final **complete** step

---
# elabFTW Introduction

---
# Login into eLabFTW HHU


![alt text](../../../images/elabftw/elabftw-hhu-login.png)

---

# eLab-FTW - Dashboard


![alt text](../../../images/elabFTW/elabFTW-dashboard.png)

---

# eLabFTW - Experiment panel


![alt text](../../../images/elabFTW/elabFTW-experiment-panel.png)

Default "working area" for protocols of daily lab work

---

# eLabFTW - Resource panel


![alt text](../../../images/elabFTW/elabFTW-resource-panel.png)

Place to categorize content

---

# eLabFTW - Experiment information


![alt text](../../../images/elabFTW/elabftw-experiment-settings.png)

---

# eLabFTW - Tag usage

Very individual, some examples:
- Investigation ID
- Subgroup
- Organism /part (e.g. A.taliana, leaf, root, mitrochondria)
- Goal (strain generation, plasmid genertion)
- Methode (e.g. transformation, western blot, extraction, biolector)
- Genes/ Proteins (e.g. mKate2, eGfp, Rrm4)

Use keywords you would search/filter for
:pencil: Make rules for tag usage 

---

# eLabFTW - Extra fields

![w:400](../../../images/elabFTW/elabftw-extra-field.png)

---

# eLabFTW - Extra fields examples 

Dropdown            |  URL | Number          |  Date
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![alt text](../../../images/elabFTW/elabftw-extra-field-ex1.png)  |  ![alt text](../../../images/elabFTW/elabftw-extra-field-ex2.png) | ![alt text](../../../images/elabFTW/elabftw-extra-field-ex3.png) | ![alt text](../../../images/elabFTW/elabftw-extra-field-ex4.png)

---

# eLabFTW - Experiment categories examples

- Study
- Assay
- Discussion
- Teaching
- Demo
- R&D
- Production

---

# eLabFTW - Categories in Resources 

Use Resources to categorize content & manage lab
 Use unique identifier & naming conventions ( e.g. Methode MTH0001, Media MED0001, Plasmid PL0001)
  - Investigation
  - Plant sheet
  - Plasmid sheet
  - Collections
  - Methode
  - Manual
  - Media & Solution
  - Formblatt Z
  - Equipment

---

# eLabFTW - Scheduler

![w:900](../../../images/elabFTW/elabftw-scheduler.png)

---

# eLabFTW - Booking parameter

You can modify booking parameter for reach Resource

![alt text](../../../images/elabFTW/elabftw-booking-parameter.png)

---

# eLabFTW - Templates

---

# eLabFTW - Tipps and tricks

---
# eLabFTW - Support


---

# elab2ARC Documentation

https://nfdi4plants.github.io/nfdi4plants.knowledgebase/resources/elab2arc/

---



## Conversion 

![alt text](../../images/elabftw/elabftw-hhu-login.png)



The elab2ARC tool will automatically convert your elabFTW experiments into ARC format
- create a new assay folder with eLabFTW experiment name as assay name (green)
- create the assay folder structure (dataset/protocols/isa.assay)
- convert experiment main text into a .md file and store it in the protocol folder (purple)
- add all attachments of the eLabFTW experiment into the dataset folder (yellow)
- enter name/email/affiliation of the eLabFTW experiment metadata into the isa.assay sheet


---
