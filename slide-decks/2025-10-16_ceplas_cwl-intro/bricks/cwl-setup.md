---
title: Setup for CWL
author: Dominik Brilhaus
license: CC-BY 4.0
date: 2025-10-14
layout: center
---

## Setup for CWL

- Install [Docker](https://docs.docker.com/engine/install/)
- Install [conda](https://docs.conda.io/projects/conda/en/latest/user-guide/install/)
- Install the CWL Runner [cwltool](https://cwltool.readthedocs.io/en/latest/)

---
layout: two-columns
---

# Conda

::left::

<!-- <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/anaconda/anaconda-original.svg" width="80"/> -->

- Miniconda, Anaconda, Miniforge, ...
- **Package manager** for scientific software  
- Creates **isolated environments**
- Reproducible installation of tools


### Install a conda distribution

https://docs.conda.io/projects/conda/en/latest/user-guide/install/

::right::

### Create environment

```bash
conda create -n cwl_env
conda activate cwl_env
```

### Install tool or package

```bash
conda install cwltool
```

---
layout: two-columns
---

# Avoid using Anaconda and the "default" channel

::left::

### Check the terms of services

- https://www.anaconda.com/pricing/terms-of-service-faqs
- https://docs.conda.io/projects/conda/en/latest/user-guide/configuration/settings.html#config-channels

::right::

### Adapt .condarc to prevent using "default" channel

- Your `.condarc` (e.g. ~/miniconda3/.condarc) should look similar to this

```yaml [.condarc]
channels:
  - conda-forge
  - bioconda
```

---
layout: two-columns
---

# Docker

<div class="absolute top-20 left-250">
  <img alt="Common Workflow Language" 
      type="image/svg" width="100" src="https://www.docker.com/wp-content/uploads/2022/03/Moby-logo.png" />
  <a class="text-xs text-gray-400" target="_blank" href="https://www.docker.com/">https://www.docker.com/</a>
</div>

- **Containerization platform**
- Bundles software + dependencies
- CWL can define Docker images for each tool

### Install tool or package

```bash
docker pull commonworkflowlanguage/cwltool
```

---
layout: default
---

# Dockerfile


---

### cwltool

<img src="https://www.commonwl.org/assets/images/CWL-Logo.png" width="80"/>

- **Reference CWL runner**
- Validates and executes workflows
- Supports Docker, Singularity, and Conda

<pre><code>pip install cwltool
cwltool --help</code></pre>


---
layout: default
---

# devcontainer

