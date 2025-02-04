---
title: Using CWL in ARCs
marp: true
theme: marp-theme_dataplant-ceplas-ccby
paginate: true
author: Dominik Brilhaus
date: 2025-02-05
license: CC-BY 4.0
---

<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
  mermaid.initialize({ startOnLoad: true });
</script>

# CWL in ARCs

DataPLANT Data Steward Circle – Feb 5<sup>th</sup>, 2025
Dominik Brilhaus

---

## Example tool: FastQC

First step in RNASeq data analysis: QC of read files (e.g. *.fastq)

<div class="mermaid">
flowchart LR
  f1("Reads (*.fastq)") ---p1[QC]--> f3(QualityReport)
  subgraph p1[QC]
      p1-1{{FastQC}}
  end
</div>

---

## FastQC has a GUI

<div class="mermaid">
flowchart LR
  f1("Reads (*.fastq)") ---p1[QC]--> f3(QualityReport)
  subgraph p1[QC]
      p1-1{{FastQC}}
  end
</div>

![bg right w:600](images/fastqc-gui.png)

---

## Are we **FAIR** yet?

<!-- 
- Installation / Environment
- Version
- Input / Output
 -->

---

## Command line tool

- Some tool that you can run ... on the command line
- Takes arguments or parameters as **inputs**
- Generates **outputs**
- Example:
  - CLI: **ARC Commander**
  - GUI: **ARCitect**

---

## FastQC via command line

```bash
fastqc --version
fastqc assays/rnaseq/dataset/blau1_CGATGT_L005_R1_002.fastq.gz
```

<div class="mermaid">
flowchart LR
  f1("Reads (*.fastq)") ---p1[QC]--> f3(QualityReport)
  subgraph p1[QC]
      p1-1{{FastQC}}
  end
</div>

> *FastQC v0.12.1 was employed for read quality control using default parameters.*

---

## Installation

https://www.bioinformatics.babraham.ac.uk/projects/download.html#fastqc


```bash
conda install fastqc
```


---

## How to document the use of a command line tool?

1. Exactly write down how, what parameters, what files
2. 

---

## Why CWL and ARCs

- Reproducibility / Replicability **of the data**
  - Rerunning the same analysis on the **same** dataset
- Reusability **of the analysis**
  - Applying the same (type of) analysis on **another** dataset

---

## Some factors affecting reproducibility

- operating system (linux, win, mac) and version
- version of software
- version of package/library and interpreter 
- ...

---

## Containerization





---

## Approaches towards CWL in ARCs

1. Reuse an existing CWL document
1. Wrap a CLI tool
   1. Fingers crossed for a docker
1. Wrap a script


---

## Simply import an existing CWL




---

## Example workflow: First steps RNASeq pipeline

<div class="mermaid">
flowchart LR
  f1("Reads (*.fastq)") ---p1[QC]--> f3(QualityReport)
  f1 ---p2--> f2(reads_trimmed)
  f2(reads_trimmed) ---p1--> f4(QualityReport_trimmed)
  f2(reads_trimmed) ---p3--> f5(counts)
  subgraph p1[QC]
      p1-1{{FastQC}}
  end
  subgraph p2[Trimming]
      p2-1{{trimmomatic}}
  end
  subgraph p3[Quantification]
      p3-1{{Kallisto}}
  end
</div>


---

## Demo: CWL-Wrapping a CommandLineTool

---

## Step 1

- Without in/out
- **Local tool installed**

```yaml
---

#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

baseCommand: ["fastqc", "--help"]

inputs: []
 
outputs: []
```

---

## Step 2: Add a docker container

```yaml
---

#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: quay.io/biocontainers/fastqc:0.11.9--hdfd78af_1

baseCommand: ["fastqc", "--help"]

inputs: []
 
outputs: []
```


---

## Step 3: Define inputs

```yaml
---

#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: quay.io/biocontainers/fastqc:0.11.9--hdfd78af_1

baseCommand: ["fastqc", "--help"]

inputs:
  reads:
    type: File[]
    inputBinding:
      position: 1

arguments: 
  - valueFrom: $(runtime.outdir)
    prefix: "-o"
 
outputs: []
```
