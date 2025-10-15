---
title: CWL on (HHU) HPC
author: Dominik Brilhaus
license: CC-BY 4.0
date: 2025-10-14
layout: center
---

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

---
layout: two-columns
---

# Toil-Runner

Docs / installation: https://toil.readthedocs.io/en/latest/gettingStarted/install.html

::left::

```bash
source ~/venv/bin/activate
module load Python/3.12.3

export TOIL_TORQUE_ARGS="-A GAIN4CROPS"
export TOIL_TORQUE_REQS="walltime=01:59:00"

toil-cwl-runner \
  --batchSystem torque \
  --jobStore job-store \
  --retryCount 0 \
   workflow.cwl run.yml
```

::right::

```yml [run.yml]
message: Hello world!
```

```yml [workflow.cwl]
cwlVersion: v1.2
class: CommandLineTool
baseCommand: echo
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

