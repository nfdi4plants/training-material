---
title: Setup for CWL
author: Dominik Brilhaus
license: CC-BY 4.0
date: 2025-10-14
---

## Setup for CWL

- Install conda
- Install Docker
- Install cwltool

---
layout: two-columns
---

# Conda

::left::

<!-- <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/anaconda/anaconda-original.svg" width="80"/> -->

- Anaconda, Miniconda, ...
- **Package manager** for scientific software  
- Creates **isolated environments**
- Reproducible installation of tools


### Installation

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

### 🐳 Docker

<img src="https://www.docker.com/wp-content/uploads/2022/03/Moby-logo.png" width="100"/>

- **Containerization platform**
- Bundles software + dependencies
- CWL can define Docker images for each tool

<pre><code>docker pull commonworkflowlanguage/cwltool</code></pre>

---

### ⚙️ cwltool

<img src="https://www.commonwl.org/assets/images/CWL-Logo.png" width="80"/>

- **Reference CWL runner**
- Validates and executes workflows
- Supports Docker, Singularity, and Conda

<pre><code>pip install cwltool
cwltool --help</code></pre>

---
