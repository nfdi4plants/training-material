---
marp: true
layout: slides
theme: marp-theme_dataplant-ceplas-ccby
paginate: true
title: 2024-11-11_ceplas_phd-module-2024
date: 2024-10-31
---


## Good Data Management Practices

<!--  _color: white; -->
<!-- _paginate: false -->
<style scoped>section {background: none; background-color: white;}</style>

*part of M4468 &ndash; Plant developmental genetics, evolution<br>and biostatistics in the CEPLAS research program*

November 10<sup>th</sup>, 2024

Vittorio Tracanna, Dominik Brilhaus
CEPLAS Data

![bg fit](./../../../images/ceplas/ceplas-background-title.drawio.svg)

---

# Welcome

---

# House-keeping

Pad: https://pad.hhu.de/0NdPKO5LQ5CHBRN2iuG91Q
 
---

# Materials

Slides will be shared via DataPLANT knowledge base and the Sciebo folder

---

# Tentative agenda

<div class="two-columns">
  <div>
  
  ## Day 1
  
  Time | Topics
  -------- | --------
  09:30 - 10:45 | Intro to RDM and ARC
  10:45 - 11:00 | *Short break*
  11:00 - 12:00 | ARC Hands-on
  12:30 - 13:30 | *Lunch*
  13:00 - 15:30 | Data storage and sharing
  15:30 - 16:00 | Wrap-up
  
  </div>
  <div>
  
  ## Day 2
  
  Time | Topics
  -------- | --------
  09:30 - 10:30 | ARC Feedback session
  10:30 - 10:45 | *Short break*
  10:45 - 12:00 | ISA and Metadata
  12:30 - 13:30 | *Lunch*
  13:00 - 15:00 | Hands-on Swate
  15:00 - 15:30 | ARC ecosystem: Additional features
  15:30 - 16:00 | Wrap-up
  
  </div>
</div>

---

# Goals

- Appreciate FAIR principles
- Learn tools and services for FAIR data management
- Effectively manage your own research data

---

# Introduce yourself

- Used code / programming language before
- Experience with Git / GitLab / GitHub?
- Have an ORCID
- My motivation / expectation
- My favorite lab assay

---

# Let's draw a typical lab workflow :pencil:


---

# Why Research Data Management (RDM)?

- Increase transparency
- Make data accessible
- Save time (writing, reusing)
- Reduce the risk of data loss
- Optimize the costs
- Facilitate future reuse and sharing
- Improve citations

![bg right:40% w:400](https://rdmpromotion.rbind.io/material/CC-BY-NC/futureself.png)

---

# The Research Data Lifecycle

![h:500](./../../../images/teaching-rdm-fundamentals/researchdatalifecycle-seq1.png)

---

# The Research Data Lifecycle

![h:500](./../../../images/teaching-rdm-fundamentals/researchdatalifecycle-seq2.png)

---

# The Research Data Lifecycle

![h:500](./../../../images/teaching-rdm-fundamentals/researchdatalifecycle-seq3.png)

---

# The Research Data Lifecycle

![h:500](./../../../images/teaching-rdm-fundamentals/researchdatalifecycle-seq4.png)

---

# The Research Data Lifecycle

![h:500](./../../../images/teaching-rdm-fundamentals/researchdatalifecycle-seq5.png)

---

# The Research Data Lifecycle

![h:500](./../../../images/teaching-rdm-fundamentals/researchdatalifecycle-seq6.png)

---

# The Research Data Lifecycle

![h:500](./../../../images/teaching-rdm-fundamentals/researchdatalifecycle-seq7.png)

---

# The Research Data Lifecycle ***is mutable***

![h:500](./../../../images/teaching-rdm-fundamentals/researchdatalifecycle-seq9.png)

---

# FAIR

- **F**indable
- **A**ccessible
- **I**nteroperable
- **R**eusable

https://doi.org/10.1038/sdata.2016.18

![bg right:45% w:600](./../../../images/wilkinson2016-fair.png)

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

---

## Findable

> The first step in (re)using data is to find them. Metadata and data should be easy to find for both humans and computers. Machine-readable metadata are essential for automatic discovery of datasets and services, so this is an essential component of the FAIRification process.

- F1. (Meta)data are assigned a globally unique and persistent identifier.
- F2. Data are described with rich metadata (defined by R1 below).
- F3. Metadata clearly and explicitly include the identifier of the data they describe.
- F4. (Meta)data are registered or indexed in a searchable resource.

<span class="footer-reference">https://www.go-fair.org/fair-principles/<span>

---

## Accessible

> Once the user finds the required data, she/he/they need to know how they can be accessed, possibly including authentication and authorisation.

- A1. (Meta)data are retrievable by their identifier using a standardised communications protocol
  - A1.1 The protocol is open, free, and universally implementable
  - A1.2 The protocol allows for an authentication and authorisation procedure, where necessary
- A2. Metadata are accessible, even when the data are no longer available

<span class="footer-reference">https://www.go-fair.org/fair-principles/<span>

---

## Interoperable

> The data usually need to be integrated with other data. In addition, the data need to interoperate with applications or workflows for analysis, storage, and processing.

- I1. (Meta)data use a formal, accessible, shared, and broadly applicable language for knowledge representation.
- I2. (Meta)data use vocabularies that follow FAIR principles.
- I3. (Meta)data include qualified references to other (meta)data.

<span class="footer-reference">https://www.go-fair.org/fair-principles/<span>

---

## Reusable

> The ultimate goal of FAIR is to optimise the reuse of data. To achieve this, metadata and data should be well-described so that they can be replicated and/or combined in different settings.

- R1. (Meta)data are richly described with a plurality of accurate and relevant attributes
- R1.1. (Meta)data are released with a clear and accessible data usage license
- R1.2. (Meta)data are associated with detailed provenance
- R1.3. (Meta)data meet domain-relevant community standards

<span class="footer-reference">https://www.go-fair.org/fair-principles/<span>

---

# FAIR on multiple layers

> The principles refer to three types of entities: **data** (or any digital object), **metadata** (information about that digital object), and **infrastructure**.

<span class="footer-reference">https://www.go-fair.org/fair-principles/<span>

---


# CEPLAS &ndash; One cluster, four locations

![w:800](./../../images/ceplas/ceplas-data-fragmentation00.drawio.png)

---

# Data silos impede collaboration

![w:800](./../../images/ceplas/ceplas-data-fragmentation01.drawio.png)

---

# Data silos impede collaboration

![w:800](./../../images/ceplas/ceplas-data-fragmentation02.drawio.png)

---

# Missing interfaces impede collaboration

![w:800](./../../images/ceplas/hhu-services-withoutdatahub.drawio.png)

---


# :pencil: Understand your colleague’s project :pencil:

1. Go to the shared folder prepared before class
1. Try to identify one experiment that led to results (e.g. a figure in the thesis)
1. What are the samples (e.g. plants, bacteria)?
1. How were the samples prepared (~ materials)?  
1. How was the experiment performed (~ methods)?
1. What is the raw data (~ results)?
1. How was the data analyzed (~ computational methods, statistics)?  
1. Collect all of the above in a `README_<YourArbitraryParticipantID>.txt` in the same folder.

---

# Assignment

Participant | looks at project of
--- | ---
Participant01 | Participant02
Participant02 | Participant03
… | …
Participant n | Participant n+1

---


# DataPLANT &ndash; <br>The NFDI4Plants

![bg right:50% width:500px](./../../../images/dataplant-taskareas.svg)

- NFDI: "Nationale Forschungsdaten Infrastruktur" &ndash; [www.nfdi.de](https://www.nfdi.de/)
- Funded since end of 2020

---

# Data Stewardship between DataPLANT and the community <!-- fit -->

![w:880](./../../../images/ceplas/ceplas-dataplant-collaboration.drawio.png)

---

# Annotated Research Context (ARC)

![width:800](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-bag.svg)

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

# ARC as single-entry point

![w:900](./../../../images/arc-publication-outlets.drawio.png)

---

# Data analysis and workflows

![w:800](./../../../images/tpj16474-fig-0005-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Galaxy integration: Extra value for plant research

<div class="two-columns">
<div>

![](./../../../images/galaxy-integration.drawio.png)

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
  
  ![](./../../../images/ceplas-ceplas/ceplas-enablingplatforms.drawio.png)
  
  </div>
</div>


---

# Streamlined data exchange

<img src="./../../../images/enablingplatform-fileshare.drawio.png" style="width:60%;display: block;margin-left: auto;margin-right: auto;">

---

# Meet your collaborators in an ARC

<img src="./../../../images/enablingplatform-timeline.drawio.png" style="width:80%;display: block;margin-left: auto;margin-right: auto;">

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

The ARC is a **data-centric** approach to RDM

![w:800](./../../../images/arc-data-centric-everything-is-a-file.drawio.png)

---

# No technical lock-in

![w:1000](./../../../images/arc-tool-assistance.drawio.png)

(Meta)data transparency with tool assistance but **no technical lock-in**

---

---


# CEPLAS connection to the NFDI

![](../../../images/ceplas-nfdi-connection-light.drawio.png)

---

# Data Stewardship between DataPLANT and the community <!-- fit -->

![w:880](./../../../images/ceplas/ceplas-dataplant-collaboration.drawio.png)

---

# The DataPLANT DataHUB &ndash; a GitLab ***Plus***

![](./../../../images/datahub/datahub-gitlab.drawio.png)

---

# On-premise DataHUBs

![alt text](../../../images/datahub/datahub-onpremise.drawio.png)

ARC services are available as on-premise option

---

# HHU-DataHUB

![w:800](./../../../images/ceplas/hhu-datahub.drawio.png)

---

# HHU-DataHUB

- FAIR data along the research data cycle
- Structured exchange of (meta)data
- Local (long-term) storage, backup, version control
- Integration of existing services and infrastructure
- External collaboration

![bg right:45% w:500](./../../../images/ceplas/hhu-datahub.drawio.png)

---

# HHU-DataHUB &ndash; Node for platforms


![w:900](./../../../images/ceplas-ceplas/ceplas-enablingplatforms-logos.drawio.png)

---

# Embedded into an RDM network

![w:600](./../../../images/datahub/datahub-network-putative.drawio.png)

---

# CEPLAS collaborates with DataPLANT and NFDI4BIOIMAGE <!-- fit -->

![w:700](./../../../images/ceplas/ceplas-dataplant-collaboration-nfdi4bi.drawio.png)

---

# CEPLAS Research Data Policy

<div class="two-columns">
  <div>
  
  ![](./../../../images/ceplas-policy-title.png)
  
  </div>
  <div>

  ![](./../../../images/ceplas-arcs.drawio.svg)
    
  </div>
</div>

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

---


# Metadata and standards

---

# What is <br> **metadata**?

<style scoped>
section {
  text-align: center;
  background: #F9CD69;
}
section::after {
  display: none;
}
footer {
  display: none;
}
</style>

<!-- 
Exercise: Association map

Online: Let participants annotate (via video conference tool)
Presence: Draw map on (white) board

-->

---

# Viola's PhD Project

Exercise: Take 5 minutes to note down the metadata

<style scoped>
section {
  text-align: justify;  
}
</style>

Viola investigates the effect of the plant circadian clock on sugar metabolism in *W. mirabilis*. For her PhD project, which is part of an EU-funded consortium in Prof. Beetroot's lab, she acquires seeds from a South-African botanical society. Viola grows the plants under different light regimes, harvests leaves from a two-day time series experiment, extracts polar metabolites as well as RNA and submits the samples to nearby core facilities for metabolomics and transcriptomics measurements, respectively. After a few weeks of iterative consultation with the facilities' heads as well as technicians and computational biologists involved, Viola receives back a wealth of raw and processed data. From the data she produces figures and wraps everything up to publish the results in the Journal of Wonderful Plant Sciences.

---

# Metadata everywhere

<style scoped>
section {
  text-align: justify;  
}
</style>

`Viola` investigates the `effect of the plant circadian clock` on `sugar metabolism` in *`W. mirabilis`*. For her `PhD project`, which is part of an `EU-funded consortium` in `Prof. Beetroot's lab`, she acquires `seeds` from a `South-African botanical society`. Viola `grows the plants` under `different light regimes`, harvests `leaves` from a `two-day time series experiment`, extracts `polar metabolites` as well as `RNA` and submits the samples to nearby `core facilities for metabolomics and transcriptomics` measurements, respectively. `After a few weeks` of iterative consultation with the facilities' heads as well as `technicians` and `computational biologists` involved, Viola receives back a wealth of `raw and processed data`. From the data she `produces figures` and wraps everything up to `publish the results in the Journal of Wonderful Plant Sciences`.

---

# Project metadata

<style scoped>
.columns {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 1rem;
}
ul {
    margin: 5; padding: 0;
}
</style>

<div class="columns">
<div class="columns-left">

### project design

- researcher
- institute and project
- biological context
- research question
- purpose of data collection
- ...

</div>
<div class="columns-right">

### experimental processes

- origin and nature of the biological material
- lab protocols
- instrument model
- ...

</div>

<div class="columns-right">

### data-analytical processes

- algorithms
- tools
- software versions and dependencies employed
- ...

</div>
</div>

---

# Other types of metadata

<style scoped>
.columns {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 1rem;
}
ul {
    margin: 5; padding: 0;
}
</style>

<div class="columns">
<div class="columns-left">

### bibliographic

- Title
- Publication date and title
- Description
- Author
- Contacts
- Keywords
- ...

</div>
<div class="columns-right">

### legal or administrative

- data origin, ownership, rovenance,
- licensing
- ethical aspects
- ...

</div>

<div class="columns-right">

### technical

- expected data volume
- storage location
- file formats
- ...

</div>
</div>

---

# Metadata from a FAIR perspective

<style scoped>
.columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 4rem;
}

</style>

<div class="columns">
<div class="columns-left">

**Findable**

- metadata names the content of the data
- basis for search engines
- makes it categorizable for people and machines

**Accessible**

- information about origin
- location of storage
- access rights

</div>

<div class="columns-right">

**Interoperable**

- metadata identifies software and file formats
- required conversions between file formats

**Reusable**

- obtain and reuse research data according to clear rules described in licenses

</div>
</div>

---

# Metadata "Standards"

Examples from [Minimum Information for Biological and Biomedical Investigations (MIBBI)](https://fairsharing.org/3518):

- MIAPPE | Minimum Information About a Plant Phenotyping Experiment <https://www.miappe.org>
- MIAME | Minimum Information About a Microarray Experiment <https://www.fged.org/projects/miame/>
- MIAPE | Minimum Information About a Proteomics Experiment <https://www.psidev.info/miape>
- MINSEQE | Minimum Information about a high-throughput SEQuencing Experiment <https://www.fged.org/projects/minseqe>

:bulb: Check out <https://fairsharing.org/> for more examples

---

# Metadata standards ≈ Checklists

- Determine (minimal) required information
- Usually **do not** determine the format (i.e. shape or file type)

---

# A small Interactive detour

-> favorite Movie

<!-- 

- let participant name a movie
- how do you find out the actors, director, release year, etc.? 
- => google.com
- google movie - see knowledge graph to the right
  - how does google know all that?!
- ===> schema.org

 -->

---

# How does google "know"?!

![w:800](./../../../images/teaching-ontologies/googlecom-screenshot-kg.png)

---

# Schemas and machine-readability

---

## Structured data and the internet

Schema.org

- create, maintain, and promote schemas for structured data on the Internet, on web pages, in email messages, ...
- Structured data can be used to ***mark up*** all kinds of items from products to events to recipes
- Communicate with search engines (-> SEO, search engine optimization)
- Enhance findability from search engine results
- Provide context to an ambigous webpage
- Metadata interoperability and standardization across all website using schema.org

--- 

## Structured data and the internet: Schema.org

<style scoped>
code {
    display: inline-block;
    width: 700px;
    font-size: 18px;
}
</style>

<https://schema.org/Person>

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Person",
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "Seattle",
    "addressRegion": "WA",
    "postalCode": "98052",
    "streetAddress": "20341 Whitworth Institute 405 N. Whitworth"
  },
  "colleague": [
    "http://www.xyz.edu/students/alicejones.html",
    "http://www.xyz.edu/students/bobsmith.html"
  ],
  "email": "mailto:jane-doe@xyz.edu",
  "image": "janedoe.jpg",
  "jobTitle": "Professor",
  "name": "Jane Doe",
  "telephone": "(425) 123-4567",
  "url": "http://www.janedoe.com"
}
</script>
```

---

## JSON-LD

<style scoped>
code {
    display: inline-block;
    width: 700px;
}
</style>

JSON-LD = JavaScript Object Notation for Linked Data

```json
<script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "SportsTeam",
    "name": "San Francisco 49ers",
    "member": {
      "@type": "OrganizationRole",
      "member": {
        "@type": "Person",
        "name": "Joe Montana"
      },
      "startDate": "1979",
      "endDate": "1992",
      "roleName": "Quarterback"
    }
  }
</script>
```

---

## RDFa

RDFa = Resource Description Framework in Attributes

```
<div vocab="http://schema.org/" typeof="SportsTeam">
  <span property="name">San Francisco 49ers</span>
  <div property="member" typeof="OrganizationRole">
    <div property="member" typeof="http://schema.org/Person">
      <span property="name">Joe Montana</span>
    </div>
    <span property="startDate">1979</span>
    <span property="endDate">1992</span>
    <span property="roleName">Quarterback</span>
  </div>
</div>
```

---

# Standards

### Dublin Core

<https://www.dublincore.org/schemas/>

### DataCite Schema

- Schema: <http://schema.datacite.org/meta/kernel-4.3/metadata.xsd>
- Full Example: <https://schema.datacite.org/meta/kernel-4.3/example/datacite-example-full-v4.xml>

---

## DataCite Schema: Simple Example

<style scoped>
code {
    /*display: inline-block;*/
    font-size: 12px;
}
</style>

```xml
...
  <identifier identifierType="DOI">10.5072/D3P26Q35R-Test</identifier>
  <creators>
    <creator>
      <creatorName nameType="Personal">Fosmire, Michael</creatorName>
      <givenName>Michael</givenName>
      <familyName>Fosmire</familyName>
    </creator>
    <creator>
      <creatorName nameType="Personal">Wertz, Ruth</creatorName>
      <givenName>Ruth</givenName>
      <familyName>Wertz</familyName>
    </creator>
    <creator>
      <creatorName nameType="Personal">Purzer, Senay</creatorName>
      <givenName>Senay</givenName>
      <familyName>Purzer</familyName>
    </creator>
  </creators>
  <titles>
    <title xml:lang="en">Critical Engineering Literacy Test (CELT)</title>
  </titles>
  <publisher xml:lang="en">Purdue University Research Repository (PURR)</publisher>
  <publicationYear>2013</publicationYear>
  <subjects>
    <subject xml:lang="en">Assessment</subject>
    <subject xml:lang="en">Information Literacy</subject>
    <subject xml:lang="en">Engineering</subject>
    <subject xml:lang="en">Undergraduate Students</subject>
    <subject xml:lang="en">CELT</subject>
    <subject xml:lang="en">Purdue University</subject>
  </subjects>
  <language>en</language>
  <resourceType resourceTypeGeneral="Dataset">Dataset</resourceType>
...
```

<https://schema.datacite.org/meta/kernel-4.3/example/datacite-example-dataset-v4.xml>

---

# Ontologies

---

# Ontology

(Sometimes also referred to "semantic model")

An ontology combines features of

- a **dictionary**,
- a **taxonomy**, and
- a **thesaurus**

---

## Dictionary

Alphabetically lists terms and their definitions
<br>

**Pizza**: *"a dish made typically of flattened bread dough spread with a savory mixture usually including tomatoes and cheese and often other toppings and baked"*

---

## Taxonomy

Hierarchy or classification

![bg right:60% w:780](./../../../images/teaching-ontologies/ontologies-pizzaanalogy-seq1.png)

---

## Thesaurus

Dictionary of synonyms and relations
<br>

**Pizza** ≈ Lahmacun ≈ Focaccia ≈ Flammkuchen

---

# Ontology

- Structures a set of **concepts** in a particular area and the relations between them in a **graph-like manner**
- Can be used in disambiguation, defining hierarchies, a standard to define terms
- Define a common vocabulary of concepts and their relationships to **model** a particular domain while making it **machine understandable**

---

# The semantic triple

![w:1000](./../../../images/teaching-ontologies/ontologies-pizzaanalogy-seq2.png)

---

# Modeling a pizza menu

![w:1000](./../../../images/teaching-ontologies/ontologies-pizzaanalogy-seq3.png)

---

# Modeling a pizza menu

![w:1000](./../../../images/teaching-ontologies/ontologies-pizzaanalogy-seq4.png)

---

# Modeling a pizza menu

![w:1000](./../../../images/teaching-ontologies/ontologies-pizzaanalogy-seq5.png)

---

# Predicates have two directions

![w:1000](./../../../images/teaching-ontologies/ontologies-pizzaanalogy-seq6.png)

---

# Looking at the menu from a different perspective

An object of one triplet can be the subject to another

![w:1000](./../../../images/teaching-ontologies/ontologies-pizzaanalogy-seq7.png)

---

# (Towards) a knowledge graph

![w:1020](./../../../images/teaching-ontologies/ontologies-pizzaanalogy-seq8.png)

---

# Searching the menu

An ontology can be queried:

- *"name all pizzas with topping mushrooms"*

![bg right w:1020](./../../../images/teaching-ontologies/ontologies-pizzaanalogy-seq9.png)

<!-- 
TODO: 
- This is actually not a proper ontology(!), but rather a knowledge graph (= ontology + data)

-->

---

# The Pizza Ontology

- Example from protege: <https://protege.stanford.edu/ontologies/pizza/pizza.owl>
- Visualize via WebVOWL <http://vowl.visualdataweb.org/webvowl.html>

---

# Example ontologies

### EDAM ontology

- Description: <http://edamontology.org/page>
- Browser: <https://edamontology.github.io/edam-browser>

### PECO ontology

- Human-readble: <https://www.ebi.ac.uk/ols/ontologies/peco>
- Raw (OWL): <http://purl.obolibrary.org/obo/peco.owl>

> Explore more examples
>
> - <https://www.ebi.ac.uk/ols/>
> - <https://bioportal.bioontology.org>

<!-- 

LIVE-Demo 
- Search an "interesting" term from PECO in browser (EBI OLS)
  - Example: 
    - plant exposure
       abiotic plant exposure
          physical plant exposure
            water environment exposure
              drought environment exposure
- Show the graph view (and expand it interactively)
- Mention that terms (subjects, objects) and properties (predicates) have "URIs", "PIDs"
- Show that terms can have alternative / external IDs and link to "outdated" ontologies

-->

---

# ARC builds on ISA

![w:900](./../../../images/isamodel-arc01-img01.svg)

<https://isa-tools.org/format/specification.html>

---

# ARC builds on ISA

![w:900](./../../../images/isamodel-arc01-img02.svg)

---

# Annotation by flattening the knowledge graph

![w:800](./../../../images/swate-parentchildterm.svg)

- Low-friction metadata annotation
- Familiar spreadsheet, row/column-based environment

---

# Annotation principle

<!-- <style scoped>
section p img{
  /* padding-left: 230px */
}  
</style> -->

![w:650](./../../../images/swate-parentchildterm2.svg)

- Low-friction metadata annotation
- Familiar spreadsheet, row/column-based environment

---

# Annotation Building Block types <!--fit-->

<style scoped>

section{
    font-size: 25px
}

</style>

![bg right w:700](./../../../images/swate-overview.svg)

- Source Name (Input)
- Protocol Columns
  - Protocol Type, Protocol Ref
- Characteristic
- Parameter
- Factor
- Component
- Output Columns
  - Sample Name, Raw Data File, Derived Data File

Let's take a detour on [Annotation Principles](https://nfdi4plants.org/nfdi4plants.knowledgebase/docs/guides/isa_AnnotationPrinciples.html) | [slides](https://nfdi4plants.org/nfdi4plants.knowledgebase/docs/teaching-materials/units/AnnotationPrinciples/isa_AnnotationPrinciples-slides.html)

---


# Realization of lab-specific metadata templates

![w:700px](./../../../images/swate-metadatatemplates.png)

Facilities can define their most common workflows as templates

---
---

# Build on existing well-established standards

![w:800](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/standards.svg)

Integration of established (meta)data standards ensures compatibility by design

---

# ISA abstract model in a nutshell

![w:800](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/standards-isa-in-a-nutshell.svg)

---

# ISA and CWL – Connected by similarity

![w:800](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/standards-isa-cwl.svg)

---


<style>
.columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 20px;
}
</style>

# Code Notebooks and IDEs

<div class="columns">
<div class="columns-left">

- Visual Studio Code: https://code.visualstudio.com/
- RMarkdown: http://rmarkdown.rstudio.com
- Jupyter Notebooks: https://jupyter.org/ 

</div>

<div class="columns-right" style="list-style-type: none;">

- 🟢 Interactive (good start for non-coders)
- 🟢 Document and comment code
- 🟢 Often offer integrated version control (e.g. git plugin)
- 🟠 Executable code + "result preview"
- 🟠 Reproducibility (package / library dependencies)


</div>


</div>
</div>

---

# Computational workflow languages

<div class="columns">
<div class="columns-left">

- Describe analysis workflows and tools
- Make them portable and scalable
- Across a variety of environments (software and hardware)

</div>

<div class="columns-right">

<!-- - <https://www.docker.com>
- singularity -->
<https://www.commonwl.org>
<https://www.nextflow.io>
<https://nf-co.re/>
<https://snakemake.github.io>
<br>
<https://galaxyproject.eu/>

</div>

---


# Hands-on part 2: ARCitect (and Swate)

Follow the **Start Here** guide in the DataPLANT knowledge base.

Until "Data analysis"

---

## Identifying assays

![](../../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-identify.svg)

---

## Assay for sugar measurement

![w:900](../../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-sugar.svg)

---

## Separating different assay elements

![w:800](../../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-modular2.svg)

---

## Isolating the lab processes in an assay

![w:600](../../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-modular1.svg)

---

## Parameteterization: sugar extraction

- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> Vortex Mixer
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> 3 seconds
- <span style="display: inline-block;width: 1em;height: 1em;background-color: #FFC000;"></span> Temperature  
  - <span style="display: inline-block;width: 1em;height: 1em;background-color: #2D3E50;"></span> 95 degree celsius

![bg right w:600](../../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-labprocess1-extraction.svg)

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

![bg right w:600](../../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-labprocess2-measurement.svg)

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

![](../../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-sop-proteomics.svg)
</div>

</div>

---

## Applying standard procedures to sample record

![w:700](../../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-assay-sop.svg)

---

# Realization of lab-specific metadata with templates

![w:650px](./../../../images/swate-metadatatemplates.png)

Facilities can define their most common workflows as templates


---
---

## Options to annotate the data analysis

![w:900](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-workflows1.svg)

---

## A computational workflow is like a protocol

![w:900](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-workflows2.svg)

---

## Option I: Create a virtual assay

![w:900](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-workflows-virtual.svg)

---

## Option II: Create a workflow and run

![w:900](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-workflows-cwl1.svg)

---

## Use CWL to wrap your workflow

![w:900](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-workflows-cwl2.svg)

---
---


# Q&A and Wrap-up Day1

---

# Preparation for next day

- Please try to prepare your own ARC
- Please install SWATE

---

# Resources

### <img align="left" style="height:35px" src='https://raw.githubusercontent.com/nfdi4plants/Branding/7e7d442aafeaa767b9c14a63a16e459dadcbdaaf/logos/DataPLANT/dataplant-logo-minimal-rounded-bg-darkblue.svg'/> DataPLANT (nfdi4plants)

Website: <a href="https://nfdi4plants.org/" target="_blank">https://nfdi4plants.org/</a>
Knowledge Base: <a href="https://nfdi4plants.org/nfdi4plants.knowledgebase/" target="_blank">https://nfdi4plants.org/nfdi4plants.knowledgebase/</a>
DataHUB: <a href="https://git.nfdi4plants.org" target="_blank">https://git.nfdi4plants.org</a>


GitHub: <a href="https://github.com/nfdi4plants" target="_blank">https://github.com/nfdi4plants</a>
HelpDesk: <a href="https://helpdesk.nfdi4plants.org" target="_blank">https://helpdesk.nfdi4plants.org</a>

:bulb: You can help us by raising issues, bugs, ideas...

---

# Overview of Institutional services at UoC and HHU

<style scoped>
section {font-size: 25px;}
</style>


### UoC

- C3RDM: https://fdm.uni-koeln.de/en/home
- Data storage and sharing: https://rrzk.uni-koeln.de/daten-speichern-teilen
- HPC: https://rrzk.uni-koeln.de/hpc-projekte 
- service overview: https://fdm.uni-koeln.de/en/rdm-services/service-catalogue

### HHU

- RDM Competence Center: https://www.fdm.hhu.de
- Support for research including HPC: https://www.zim.hhu.de/servicekatalog/forschungsunterstuetzung 
- Processing & storing data: https://www.zim.hhu.de/servicekatalog/rechnen-und-speichern

---

# Five-Finger-Feedback

<style scoped>
section {
  text-align: center;
  /* background: #F9CD69; */
}
</style>

![width:800px](./../../../images/teaching-toolbox/feedback01-fivefinger.drawio.svg)

<!-- 
- Invite participants to give feedback
- If feasible, collect transparently on a board or in a markdown pad, etc. 

# Five-Finger-Feedback

...was too short | I'm happy with... | I did not like at all ...| This idea or advice was good: ... | I really liked ...  
---|---|---|---|---
... | ... | ... | ... | ...

-->

---


## Good Data Management Practices

<!--  _color: white; -->
<!-- _paginate: false -->
<style scoped>section {background: none; background-color: white;}</style>

*part of M4468 &ndash; Plant developmental genetics, evolution<br>and biostatistics in the CEPLAS research program*

November 12<sup>th</sup>, 2024

Vittorio Tracanna, Dominik Brilhaus
CEPLAS Data

![bg fit](./../../../images/ceplas/ceplas-background-title.drawio.svg)

---

# House-keeping

Pad:  https://pad.hhu.de/0NdPKO5LQ5CHBRN2iuG91Q

---


# Points to discuss from and since day 1

---


# Data Storage and Versioning

---

# Data stores

![w:900](././../../../images/teaching-storage-backup/data-stores.drawio.svg)

---

# Backup vs. Archive

| <br>         | Backup              | Archive                       |
|--------------|---------------------|-------------------------------|
| Storage type | Short-, mid-term    | Long-term                     |
| Purpose      | Disaster recovery   | Long-term storage, compliance |
| Reason       | Duplication         | Migration                     |
| Usage        | Work in progress    | Cold, Unused data             |
| Changes      | Short-term updates  | No updates                    |
| Trend        | Cyclic, Replacement | Growing                       |
| Latency      | Short/Costly        | High/Cheaper                  |

---

# 3-2-1 backup rule

![w:800](././../../../images/teaching-storage-backup/3-2-1-backup-rule.drawio.svg)

---

# Version control and track changes

It’s good practice to document:

- What was changed?
- Who is responsible?
- When did it happen?
- Why the changes?

---

# Types of Version Control

- by file name (_v1, _v2)
- cloud services
  - dropbox, icloud, gdrive
- distributed version control system
  - e.g. Git

---

# Which files need to be "versioned"? :pencil: 

- paper manuscript (.docx)
- single-cell RNASeq reads (.fastq.gz)
- spread sheet with photometer measurements (.xlsx)
- calendar invitation (.ical)
- photo of SDS-PAGE (.jpeg)
- excel workbook with calculations (.xlsx)
- presentation for a conference (.pdf)
- data analysis script (.py)

<!--

## No versioning

- "Raw data" or "original data" > backup and do not touch
- do not calculate anything in measurement excel workbooks

## Versioning

anything that is (frequently) updated
- manuscripts
- calculations
- workflows
- scripts

## Does not matter

things you use and ignore
- calendar invitations

-->

---

# Concept of Git and git-based platforms

---

# Cloud Services

![bg right:50% w:800](./../../../images/teaching-git/datasharing-cloud.png)

<span style="color:#B4CE82">✓ Documents</span>  
<span style="color:#B4CE82">✓ Small data</span>  
<span style="color:#B4CE82">✓ Presentations</span>  

<span style="color:#c21f3a">X  Code</span>  
<span style="color:#c21f3a">X  Data analytical projects</span>  
<span style="color:#c21f3a">X  Big (“raw”) data</span>  

---

# Git and git platforms

![bg right:50% w:800](./../../../images/datasharing-git-img1.png)

<span style="color:#F9CD69">∼ Documents</span>
<span style="color:#B4CE82">✓ Small data</span>  
<span style="color:#F9CD69">∼ Presentations</span>

<span style="color:#B4CE82">✓✓ Code</span>
<span style="color:#B4CE82">✓✓ Data analytical projects</span>
<span style="color:#F9CD69">∼ Big (“raw”) data</span>

---

# Why git? ≈> Why code?

- Save time
- Avoid doing repetitive tasks “by hand”
- Reuse scripts, analyses, pipelines
- Reproduce results

---

# A simple example: RNASeq project

![w:900](./../../../images/teaching-git/git-rnaseq-example-img1.png)

---

# A simple example: RNASeq project

![w:900](./../../../images/teaching-git/git-rnaseq-example-img2.png)

---

# A simple example: RNASeq project

![w:900](./../../../images/teaching-git/git-rnaseq-example-img3.png)

---

# A simple example: RNASeq project

![w:900](./../../../images/teaching-git/git-rnaseq-example-img4.png)

---

# A simple example: RNASeq project

![w:900](./../../../images/teaching-git/git-rnaseq-example-img5.png)

---

# Take snapshots of your code work…

(... as long as it works)

![w:900](./../../../images/teaching-git/git-rnaseq-example-img6.png)

---

# Take snapshots of your code work…

(... as long as it works)

![w:900](./../../../images/teaching-git/git-rnaseq-example-img7.png)

---

# Scenario 1: More data

![w:900](./../../../images/teaching-git/git-rnaseq-example-img8.png)

---

# Scenario 1: More data

![w:900](./../../../images/teaching-git/git-rnaseq-example-img9.png)

---

# Scenario 1: More data

![w:900](./../../../images/teaching-git/git-rnaseq-example-img10.png)

---

# Let git track changes and keep things clean

![w:900](./../../../images/teaching-git/git-rnaseq-example-img11.png)

---

# Scenario 2: Pipeline breaks

![w:900](./../../../images/teaching-git/git-rnaseq-example-img12.png)

---

# Revert to snapshot

![w:900](./../../../images/teaching-git/git-rnaseq-example-img13.png)

---

# Scenario 3: New project, same type of data and analysis

![w:900](./../../../images/teaching-git/git-rnaseq-example-img14.png)

---

# Scenario 3: New project, same type of data and analysis

![w:900](./../../../images/teaching-git/git-rnaseq-example-img15.png)

---

# Re-use code

![w:900](./../../../images/teaching-git/git-rnaseq-reusecode-img1.png)

---

# Re-use code

![w:900](./../../../images/teaching-git/git-rnaseq-reusecode-img2.png)

---

# Re-use code – People have done this

![w:900](./../../../images/teaching-git/git-rnaseq-reusecode-img3.png)

---

# Re-use code – People have done this

![w:900](./../../../images/teaching-git/git-rnaseq-reusecode-img4.png)

---

# Re-use code – Link and contribute

![w:900](./../../../images/teaching-git/git-rnaseq-reusecode-img5.png)

---

# Git: summary

- Version control system
- Git “repository” = a central data package (directory)
- Allows to track changes to any file in the repository
  - **What** was changed
  - **When** was it changed
  - By **whom** was it changed
  - **Why** was it changed?

---

# GitHub and GitLab

- A well-documented cloud environment
- Active syncing
- Not automatically synced
- Non-automated version control
- You have the control what changes to track and what to sync
- Time machine to go back to older versions

---

# GitHub and Gitlab team projects

Simplifies concurrent work & merging changes

- Online service to host our projects
- Share code with other developers
- Others can download our projects, work on and contribute to them
- They can upload their changes and merge them with the main project

---

# Cloud vs. Git

![w:1000](./../../../images/teaching-git/git-cloud-comparison.png)


---


# DataPLANT DataHUB

---

# ARC builds on standards + Git

![w:900](./../../../images/arc-buildsonstandards2.png)

---

# The DataPLANT DataHUB &ndash; a GitLab ***Plus***

![](./../../../images/datahub/datahub-gitlab.drawio.png)

---

![bg cover](./../../../images/dataplant-bigpicture-seq2.png)

---

![bg cover](./../../../images/dataplant-bigpicture-seq3.png)

---

![bg cover](./../../../images/dataplant-bigpicture-seq4.png)

---

![bg cover](./../../../images/dataplant-bigpicture-seq5.png)

---

![bg cover](./../../../images/dataplant-bigpicture-seq6.png)

---

![bg cover](./../../../images/dataplant-bigpicture-seq7.png)

---

![bg cover](./../../../images/dataplant-bigpicture-seq8.png)

---

# **Mutable** data life cycle

![w:700](./../../../images/tpj16474-fig-0006-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Project management

![w:800](./../../../images/tpj16474-fig-0007-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---


# Hands-on part 3: DataHUB

Follow the **Start Here** guide in the DataPLANT knowledge base.

Until "Complete"

---

## Using the DataHUB to collaborate

![](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/collaboration-plantdatahub.svg)

---


# :pencil: Structure your project as an ARC :pencil:

1. Follow the Start Here guide to build an ARC for your own project
1. Go back to the shared folder prepared before class
1. Add data from your project to your ARC

---


# Data publication and repositories

---

# Peristent Identifiers (PIDs)

---

# Spot the PIDs

![w:900](././../../../images/ceplas/ceplas-teaching-exercise-pids.png)

<span class="footer-reference"> https://doi.org/10.1093/plcell/koab243</span>

---

# Globally unique, stable, persistent identifiers (PIDs)

- Long-term findability
- Make data, digital objects, people, … uniquely identifiable
- Diminish “dead links”
- Cope with name changes

![bg right width:500](././../../../images/teaching-publication/pid-collage.drawio.svg)

---

# Properties of a PID

Ideally, PIDs are

- Stable and permanent
- Location-independent
- Globally unique and valid
- Addressable (citable)
- Clickable (resolvable)

<span class="footer-reference">Adapted from https://www.ebi.ac.uk/rdf/documentation/good_practice_uri/<span>

---

# Additional resources

- https://www.doi.org
- https://www.orcid.org
- https://pidservices.org/
- https://datacite.org
- https://www.project-freya.eu/en

---


# Institutional publication guidelines

HHU Düsseldorf recommends use of ORCID and other PIDs

Publikationsrichtlinie der Heinrich-Heine-Universität Düsseldorf vom 09.11.2023: 

https://www.hhu.de/die-hhu/kontakt-und-services/zentrale-und-amtliche-bekanntmachungen/nr-34-2023


---

# Domain-specific data repositories

<style scoped>
section {font-size: 25px;}
</style>

**Good**

- Assign PIDs / DOIs
- Long-term accessible
- Data type specific
- Apply metadata standards
- Usually recommended / required by journals
- Mostly accepted by the community

**Intermediate**

- User-friendliness
- Different metadata schema
- Complex and versatile submission routines

---

# Domain-specific data repositories

<style scoped>
table {
  width: 100%;  
  height: 400;
}
</style>

Repository | Description | Biological data domain
-- | -- | --
[EBI-ENA](<https://www.ebi.ac.uk/ena/>) | European Nucleotide Archive | genome / transcriptome sequences
[EBI-ArrayExpress](<https://www.ebi.ac.uk/arrayexpress/>) | Archive of Functional Genomics Data | transcriptome  
[EBI-MetaboLights](<https://www.ebi.ac.uk/metabolights/>) | Database of Metabolomics | metabolome
[EBI-PRIDE](<https://www.ebi.ac.uk/pride/>) | PRoteomics IDEntifications Database | proteome
[EBI-BioImage Archive](<https://www.ebi.ac.uk/bioimage-archive/>) | Stores and distributes biological images | imaging, microscopy
[e!DAL-PGP](<https://edal.ipk-gatersleben.de/index.html>) | Plant Genomics & Phenomics Research Data Repository | phenome
[NCBI-GEO](<https://www.ncbi.nlm.nih.gov/geo/>) | Gene Expression Omnibus | transcriptome
[NCBI-GenBank](<https://www.ncbi.nlm.nih.gov/genbank/>) | Genetic Sequence Database | genome
[NCBI-SRA](<https://www.ncbi.nlm.nih.gov/sra/>) | Sequence Read Archive | genome / transcriptome sequences

---

# Choosing a data repository

Domain-specific >> Generic >> Institutional

*Find repositories at:*

- <https://www.re3data.org>
- <https://fairsharing.org>

---

# Generic data repositories

![bg right:40% width:400](./../../../images/teaching-publication/repositories-genericrepos-collage.drawio.svg)

**Good**

- Allow publication of any kind of data Assign PIDs / DOIs
- Long-term accessible
- Very simple to use

**Intermediate**

- Only generic / high-level metadata schema
- Limited reusability

---

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

![](https://www.nfdi4plants.org/nfdi4plants.knowledgebase/docs../images/arc-repository03-img1.png)

---

# Moving from paper to data publications

![w:400px](https://www.nfdi4plants.org/nfdi4plants.knowledgebase/docs../images/dataplant-landingpage-mission.svg)

<!-- 
![w:800px](https://www.nfdi4plants.org/nfdi4plants.knowledgebase/docs../images/fairdata-classicalpublication.svg)

--- -->

---

# Publish your ARC, get a DOI

![w:800px](../../../images/arc-seamlesspublication.svg)


---

# Publish your ARC with a few clicks

![w:900px](https://www.nfdi4plants.org/nfdi4plants.knowledgebase/docs../images/data-publication/cqc-results.png)

---

# Validation


![h:400](./../../../images/tpj16474-fig-0008-m-modified.png)

<span class="footer-reference"> adapted from Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Validate & publish


![h:400](././../../../images/tpj16474-fig-0008-m.jpg)

<span class="footer-reference"> Weil, H.L., Schneider, K., et al. (2023), PLANTdataHUB: a collaborative platform for continuous FAIR data sharing in plant research. Plant J. https://doi.org/10.1111/tpj.16474 </span>

---

# Receive a DOI

![w:800px](https://www.nfdi4plants.org/nfdi4plants.knowledgebase/docs/img/data-publication/doi-accession.png)

---


# Legal aspects of RDM

---

# Different laws touched by RDM

![w:700](././../../../images/teaching-legal/hartmann-terraincognita-forschungsdaten-rechtlicheheimat.png)

<span class="footer-reference">Hartmann, Thomas. (2019). Rechtsfragen: Institutioneller Rahmen und Handlungsoptionen für universitäres FDM. Zenodo. https://doi.org/10.5281/zenodo.2654306</span>

---

# Open Access (OA) categories

- Gold: Published in an open-access journal that is indexed by the [DOAJ](https://doaj.org).
- Green: Toll-access on the publisher page, but there is a free copy in an OA repository.
- Hybrid: Free under an open license in a toll-access journal.
- Bronze: Free to read on the publisher page, but without a clearly identifiable license.
- Closed: All other articles, including those shared only on an Academic Social Network or in Sci-Hub.

<span class="footer-reference">Piwowar H et al. (2018), PeerJ https://doi.org/10.7717/peerj.4375</span>

---

# Open Science is more than Open Access

![w:900](https://www.frontiersin.org/files/Articles/855198/frma-07-855198-HTML/image_m/frma-07-855198-g001.jpg)

<span class="footer-reference">Okafor et al. (2022) https://doi.org/10.3389/frma.2022.855198, Figure 1</span>

---

# Creative commons

Check out: https://creativecommons.org/about/cclicenses/

![w:400](././../../../images/teaching-legal/creative-commons-brochure.png)

<span class="footer-reference">adapted from https://wiki.creativecommons.org../images/0/01/6licenses-folded.pdf</span>

---

# Data protection

[GDPR](https://gdpr-info.eu/): General Data Protection Regulation
[DS-GVO](https://www.datenschutz-wiki.de/Datenschutz-Grundverordnung) (german): Datenschutz-Grundverordnung

---

# Use of biological materials

- MTA: material transfer agreement
- Nagoya Protocol: https://www.cbd.int/abs/about/
- DSI: [Digital sequence information](https://www.genres.de/en/access-and-benefit-sharing/digital-sequence-information)

---

# FAIR and CARE

![](https://images.squarespace-cdn.com/content/v1/5d3799de845604000199cd24/1567592451970-2R8XFL670QNMAGDRV7ED/Be+FAIR+and+care.png?format=2500w)

<span class="footer-reference">https://www.gida-global.org/care</span>

---

# CARE principles

![bg right w:450](https://storage.googleapis.com/jnl-up-j-dsj-files/journals/1/articles/1158/submission/proof/1158-10-8531-1-17-20201104.png)

<span class="footer-reference">https://datascience.codata.org/articles/10.5334/dsj-2020-043/</span>

---

# Research Data policies
![w:500](./../../../images/teaching-legal/forschungsdaten-policy-kit-abb2.png)


<span class="footer-reference">Hiemenz, Bea & Kuberek, Monika (2018) http://dx.doi.org/10.14279/depositonce-7521</span>

---

# CEPLAS relevant data handling guidelines & policies

<style scoped> section{font-size: 25px;} </style>

- [Deutsche Forschungsgemeinschaft (2015): DFG Guidelines on the Handling of Research Data](https://www.dfg.de/en/research_funding/proposal_review_decision/applicants/research_data/)
- [Amtliche Mitteilungen der Universität zu Köln AM 07/2018: Leitlinie zum Umgang mit Forschungsdaten](https://am.uni-koeln.de/e21463/am_mitteilungen/@6/AM_2018-07_Leitlinie-zum-Umgang-mit-Forschungsdaten_ger.pdf)
- [Amtliche Bekanntmachung der Heinrich-Heine-Universität Nr. 43/2022: Forschungsdaten-Richtlinie](https://www.fdm.hhu.de/fileadmin/redaktion/Forschungsdatenmanagement/2022_Forschungsdaten-Richtlinie.pdf) 
- [Leitlinie zum Umgang mit Forschungsdaten im Forschungszentrum Jülich 05/2019](https://www.fz-juelich.de/SharedDocs/Downloads/ZB/DE/Forschungsdaten/fdm_leitlinie_forschungsdaten_fzj.pdf)
- [Senat der Max-Planck-Gesellschaft (2009): Regeln zur Sicherung guter wissenschaftlicher Praxis](https://www.mpg.de/199493/regelnWissPraxis.pdf)

---

# The Data Management Plan (DMP)

- Covers the full research data lifecycle
- Frequently updated as your project develops
- Required to different extents by funding agencies (e.g. DFG, Horizon Europe, BMBF, BMEL, ... )

---

# DMP tools

- Data Stewardship Wizard https://ds-wizard.org/
- RDMO https://rdmorganiser.github.io/ (e.g. https://rdmo.hhu.de)
- Dataplan: https://dmpg.nfdi4plants.org

> Check out the [Elixir RDMkit](https://rdmkit.elixir-europe.org/data_management_plan) for more

---

---


# :pencil: Share your ARC :pencil:

1. Follow the next slides to learn how to share your ARC with a colleague
3. Go to your colleague’s ARC and try to understand it

---

# :pencil: Understand your colleague’s ARC :pencil:

1. Go to your colleague’s ARC
2. Try to identify one experiment that led to results (e.g. a figure in the thesis)
3. What are the samples (e.g. plants, bacteria)?
4. How were the samples prepared (~ materials)?  
5. How was the experiment performed (~ methods)?
6. What is the raw data (~ results)?
7. How was the data analyzed (~ computational methods, statistics)?  
8. Collect all of the above in a `README_<YourArbitraryParticipantID>.md` in the same folder.

---

# Assignment

Participant | looks at ARC of
--- | ---
Participant02 | Participant01
Participant03 | Participant02
… | …
Participant n | Participant n-1

---


# Electronic Lab Notebooks (ELNs)

---

# ELN ≈ Digital Protocol Editors

- Documenting daily lab routine
- Lab methods & protocols
- Lab inventory (biologicals, chemicals, instruments)
- Local sharing & collaboration
- Backup (locally)

✅ ELNs help to digitalize research documentation

![bg right:40% w:400](./../../../images/documents-handwritten.svg)

---

<!-- 
# Are ELNs FAIR?

- Version control / Track changes
- Transparent contributions
- Use of IDs / PIDs
- External sharing / access
- (Long term) data storage
- Analyses
  - is code reproducible
- Metadata
  - standards
  - schemata

--- -->

# Are ELNs FAIR?

FAIR indicator* | ELN
-------------- | ---
**Findable**
F1. (Meta)data are assigned a globally unique and persistent identifier.
F2. Data are described with rich metadata (defined by R1 below).
F3. Metadata clearly and explicitly include the identifier of the data they describe.
F4. (Meta)data are registered or indexed in a searchable resource.
**Accessible**
A1. (Meta)data are retrievable by their identifier using a standardised communications protocol
A1.1 The protocol is open, free, and universally implementable
A1.2 The protocol allows for an authentication and authorisation procedure, where necessary
A2. Metadata are accessible, even when the data are no longer available
**Interoperable**
I1. (Meta)data use a formal, accessible, shared, and broadly applicable language for knowledge representation.
I2. (Meta)data use vocabularies that follow FAIR principles.
I3. (Meta)data include qualified references to other (meta)data.
**Reusable**
R1. (Meta)data are richly described with a plurality of accurate and relevant attributes
R1.1. (Meta)data are released with a clear and accessible data usage license
R1.2. (Meta)data are associated with detailed provenance
R1.3. (Meta)data meet domain-relevant community standards

<span class="footer-reference">*FAIR classified by https://www.go-fair.org/fair-principles/<span>

---

# Findable

| FAIR indicator*                                                                       | elabFTW |
|---------------------------------------------------------------------------------------|---------|
| F1. (Meta)data are assigned a globally unique and persistent identifier.              | 🟠 / 🔴 |
| F2. Data are described with rich metadata (defined by R1 below).                      | 🔴      |
| F3. Metadata clearly and explicitly include the identifier of the data they describe. | 🟠 / 🔴 |
| F4. (Meta)data are registered or indexed in a searchable resource.                    | 🔴      |

<span class="footer-reference">*FAIR classified by https://www.go-fair.org/fair-principles/<span>

--- 

# Accessible

| FAIR indicator*                                                                                 | elabFTW |
|-------------------------------------------------------------------------------------------------|---------|
| A1. (Meta)data are retrievable by their identifier using a standardised communications protocol | 🔴
| A1.1 The protocol is open, free, and universally implementable                                  | 🟢 / 🟠
| A1.2 The protocol allows for an authentication and authorisation procedure, where necessary     | ❓
| A2. Metadata are accessible, even when the data are no longer available                         | ❓

<span class="footer-reference">*FAIR classified by https://www.go-fair.org/fair-principles/<span>

--- 

# Interoperable

| FAIR indicator*                                                                                                | elabFTW |
|----------------------------------------------------------------------------------------------------------------|---------|
| I1. (Meta)data use a formal, accessible, shared, and broadly applicable language for knowledge representation. | 🔴
| I2. (Meta)data use vocabularies that follow FAIR principles.                                                   | 🔴
| I3. (Meta)data include qualified references to other (meta)data.                                               | 🔴

<span class="footer-reference">*FAIR classified by https://www.go-fair.org/fair-principles/<span>

---

# Reusable

| FAIR indicator*                                                                          | elabFTW |
|------------------------------------------------------------------------------------------|---------|
| R1. (Meta)data are richly described with a plurality of accurate and relevant attributes | 🔴
| R1.1. (Meta)data are released with a clear and accessible data usage license             | 🔴
| R1.2. (Meta)data are associated with detailed provenance                                 | 🔴
| R1.3. (Meta)data meet domain-relevant community standards                                | 🔴

<span class="footer-reference">*FAIR classified by https://www.go-fair.org/fair-principles/<span>
---

---


# Contributors

<style scoped> section{font-size:20px}</style>

If not referenced otherwise, figures and slides presented here were created by members of DataPLANT (https://nfdi4plants.org).
Additional slides were contributed by

- name: Dominik Brilhaus
  github: https://github.com/brilator
  orcid: https://orcid.org/0000-0001-9021-3197
- name: Cristina Martins Rodrigues
  github: https://github.com/CMR248
  orcid: https://orcid.org/0000-0002-4849-1537
- name: Hajira Jabeen
  github: https://github.com/HajiraJabeen
  orcid: https://orcid.org/0000-0003-1476-2121
- name: Kevin Frey
  github: https://github.com/Freymaurer
  orcid: https://orcid.org/0000-0002-8493-1077
- name: Sabrina Zander
  orcid: https://orcid.org/0009-0000-4569-6126
- name: Martin Kuhl
  github: https://github.com/Martin-Kuhl
  orcid: https://orcid.org/0000-0002-8493-1077

---

