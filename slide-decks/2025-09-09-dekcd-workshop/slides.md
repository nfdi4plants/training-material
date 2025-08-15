---
hideInToc: true
theme: ../../themes/slidev-theme-nfdi4plants
transition: slide-left
background: https://cover.sli.dev
bioschemas:
  "@context": https://schema.org/
  "@type": LearningResource
  "dct:conformsTo":
    "@type": CreativeWork
    "@id": https://bioschemas.org/profiles/TrainingMaterial/1.0-RELEASE
  about:
  - "@id": https://github.com/IPK-BIT/arc-slides
  - "@type": DefinedTerm
    "@id": http://edamontology.org/topic_4012
    inDefinedTermSet: http://edamontology.org
    termCode: topic_4012
    name: FAIR Data
    url: http://edamontology.org/topic_4012
  audience:
    - "@type": Audience
      name: PhD Students
  educationalLevel: Beginner
  name: "Data Management with ARC & PLANTdataHUB"
  author: 
    "@type": Person
    "@id": https://orcid.org/0000-0001-6546-1818
    name: Manuel Feser
  contributor:
    - "@type": Person
      "@id": https://orcid.org/0000-0001-9021-3197
      name: Dominik Brilhaus
    - "@type": Person
      "@id": https://orcid.org/0000-0002-8510-6810
      name: Kevin Frey
    - "@type": Person
      "@id": https://orcid.org/0000-0003-3925-6778
      name: Timo Mühlhaus
    - "@type": Person
      "@id": https://orcid.org/0000-0002-2198-5262
      name: Kevin Schneider
    - "@type": Person
      "@id": https://orcid.org/0000-0003-1945-6342
      name: Heinrich Lukas Weil
    - "@type": Person
      "@id": https://orcid.org/0009-0000-4569-6126
      name: Sabrina Zander
  description: "Trainings Course introducing the Annotated Research Context and the PLANTdataHUB."
  keywords: "ARC,FDO,RDM"
  license: CC-BY 4.0
  version: 0.1
license: cc-by
---

# Data Management with ARC & PLANTdataHUB

---
transition: slide-left
hideInToc: true
---

# Agenda

<Toc />

---
layout: section
transition: slide-left
---

# Data Management with the Annotated Research Context
## Lesson

---
transition: slide-left
hideInToc: true
---

## 🕵️ The Case of the Missing Dataset

Imagine you’ve just published your research in a journal.  
A year later, a fellow researcher asks:

> <mdi-email-arrow-left-outline class="text-[#0BB5DD]"/> **"Can you share your dataset and analysis files?"**

<div class="flex flex-row justify-between">
<div>

But you realize:
- <mdi-folder-remove class="text-red"/> Files are scattered across old hard drives
- <mdi-file-document-alert class="text-red"/> Documentation is incomplete
- <mdi-source-branch-remove class="text-red"/> The code version used is unclear

</div>
<div>

<span class="text-red font-bold">What’s at stake?</span>
- <mdi-lock/> Lost opportunities for collaboration
- <mdi-trending-down/> Reduced impact and recognition
- <mdi-cached/> Hurdles for reproducibility

</div>
</div>

<div class="flex justify-center p-4">
<span style="color:#44546A; font-weight:bold;">How could this be prevented?</span>
</div>

**In this session:**  
Discover the <span style="color:#0BB5DD; font-weight:bold;">Annotated Research Context (ARC)</span> framework for robust, FAIR-compliant research data management.

---
layout: section
type: accent
hideInToc: true
---

# Standards for RDM
## Short Refresher

---
hideInToc: true
---

# ISA Standard

<div class="flex flex-row justify-between gap-2">
<div class="w-1/2">

- Organization
  - Investigation: Administrative metadata
  - Studies: Description of sample generation
  - Assays: Description of result generation
- Serialization in [ISA Tab](https://isa-specs.readthedocs.io/en/latest/isatab.html#) or [ISA JSON](https://isa-specs.readthedocs.io/en/latest/isajson.html#)
- Describes an experimental graph made up of specific types of nodes
  - Source, Sample, Data, etc.
- Can be extended by metadata for domains 
  - e.g. [MIAPPE](https://www.miappe.org/) for plant phenotyping

</div>
<div class="w-1/2">

<img src="/assets/isa-organization.png"/>

</div>
</div>

---
hideInToc: true
---

# Common Workflow Language (CWL)

<div class="flex flex-row justify-between gap-2">
<div class="w-1/2">

- CWL is an open standard for describing how to run command line tools and connect them to create workflows
- CWL workflows are portable across a variety of platforms that support the CWL standards
- Easy to scale complex workflows from a single developer's laptop up to massively parallel cluster, cloud and high performance computing (HPC) environments

</div>
<div class="w-1/2 space-y-2">

<div class="flex flex-row justify-center">
<img style="width: 80%" src="/assets/cwl/cwl-workflow.CztOgLVi_Z16YQii.webp"/>
</div>
<div class="flex flex-row justify-center">
<img style="width: 80%" src="/assets/cwl/cwl-goals.BMnoXCiT_ZUYDkt.webp"/>
</div>

</div>
</div>

---
hideInToc: true
---

# RO-Crate

<div class="flex flex-row justify-between gap-2">
<div class="w-1/2">

- RO-Crate provides a structure to make FAIR data packages
- schema.org in JSON-LD provides a controlled vocabulary for FAIR metadata
- Each entity of the crate is described separately
- Cross-references between entities create a graph
- The RO-Crate specification recommends which types and keys to use

</div>
<div class="w-1/2">
<div class="flex flex-row justify-center">
<figure>
<img style="width: 90%" src="/assets/ro-crate_packaging.png"/>
<figcaption class="text-[4pt] italic text-neutral">
Image source: Goble, C. (2024, February 16). FAIR Digital Research Objects: Metadata Journeys. University of Auckland Seminar, Auckland. Zenodo. <a href="https://doi.org/10.5281/zenodo.10710142" target="_blank">https://doi.org/10.5281/zenodo.10710142</a>
</figcaption>
</figure>
</div>
</div>
</div>

---
layout: section
type: accent
hideInToc: true
---

# Annotated Research Context

---
hideInToc: true
---

# ARC Data Model

<div class="flex flex-row gap-4"> 
  <div class="flex justify-center w-1/2">
    <div class="flex flex-col gap-1 w-5/6">
      <div class="flex flex-row justify-between w-full">
          <div 
            v-click
            v-motion
            :initial="{ x: -100 }"
            :click-1="{ x: 0, y: 0 }"
            class="bg-[#E05858] text-white w-1/4 p-2 rounded-lg text-center border border-neutral">
          ISA
          </div>
          <img v-click="3" class="absolute h-8 w-8 top-32 left-32 z-10" src="/assets/isa-logo.png"/>
          <div>
            <Arrow 
              v-if="2<$clicks"
              v-motion
              :initial="{ x: -100 }"
              :click-1="{ x: 0, y: 0 }"
              x1="150" y1="110" x2="250" y2="110" 
            />  
            <Arrow
              v-if="2<$clicks"
              v-motion
              :initial="{ x: 100 }"
              :click-1="{ x: 0, y: 0 }"
              x1="250" y1="130" x2="150" y2="130" 
            />  
          </div>
          <div 
            v-click
            v-motion
            :initial="{ x: 100 }"
            :click-1="{ x: 0, y: 0 }"
            class="bg-[#D5C9B1] text-white w-1/4 p-2 rounded-lg text-center border border-neutral">
          CWL
          </div>
        </div>
        <div 
          v-click
          v-motion
          :initial="{ x: -100 }"
          :click-2="{ x: 0, y: 0 }"
          class="bg-[#44546A] text-white w-full p-2 rounded-lg text-center border border-neutral">
          <div class="flex items-center flex-row gap-8">
            <img class="w-12" src="/assets/arc-icon.png"/> 
            <p>process core</p>
          </div>
        </div>
        <div 
          v-click
          v-motion
          :initial="{ x: 100 }"
          :click-2="{ x: 0, y: 0 }"
          class="bg-[#BFDCCF] text-white w-full p-2 rounded-lg text-center border border-neutral">
          <div class="flex items-center flex-row gap-8">
            <img class="w-12" src="/assets/ro-crate-icon.png"/> 
            <p>dataset</p>
          </div>
        </div>
      </div>
    </div>
  <div class="w-full">
    <div class="flex flex-col gap-6 text-base">
      <div v-click="1" class="flex items-center gap-2">
        <span class="i-mdi-dna text-[#E05858] text-xl"></span>
        <span class="font-bold text-[#E05858]">ISA model</span>
        <span class="text-neutral-700">for biological data</span>
      </div>
      <div v-click="2" class="flex items-center gap-2">
        <span class="i-mdi-cog-sync text-[#D5C9B1] text-xl"></span>
        <span class="font-bold text-[#D5C9B1]">CWL</span>
        <span class="text-neutral-700">for standardized workflows and metadata</span>
      </div>
      <div v-click="3" class="flex items-center gap-2">
        <span class="i-mdi-graph-outline text-[#44546A] text-xl"></span>
        <span class="font-bold text-[#44546A]">Process graph</span>
        <span class="text-neutral-700">modelling research as a process graph</span>
      </div>
      <div v-click="4" class="flex items-center gap-2">
        <span class="i-mdi-cube-outline text-[#BFDCCF] text-xl"></span>
        <span class="font-bold text-[#BFDCCF]">FAIR Digital Object</span>
        <span class="text-neutral-700">built on <span class="font-bold">RO-Crate</span> with <span class="font-bold">Schema.org</span> and <span class="font-bold">Bioschemas</span></span>
      </div>
    </div>
  </div>
</div>

<div v-click class="py-16">

This approach elevates ARC from merely documenting research objects to providing a **full, interconnected representation of the research process**, from data generation to analysis, making it a powerful tool for tracing and reproducing scientific investigations.

</div>

---
hideInToc: true
layout: two-cols
layoutClass: gap-4
---

# Organization Principle

<div class="flex flex-col gap-4 text-base">

<div class="flex items-center gap-2">
  <span class="i-mdi-folder-table text-[#E05858] text-xl"></span>
  <span class="font-bold text-[#E05858]">Data in directories, metadata in tables</span>
</div>

<div class="flex items-center gap-2">
  <span class="i-mdi-cog-sync text-[#D5C9B1] text-xl"></span>
  <span class="font-bold text-[#D5C9B1]">Structured for workflows, processing, analysis</span>
</div>

<div class="flex flex-col">
  <div class="flex gap-2 items-center">
    <span class="i-mdi-cloud-sync text-[#0BB5DD] text-xl"></span>
    <span class="font-bold text-[#0BB5DD]">Usable locally & in the cloud</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">(e.g., DataHUB via Git-LFS)</span>
</div>

<div class="flex flex-col">
  <div class="flex gap-2 items-center">
    <span class="i-mdi-source-branch text-[#44546A] text-xl"></span>
    <span class="font-bold text-[#44546A]">GIT versioning</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">(backup, collaboration, tracking)</span>
</div>

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-clipboard-text-outline text-[#2B7A78] text-xl"></span>
    <span class="font-bold text-[#2B7A78]">Project management via DataHUB</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">(tasks, discussions)</span>
</div>

<div class="flex items-center gap-2">
  <span class="i-mdi-share-variant text-[#F7B32B] text-xl"></span>
  <span class="font-bold text-[#F7B32B]">Unified, shareable structure</span>
  <span class="text-neutral-700">flexible for custom files</span>
</div>

</div>

::right::

<div class="flex flex-col justify-center items-center h-full">
  <img style="width: 100%" src="/assets/arc/orga-principle-folder2process.png"/>
</div>

---
hideInToc: true
layout: two-cols
layoutClass: gap-4
---

# Documentation Principle

<div class="flex flex-col gap-4 text-base">
<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-flask text-[#0BB5DD] text-xl"></span>
    <span class="font-bold text-[#0BB5DD]">Research generates data through structured investigations</span>
  </div>
</div>

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-folder-multiple-outline text-[#44546A] text-xl"></span>
    <span class="font-bold text-[#44546A]">ARC as documentation framework & container</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">for data, metadata, analyses, and the entire research cycle</span>
</div>

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-table text-[#E05858] text-xl"></span>
    <span class="font-bold text-[#E05858]">Standardized nomenclature</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">(ISA: Investigation, Study, Assay; ARC adds Workflows & Runs)</span>
</div>
<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-timeline-check-outline text-[#2B7A78] text-xl"></span>
    <span class="font-bold text-[#2B7A78]">ARC documents the process from object of study to results</span>
  </div>
</div>

</div>

::right::

<div class="flex flex-col justify-center items-center h-full">
  <img style="width: 100%" src="/assets/arc/arc-process-graph.png"/>
</div>

---
hideInToc: true
layout: two-cols
layoutClass: gap-4
---

# Annotation Principle

<div class="flex flex-col gap-4 text-base">

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-flask text-[#0BB5DD] text-xl"></span>
    <span class="font-bold text-[#0BB5DD]">Process documentation</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">Each step—sampling, preparation, measurement, simulation, analysis—is recorded as a <span class="font-bold">data-generating event</span></span>
</div>

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-source-branch text-[#44546A] text-xl"></span>
    <span class="font-bold text-[#44546A]">Workflow chaining</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">Outputs (files, sample IDs) become <span class="font-bold">inputs</span> for subsequent steps, supporting <span class="font-bold">branching</span> and <span class="font-bold">traceability</span></span>
</div>

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-tag-text-outline text-[#E05858] text-xl"></span>
    <span class="font-bold text-[#E05858]">Process annotation</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">Key-value metadata (e.g., <code>temperature: 37 °C</code>) describes process parameters</span>
</div>

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-table text-[#F7B32B] text-xl"></span>
    <span class="font-bold text-[#F7B32B]">Metadata organization</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">Tables: <span class="font-bold">headers</span> = keys/tags, <span class="font-bold">rows</span> = process paths (input → output)</span>
</div>

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-book-open-variant text-[#2B7A78] text-xl"></span>
    <span class="font-bold text-[#2B7A78]">Consistent keys</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">Use <span class="font-bold">domain-specific dictionaries</span> for keys to ensure consistency and FAIRness</span>
</div>

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-key text-[#D5C9B1] text-xl"></span>
    <span class="font-bold text-[#D5C9B1]">Special keys</span>
  </div>
  <span class="text-neutral-700 text-xs ml-8">Certain keys (e.g., <span class="font-bold">sample name</span>, <span class="font-bold">protocol</span>, <span class="font-bold">data</span>) have defined roles in process tables</span>
</div>

</div>

::right::

<div class="flex flex-col justify-center items-center h-full">
  <img style="width: 100%" src="/assets/arc/annotation-principle-figure-1.png"/>
</div>

---
hideInToc: true
layout: two-cols
layoutClass: gap-4
---

# Publication & Exchange

<div class="flex flex-col gap-4 text-base">

<div class="flex items-center gap-2">
  <span class="i-mdi-cloud-upload text-[#0BB5DD] text-xl" style="width: 2em; min-width: 2em; display: inline-block; vertical-align: middle;"></span>
  <div>
    <span class="font-bold text-[#0BB5DD]">ARC enables efficient data publication, exchange, and collaboration</span>
    <span class="text-neutral-700"> — supporting <span class="font-bold">FAIR principles</span></span>
  </div>
</div>

<div class="flex items-center gap-2">
  <span class="i-mdi-cube-send text-[#44546A] text-xl" style="width: 2em; min-width: 2em; display: inline-block; vertical-align: middle;"></span>
  <div>
    <span class="font-bold text-[#44546A]">Data are published as ARC FAIR Digital Objects</span>
    <span class="text-neutral-700"> e.g., via Invenio/PLANTdataHUB, with <span class="font-bold">DOIs</span> for long-term, citable storage</span>
  </div>
</div>

<div class="flex items-center gap-2">
  <span class="i-mdi-shield-check text-[#2B7A78] text-xl" style="width: 2em; min-width: 2em; display: inline-block; vertical-align: middle;"></span>
  <div>
    <span class="font-bold text-[#2B7A78]">Quality badges & automatic validation</span>
    <span class="text-neutral-700"> improve trust and efficiency</span>
  </div>
</div>

<div class="flex items-center gap-2">
  <span class="i-mdi-account-group text-[#F7B32B] text-xl" style="width: 2em; min-width: 2em; display: inline-block; vertical-align: middle;"></span>
  <div>
    <span class="font-bold text-[#F7B32B]">Community-driven peer review</span>
    <span class="text-neutral-700"> ensures data standards</span>
  </div>
</div>

<div class="flex flex-col gap-2">
  <div class="flex items-center gap-2">
    <span class="i-mdi-account-multiple-plus text-[#E05858] text-xl" style="width: 2em; min-width: 2em; display: inline-block; vertical-align: middle;"></span>
    <span class="font-bold text-[#E05858]">Collaboration</span>
  </div>
  <ul class="list-disc ml-8 text-neutral-700">
    <li>Easy metadata extension (<span class="italic">"everything is a file"</span>)</li>
    <li>Branching structure minimizes merge conflicts</li>
    <li>Facilitates seamless data sharing across teams & institutions</li>
  </ul>
</div>

</div>

::right::

<div class="flex flex-col justify-center items-center h-full">
  <img style="width: 100%" src="/assets/arc/data-publication-using-invenio.png"/>
</div>

---
hideInToc: true
layout: two-cols
layoutClass: gap-4
---

# Versioning

<div class="flex flex-col gap-4 text-base">

<div class="flex items-center gap-2">
  <span class="i-mdi-autorenew text-[#0BB5DD] text-xl" style="width: 2em; min-width: 2em; display: inline-block; vertical-align: middle;"></span>
  <div>
    <span class="font-bold text-[#0BB5DD]">Research evolves</span>
    <span class="text-neutral-700"> — ARC supports more than a single snapshot</span>
  </div>
</div>

<div class="flex items-center gap-2">
  <span class="i-mdi-timeline-plus text-[#F7B32B] text-xl" style="width: 2em; min-width: 2em; display: inline-block; vertical-align: middle;"></span>
  <div>
    <span class="font-bold text-[#F7B32B]">Versioning</span>
    <span class="text-neutral-700"> enables incremental FAIRification during the research lifecycle</span>
  </div>
</div>

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-git text-[#44546A] text-xl" style="width: 2em; min-width: 2em; display: inline-block; vertical-align: middle;"></span>
    <span class="font-bold text-[#44546A]">Every ARC is a Git repository</span>
  </div>
  <ul class="list-disc ml-8 text-neutral-700">
    <li>Grows with the experiment</li>
    <li>Can span multiple publications</li>
  </ul>
</div>

<div class="flex flex-col">
  <div class="flex items-center gap-2">
    <span class="i-mdi-account-multiple text-[#2B7A78] text-xl" style="width: 2em; min-width: 2em; display: inline-block; vertical-align: middle;"></span>
    <span class="font-bold text-[#2B7A78]">Git enables sharing & collaboration</span>
  </div>
  <ul class="list-disc ml-8 text-neutral-700">
    <li>Supports parallel & sequential workflows</li>
    <li>Ensures provenance and information integrity</li>
  </ul>
</div>

<div class="flex items-center gap-2">
  <span class="i-mdi-database text-[#E05858] text-xl" style="width: 2em; min-width: 2em; display: inline-block; vertical-align: middle;"></span>
  <span class="font-bold text-[#E05858]">Git LFS</span>
  <span class="text-neutral-700">supports large files and big datasets</span>
</div>

</div>

::right::

<div class="flex flex-col justify-center items-center h-full">
  <img style="width: 100%" src="/assets/arc/git-collaboration.png"/>
</div>

---
layout: section
type: accent
hideInToc: true
---

# Tools and Services

---
hideInToc: true
---

# Tools and Services
<div class="flex gap-4">

<div class="flex flex-col items-center bg-white rounded-lg shadow-lg p-6 w-full max-w-md border border-neutral-200 gap-4">
  <div class="flex items-center gap-2">
    <img class="w-8 h-8" src="/assets/tools-and-services/arcitect-icon.png">
    <span class="text-xl font-bold text-[#0BB5DD]">ARCitect</span>
  </div>
  <div class="text-neutral-700 text-base text-center text-justify">
    <span class="font-semibold">ARCitect</span> is an end-to-end GUI application to manage ARCs. The ARCitect bundles many of the individual tools from DataPLANT into a single GUI. 
  </div>
  <div class="flex flex-row justify-between w-full gap-2">
    <div class="flex flex-col items-center flex-1">
      <span class="i-mdi-pencil-plus text-[#E05858] text-xl"></span>
      <span class="text-xs text-neutral-600 text-center">Create & edit your ARCs</span>
    </div>
    <div class="flex flex-col items-center flex-1">
      <span class="i-mdi-cloud-sync text-[#0BB5DD] text-xl"></span>
      <span class="text-xs text-neutral-600 text-center">Sync with PLANTdataHUB</span>
    </div>
    <div class="flex flex-col items-center flex-1">
      <span class="i-mdi-table-edit text-[#F7B32B] text-xl"></span>
      <span class="text-xs text-neutral-600 text-center">Enrich Tables with Swate</span>
    </div>
    <div class="flex flex-col items-center flex-1">
      <span class="i-mdi-shield-check text-[#2B7A78] text-xl"></span>
      <span class="text-xs text-neutral-600 text-center">Select validation</span>
    </div>
  </div>
  <div class="flex flex-row justify-center gap-4 mt-2">
    <a href="https://github.com/nfdi4plants/arcitect/releases/latest" target="_blank" class="border hover:border-[#0BB5DD] p-1 rounded bg-neutral-100">Releases</a>
    <a href="https://github.com/nfdi4plants/arcitect" target="_blank" class="border hover:border-[#0BB5DD] p-1 rounded bg-neutral-100">Repository</a>
  </div>
</div>

<div class="flex flex-col items-center bg-white rounded-lg shadow-lg p-6 w-full max-w-md border border-neutral-200 gap-4">
  <div class="flex items-center gap-2">
    <img class="w-8 h-8 bg-[#2C3D4F] rounded-2xl" src="/assets/tools-and-services/datahub-icon.svg"/>
    <span class="text-xl font-bold text-[#2C3D4F]">PLANTdataHUB</span>
  </div>
  <div class="text-neutral-700 text-base text-center text-justify">
    <span class="font-semibold">PLANTdataHUB</span> is the reference implementation of the ARC Data Hub concept as a collaborative cloud repository for ARCs based on GitLab. 
  </div>
  <div class="flex flex-row justify-between w-full gap-2">
    <div class="flex flex-col items-center flex-1">
      <span class="i-mdi-server-network text-[#0BB5DD] text-xl"></span>
      <span class="text-xs text-neutral-600 text-center">Self-hosting & federation</span>
    </div>
    <div class="flex flex-col items-center flex-1">
      <span class="i-mdi-cog-transfer text-[#F7B32B] text-xl"></span>
      <span class="text-xs text-neutral-600 text-center">ARC Validation via AVPR</span>
    </div>
    <div class="flex flex-col items-center flex-1">
      <span class="i-mdi-cloud-upload-outline text-[#2B7A78] text-xl"></span>
      <span class="text-xs text-neutral-600 text-center">Data publication</span>
    </div>
    <div class="flex flex-col items-center flex-1">
      <span class="i-mdi-magnify text-[#E05858] text-xl"></span>
      <span class="text-xs text-neutral-600 text-center">Federated ARC Search</span>
    </div>
  </div>
  <div class="flex flex-row justify-center gap-4 mt-2">
    <a href="https://git.nfdi4plants.org" target="_blank" class="border hover:border-[#0BB5DD] p-1 rounded bg-neutral-100">Website</a>
    <a href="https://github.com/nfdi4plants/datahub" target="_blank" class="border hover:border-[#0BB5DD] p-1 rounded bg-neutral-100">Repository</a>
  </div>
</div>

</div>

---
hideInToc: true
---

# ARCitect

<div style="position: relative; width: 100%; height: 40vh;">
  <img class="absolute top-0 left-[9%] w-[82%] h-[100%] bg-black" src="/assets/screenshots/arcitect-gui.png"/>
  <!-- Step 1: Show navigation menu -->
  <div v-click="['+1', '+1']">
    <!-- Desktop positioning -->
    <div class="absolute top-0 left-[9%] w-[82%] h-[9%] bg-black opacity-50 z-10 hidden md:block"></div>
    <div class="absolute top-[9%] left-[17.125%] w-[73.875%] h-[91%] bg-black opacity-50 z-10 hidden md:block"></div>
    <div class="absolute top-[41.5%] left-[9%] w-[8.125%] h-[58.5%] bg-black opacity-50 z-10 hidden md:block"></div>
  </div>
  <!-- Step 2: Show file tree -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[7%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[7%] left-[9%] w-[8.125%] h-[93%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[7%] left-[30%] w-[61%] h-[93%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[28%] left-[17.125%] w-[12.875%] h-[71.875%] bg-black opacity-50 z-10"></div>
  </div>
  <!-- Step 3: Show right panel -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[10%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[96%] left-[9%] w-[82%] h-[4%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[10%] left-[9%] w-[33%] h-[86%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[10%] left-[78.5%] w-[12.5%] h-[86%] bg-black opacity-50 z-10"></div>
  </div>
</div>

---
hideInToc: true
---

# ARCitect

<div style="position: relative; width: 100%; aspect-ratio: 16 / 9; max-height: 40vh;">

  <img class="absolute top-0 left-[9%] w-[82%] h-[100%] bg-black" src="/assets/screenshots/arcitect-table.png"/>
  <!-- Step 1: Show annotation table -->
  <div v-click="['+1', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[8%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[8%] left-[9%] w-[21%] h-[92%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[26.5%] left-[30%] w-[61%] h-[73.5%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[8%] left-[55.9%] w-[35.1%] h-[18.5%] bg-black opacity-50 z-10"></div>
  </div>
  <!-- Step 2: Show tool bar -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[4%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[8%] left-[9%] w-[82%] h-[92%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[4%] left-[9%] w-[21%] h-[4%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[4%] left-[41%] w-[50%] h-[4%] bg-black opacity-50 z-10"></div>
  </div>
  <!-- Step 3: Show add row -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[91%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[96%] left-[9%] w-[82%] h-[4%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[91%] left-[9%] w-[48%] h-[5%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[91%] left-[64%] w-[27%] h-[5%] bg-black opacity-50 z-10"></div>
  </div>
  <!-- Step 4: Show tab bar -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[96%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[96%] left-[9%] w-[21%] h-[4%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[96%] left-[52%] w-[39%] h-[4%] bg-black opacity-50 z-10"></div>
  </div>
</div>

---
hideInToc: true
---

# PLANTdataHUB

<div style="position: relative; width: 100%; aspect-ratio: 16 / 9; max-height: 40vh;">

  <img class="absolute top-0 left-[9%] w-[82%] h-[100%] bg-black" src="/assets/screenshots/datahub-explore.png"/>
  <!-- Step 1: Show navigation menu -->
  <div v-click="['+1', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[7.5%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[7.5%] left-[19.8%] w-[71.2%] h-[92.5%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[37%] left-[9%] w-[10.8%] h-[63%] bg-black opacity-50 z-10"></div>
  </div>
  <!-- Step 2: Show search bar -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[17%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[17%] left-[9%] w-[18%] h-[83%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[17%] left-[83%] w-[8%] h-[83%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[27%] left-[27%] w-[56%] h-[73%] bg-black opacity-50 z-10"></div>
  </div>
  <!-- Step 3: Show ARC -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[49.5%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[57%] left-[9%] w-[82%] h-[43%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[49.5%] left-[9%] w-[18%] h-[7.5%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[49.5%] left-[82%] w-[9%] h-[7.5%] bg-black opacity-50 z-10"></div>
  </div>
</div>

---
hideInToc: true
---

# PLANTdataHUB

<div style="position: relative; width: 100%; aspect-ratio: 16 / 9; max-height: 40vh;">

  <img class="absolute top-0 left-[9%] w-[82%] h-[100%] bg-black" src="/assets/screenshots/datahub-arc.png"/>
  <!-- Step 1: Show navigation menu -->
  <div v-click="['+1', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[7.5%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[7.5%] left-[9%] w-[10.8%] h-[11%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[7.5%] left-[19.8%] w-[71.2%] h-[92.5%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[55%] left-[9%] w-[10.8%] h-[45%] bg-black opacity-50 z-10"></div>
  </div>
  <!-- Step 2: Show file tree -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[29%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[29%] left-[9%] w-[19%] h-[71%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[29%] left-[68.5%] w-[22.5%] h-[71%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[84%] left-[28%] w-[40.5%] h-[16%] bg-black opacity-50 z-10"></div>
  </div>
  <!-- Step 3: Show last commit bar -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[18%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[18%] left-[9%] w-[19%] h-[82%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[29.5%] left-[28%] w-[40.5%] h-[70.5%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[18%] left-[68.5%] w-[22.5%] h-[82%] bg-black opacity-50 z-10"></div>
  </div>
  <!-- Step 4: Show fork bar -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[61%] h-[100%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-0 left-[70%] w-[21%] h-[13%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[13%] left-[82%] w-[9%] h-[4%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[17%] left-[70%] w-[21%] h-[83%] bg-black opacity-50 z-10"></div>
  </div>
  <!-- Step 5: Show badges -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[18%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[18%] left-[9%] w-[60%] h-[13%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[18%] left-[82%] w-[9%] h-[13%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[31%] left-[9%] w-[82%] h-[69%] bg-black opacity-50 z-10"></div>
  </div>  
  <!-- Step 6: Show version history -->
  <div v-click="['+0', '+1']">
    <div class="absolute top-0 left-[9%] w-[82%] h-[31%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[31%] left-[9%] w-[60%] h-[10%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[31%] left-[82%] w-[9%] h-[10%] bg-black opacity-50 z-10"></div>
    <div class="absolute top-[41%] left-[9%] w-[82%] h-[59%] bg-black opacity-50 z-10"></div>
  </div>
</div>

---
layout: section
transition: slide-left
---

# Creating & Structuring an ARC
## Practical Session

---
src: pages/viola-phd/01-getting-started.md
hideInToc: true
---

---
src: pages/viola-phd/02-create-an-arc.md
hideInToc: true
---

---
src: pages/viola-phd/03-describe-the-investigation.md
hideInToc: true
---

---
src: pages/viola-phd/04-add-a-study.md
hideInToc: true
---

---
src: pages/viola-phd/05-checkpoint.md
hideInToc: true
---

---
src: pages/viola-phd/06-add-assay-data.md
hideInToc: true
---

---
src: pages/viola-phd/07-share-your-arc.md
hideInToc: true
---

---
src: pages/viola-phd/08-checkpoint.md
hideInToc: true
---

---
src: pages/viola-phd/09-apply-standard-procedures.md
hideInToc: true
---

---
src: pages/viola-phd/10-data-analysis.md
hideInToc: true
---

---
src: pages/viola-phd/11-add-a-datamap.md
hideInToc: true
---

---
src: pages/viola-phd/12-checkpoint.md
hideInToc: true
---

---
src: pages/viola-phd/13-validate-your-arc.md
hideInToc: true
---

---
src: pages/viola-phd/14-publish-your-arc.md
hideInToc: true
---

---
layout: section
transition: slide-left
---

# Wrap-up & Q&A

---
transition: slide-left
hideInToc: true
---

# Take Home Messages

- The "final" ARC does not exist - Immutable yet Evolving
- Start simple: Just dump the files into your ARC
  - KISS - Keep It Simple and Stupid
  - Sketch your laboratory workflows
  - Organize your data into `studies` and `assays`
  - Link `Input` and `Output` nodes
  - Parametrize your protocols
- The ARC is a "Living" FAIR Digital Object (FDO)

---
transition: slide-left
hideInToc: true
---

# Further reading

- [ARC Overview](https://arc-rdm.org)
- [DataPLANT Knowledgebase](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/)
  - [Contribute Templates](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/swate/swate-template-contribution/)
  - [Best Practices for Data Annotation](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/core-concepts/best-practices-for-data-annotation/)
  - [Electronic Lab Notebook Integration](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/resources/elab2arc/)
- [ARC Validation Package Registry](https://avpr.nfdi4plants.org/)
  - [Add Validation Packages](https://github.com/nfdi4plants/arc-validate-package-registry?tab=readme-ov-file#validation-package-staging-area)

---
transition: slide-left
hideInToc: true
---

# Attribution

- Based on [Documentation](https://arc-rdm.org) created by [Dominik Brilhaus](https://orcid.org/0000-0001-9021-3197), [Kevin Frey](https://orcid.org/0000-0002-8510-6810), [Timo Mühlhaus](https://orcid.org/0000-0003-3925-6778), [Kevin Schneider](https://orcid.org/0000-0002-2198-5262) and [Heinrich Lukas Weil](https://orcid.org/0000-0003-1945-6342)

- Based on [Trainings Material](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/start-here/) created by [Dominik Brilhaus](https://orcid.org/0000-0001-9021-3197), [Kevin Frey](https://orcid.org/0000-0002-8510-6810),  [Heinrich Lukas Weil](https://orcid.org/0000-0003-1945-6342) and [Sabrina Zander](https://orcid.org/0009-0000-4569-6126)
