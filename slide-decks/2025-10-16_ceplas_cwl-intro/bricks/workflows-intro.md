---
title: Computational Workflows
author: Dominik Brilhaus
license: CC-BY 4.0
date: 2025-10-14
---

# Computational Workflows

### Automating and Reproducing Data Analysis Pipelines

---
layout: two-columns
---

# What Are Computational Workflows?

- Define **steps** in data analysis (e.g., preprocessing → alignment → QC)
- Each step specifies:
  - **Inputs**
  - **Outputs**
  - **Tools / Commands**
- Enable:
  - Reproducibility  
  - Portability  
  - Scalability

---

# Materials & Methods ✅

```bash
fastqc assays/rnaseq/dataset/sample1.fastq.gz
fastqc assays/rnaseq/dataset/sample2.fastq.gz
fastqc assays/rnaseq/dataset/ ...
```

"*FastQC v0.12.1 was employed for read quality control using default parameters.*"

---
layout: two-columns
---

# Why Workflows?

::left::

### Reproducibility / Replicability of the data

Rerunning the same analysis on the **same** dataset

```mermaid
flowchart LR
  f1("dataset1") ---p1[analysis pipeline]--> r1("results1")
classDef one fill:#62d4c1;
class f1,r1 one;
```

```mermaid
flowchart LR
  f1("dataset1") ---p1[analysis pipeline]--> r1("results1")
classDef one fill:#62d4c1;
class f1,r1 one;
```

::right::

### Reusability of the analysis

Applying the same analysis on **another** dataset

```mermaid
flowchart LR
  f2("dataset2") ---p1[analysis pipeline]--> r2("results2")
classDef two fill:#ffd34d;
class f2,r2 two;
```

---

# Some factors affecting reproducibility & reusability

- Version of tool / software
- Version of package/library and interpreter (python, R, F#, etc.)
- Operating system (linux, win, mac) and version
- ...

---

# Workflow Languages

- **CWL**
  - https://www.commonwl.org/
  - Open standard for describing analysis workflows
  - Interoperable & portable
- **Nextflow**
  - https://nextflow.io
  - Domain-specific language for pipelines
- **Snakemake**
  - https://snakemake.github.io
  - Makefile-like workflows in Python
  - Easy syntax, flexible, local-friendly

---

# CWL: Common Workflow Language

<img src="https://www.commonwl.org/assets/images/CWL-Logo.png" alt="CWL Logo" width="120"/>

- Open community standard
- Describes:
  - Tools (command-line wrappers)
  - Workflows (combining tools)
- YAML-based description of:
  - Inputs & Outputs
  - Dependencies (e.g. Docker container)
  - Resource needs (e.g. RAM, cores)

---
layout: default
---

# CWL is a time investment at first

There's a *tiny* learning curve and some dependencies

- Docker
- Conda and the cwltool (or other reference runner)
- JavaScript (good to know for file handling)
- ...

...but it pays off! 