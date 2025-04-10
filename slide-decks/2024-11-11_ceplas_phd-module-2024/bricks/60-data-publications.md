---
marp: true
theme: marp-theme_dataplant-ceplas-ccby
paginate: true
author:
- name: Dominik Brilhaus
  github: https://github.com/brilator
  orcid: https://orcid.org/0000-0001-9021-3197
license: '[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)'
title: Data Publications
date: 2023-11-09
---

# Data publication and repositories

---

# Spot the PIDs

![w:900](././../../../public/images-tm/ceplas/ceplas-teaching-exercise-pids.png)

<span class="footer-reference"> https://doi.org/10.1093/plcell/koab243</span>

---

# Peristent Identifiers (PIDs)

### Globally unique, stable, persistent 

- Long-term findability
- Make data, digital objects, people, … uniquely identifiable
- Diminish “dead links”
- Cope with name changes

![bg right:45% width:400](././../../../public/images-tm/teaching-publication/pid-collage.drawio.svg)

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

![bg right:40% width:400](./../../../public/images-tm/teaching-publication/repositories-genericrepos-collage.drawio.svg)

**Good**

- Allow publication of any kind of data Assign PIDs / DOIs
- Long-term accessible
- Very simple to use

**Intermediate**

- Only generic / high-level metadata schema
- Limited reusability
