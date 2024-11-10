---
marp: true
theme: marp-theme_dataplant-ceplas-ccby
paginate: true
author:
- name: Dominik Brilhaus
  github: https://github.com/brilator
  orcid: https://orcid.org/0000-0001-9021-3197
license: '[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)'
date: 2023-03-16
title: Code Reproducibility
---

# Code Notebooks and IDEs

<div class="two-columns">

<div>

- Interactive (good start for non-coders)
- Document and comment code
- Often offer integrated version control (e.g. git plugin)
- Executable code + "result preview"

</div>
<div>

#### Examples

- Visual Studio Code: https://code.visualstudio.com/
- RMarkdown: http://rmarkdown.rstudio.com
- Jupyter Notebooks: https://jupyter.org/ 

</div>

</div>
</div>

---

# Workflow languages

<div class="two-columns">
<div>

- Describe analysis workflows and tools
- Make them portable and scalable
- Across a variety of environments (software and hardware)

</div>

<div>

#### Examples

<https://www.commonwl.org>
<https://www.nextflow.io>
<https://nf-co.re/>
<https://snakemake.github.io>

</div>
</div>

---

## Common Workflow Language

![](../../../nfdi4plants.knowledgebase/src/assets/images/start-here/arc-prototypic-workflows-cwl2.svg)

---

## Common Workflow Language

```yml
cwlVersion: v1.2
class: CommandLineTool
requirements:
  - class: InitialWorkDirRequirement
    listing:
      - entryname: heatmap.py
        entry:
          $include: heatmap.py
baseCommand: [python, heatmap.py]
inputs:
  MeasurementTableCSV:
    type: File
    inputBinding:
      position: 1
  FigureFileName:
    type: string
    inputBinding:
      position: 2

outputs:
  output:
    type: File
    outputBinding:
      glob: "*.svg"
```

---

# Galaxy

Platform that makes using code-based tools easy to use in a graphical user interface

#### Resources

- https://usegalaxy.eu
- https://galaxyproject.eu/

---

# Software Containers

- Big step towards reproducibility **and** reusability
- Help installing software (OS-agnostic)
- Help managing and documenting package and library dependencies

#### Examples:
  - https://www.docker.com
  - https://podman.io

#### Resources
  - https://www.bioconductor.org
  - BioContainers: https://github.com/BioContainers/
