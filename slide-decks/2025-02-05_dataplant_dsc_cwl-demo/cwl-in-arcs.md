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

<!-- _paginate: false -->

DataPLANT Data Steward Circle – Feb 5<sup>th</sup>, 2025
Dominik Brilhaus, [CEPLAS Data](https://www.ceplas.eu/en/research/ceplas-data)

---

# Example tool: FastQC

First step in RNASeq data analysis: QC of read files (e.g. *.fastq)

<div class="mermaid">
flowchart LR
  f1("Reads (*.fastq)") ---p1[QC]--> f3("QualityReport (*.html)")
  subgraph p1[QC]
      p1-1{{FastQC}}
  end
</div>

---

# FastQC has a GUI

<div class="two-columns">

  <div class="mermaid">
  flowchart TD
    f1("Reads (*.fastq)") ---p1[QC]--> f3("QualityReport (*.html)")
    subgraph p1[QC]
        p1-1{{FastQC}}
    end
  </div>

  <div>

  ![](images/fastqc-gui.png)

  </div>
</div>

---

# Are we **FAIR**, yet?

- where did I click
- reproducibility
- record exactly what I've done
- history
- instruction
- tool version
- 

<!-- 
- Installation / Environment
- Version
- Input / Output
 -->

---

# Command line tool

- Some tool that you can run ... on the command line
- Example:
  - CLI: **ARC Commander**
  - (GUI: **ARCitect**)
- Takes arguments or parameters as **inputs**
- Generates **outputs**

---

# FastQC via command line

```bash
fastqc --version
fastqc --help
```

---

# FastQC via command line


`fastqc assays/rnaseq/dataset/blau1_CGATGT_L005_R1_002.fastq.gz`

<div class="mermaid">
flowchart LR
  f1("Reads (*.fastq)") ---p1[QC]--> f3("QualityReport (*.html)")
  subgraph p1[QC]
      p1-1{{FastQC}}
  end
</div>

---

# Materials & Methods ✅

```bash
fastqc assays/rnaseq/dataset/sample1
fastqc assays/rnaseq/dataset/sample2
fastqc assays/rnaseq/dataset/ ...
```

"*FastQC v0.12.1 was employed for read quality control using default parameters.*"

---

# Installing bioinformatic tools 🎢

- From source: https://www.bioinformatics.babraham.ac.uk/projects/download.html#fastqc
- Docker: `docker pull quay.io/biocontainers/fastqc`
- Conda: `conda install fastqc`

---

# Why CWL and ARCs?

<div class="two-columns">

<div>

  ### Reproducibility / Replicability of the data
  
  Rerunning the same analysis on the **same** dataset

  <div class="mermaid">
  flowchart LR
    f1("dataset1") ---p1[analysis pipeline]--> r1("results1")
  classDef one fill:#62d4c1;
  class f1,r1 one;
  </div>

  <div class="mermaid">
  flowchart LR
    f1("dataset1") ---p1[analysis pipeline]--> r1("results1")
  classDef one fill:#62d4c1;
  class f1,r1 one;
  </div>
</div>

<div>

  ### Reusability of the analysis
  
  Applying the same analysis on **another** dataset

  <div class="mermaid">
  flowchart LR
    f2("dataset2") ---p1[analysis pipeline]--> r2("results2")
  classDef two fill:#ffd34d;
  class f2,r2 two;
  </div>

</div>

</div>

---

# Some factors affecting reproducibility & reusability

- Version of tool / software
- Version of package/library and interpreter (python, R, F#, etc.)
- Operating system (linux, win, mac) and version
- ...

---

# Approaches towards CWL in ARCs

1. Wrap a script
2. Wrap a CLI tool
3. Reuse an existing CWL document (command line tool or full workflow)
4. ...

---

# Demo: CWL-Wrapping the CommandLineTool FastQC

---

# Step 1

- Without in/out
- **Local tool installed**

```yaml
#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

baseCommand: ["fastqc", "--help"]

inputs: []
 
outputs: []
```

---

# Step 2: Add a docker container

```yaml
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

# Step 3: Define inputs

<style scoped> section {font-size: 20px;}</style>

```yaml
#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: quay.io/biocontainers/fastqc:0.11.9--hdfd78af_1

baseCommand: ["fastqc"]

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
---

# Step 4: Define outputs

<style scoped> section {font-size: 18px;}</style>

```yaml
#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: quay.io/biocontainers/fastqc:0.11.9--hdfd78af_1

baseCommand: ["fastqc"]

inputs:
  reads:
    type: File[]
    inputBinding:
      position: 1

arguments: 
  - valueFrom: $(runtime.outdir)
    prefix: "-o"

outputs:
  fastqc_out:
      type: File[]
      outputBinding:
        glob:
          - "*_fastqc.zip"
          - "*_fastqc.html"
```

---


# Step 4: Define outputs

<style scoped> section {font-size: 18px;}</style>

<div class="two-columns">

  <div>

```yaml
#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: quay.io/biocontainers/fastqc:0.11.9--hdfd78af_1

baseCommand: ["fastqc"]

inputs:
  reads:
    type: File[]
    inputBinding:
      position: 1

arguments: 
  - valueFrom: $(runtime.outdir)
    prefix: "-o"

outputs:
  fastqc_out:
      type: File[]
      outputBinding:
        glob:
          - "*_fastqc.zip"
          - "*_fastqc.html"
```


  </div>

  <div class="mermaid">
  flowchart TD
    f1("Reads (*.fastq)") ---p1[QC]--> f3("QualityReport (*.html)")
    subgraph p1[QC]
        p1-1{{FastQC}}
    end
  </div>

</div>


---

# Run the workflow

You can provide arguments via another file:

`run.yml`

```yaml
reads:
  - class: File
    path: ../../assays/rnaseq/dataset/blau1_CGATGT_L005_R1_002.fastq.gz
  - class: File
    path: ../../assays/rnaseq/dataset/blau2_TGACCA_L005_R1_002.fastq.gz
```

---

# Reusability: Simply import an existing CWL

- e.g. from one ARC to another

---

# Growing pipeline: First steps RNASeq pipeline

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

# CWL is a time investment at first

There's a *tiny* learning curve and some dependencies

- JavaScript
- Docker
- Conda and the cwltool (reference runner)
- ...

...but it pays off! 

---

# ARC-CWL tutorials

- Knowledge Base: https://nfdi4plants.github.io/nfdi4plants.knowledgebase/guides/arc-cwl/

---

# Resources

- Specification v1.2: https://www.commonwl.org/v1.2/CommandLineTool.html
- CWL tool: https://github.com/common-workflow-language/cwltool
- CWL Discourse: https://cwl.discourse.group
- Published Workflows: https://view.commonwl.org/workflows
- CWL repos: https://www.commonwl.org/repos/
- bio-cwl-tools: https://github.com/common-workflow-library/bio-cwl-tools/tree/release
- EBI-Metagenomics: https://github.com/EBI-Metagenomics/workflow-is-cwl/tree/master/tools