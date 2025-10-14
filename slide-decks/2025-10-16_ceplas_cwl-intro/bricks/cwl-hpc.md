

## HPC HHU

- conda mirrors
- cwl-toil


---
layout: two-cols-header
---

# CWL & HPC => toil-runner

::left::

## CWL

```yml{4-7}
cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo
hints:
  ResourceRequirement:
    coresMin: 1
    ramMin: 100
stdout: output.txt
inputs:
  message:
    type: string
    inputBinding:
      position: 1
outputs:
  output:
    type: stdout
```

::right::

## PBS job script

```bash
```
