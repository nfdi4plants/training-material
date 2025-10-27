---
title: CWL on (HHU) HPC
author: Dominik Brilhaus
license: CC-BY 4.0
date: 2025-10-14
layout: two-columns
---

# CWL & HPC

::left::

## CWL

```yml{4-7}
cwlVersion: v1.2
class: CommandLineTool
hints:
  ResourceRequirement:
    coresMin: 3
    ramMin: 1000

baseCommand: [blastx]

inputs: []

outputs: []
```

::right::

## PBS `qsub` job script

```bash {2}
#!/bin/bash
#PBS -l select=1:ncpus=3:mem=1000mb

set -e

module load blastx

blastx

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

<!-- ## HPC HHU

- TODO: conda mirrors

-->