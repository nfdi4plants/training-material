---
marp: true
theme: marp-theme_dataplant-ceplas-ccby
paginate: true
license: '[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)'
author:
- name: Dominik Brilhaus
  github: https://github.com/brilator
  orcid: https://orcid.org/0000-0001-9021-3197
date: 2023-09-20
title: ARC Commander Hands-on
---

# ARC Commander Hands-on

---

## Registration

Everyone <a href="https://register.nfdi4plants.org" target="_blank">signed-up</a> at the DataHUB?

---

## Check your installation

Open a terminal and one after the other execute

```bash
git --version
```

```bash
git-lfs --version
```

```bash
arc --version
```

:bulb: If you see a warning at any of these, let us know.

---

## Config

```bash
git config --global --get-regexp user
```

:bulb: If this does not display your user name and email, you need to [configure git](https://nfdi4plants.org/nfdi4plants.knowledgebase/docs/ArcCommanderManual/arc_installation_git.html).

---

## Have a simple text editor ready

- Windows Notepad
- MacOS TextEdit

Recommended text editor with code highlighting, git support, terminal, etc: <a href="https://code.visualstudio.com/" target="_blank">Visual Studio Code</a>

---

## Create a fresh folder for your ARCs

For this workshop, create a new folder somewhere on your machine where you want to store ARCs, e.g. in your documents folder:

- `C:\Users\<username>\Documents\workshop-arcs` (windows)
- `~/Documents/workshop-arcs` (mac)

:warning: Ideally this folder is not "watched" by any cloud service (Sciebo, google drive, iCloud, etc.)

---

# Hands-on with demo data

First steps towards your ARC using the **ARC Commander**

---

## Download the demo data

```bash
git clone "https://demo-user:1_eznikmzxzARAbUxxnF@git.nfdi4plants.org/teaching/demo-arc_level0.git"
```

---

## You just received your data

![bg right width:400](./../../public/images-tm/training-demo-talinum/demo-data-screenshot.png)

---

## Goal

- Structure,
- Annotate, and
- Share your experimental data.

<br>

:bulb: We'll talk about data annotation later

---


## Structure your data

![width:800](./../../public/images-tm/arc-fillwithdata-experimental.png)

---

# Your fresh ARC folder

1. Create a new folder, which you want to initialize as an ARC.
2. Open the command line inside the folder or navigate via command line to that folder.

For example:
```bash
mkdir -p ~/Documents/workshop-arcs/arc-demo
cd ~/Documents/workshop-arcs/arc-demo
```
---

## Initiate the ARC folder structure

```bash
arc init
```

---

## Create an investigation

```bash
arc investigation create -i TalinumPhotosynthesis
```

---

## Add a person

```bash
arc i person register --lastname Brilhaus --firstname Dominik --email brilhaus@hhu.de --affiliation CEPLAS
```


---

## Add a study

```bash
arc study add -s talinum_drought
```
  
---

## Add assays

```bash
arc assay add -s talinum_drought -a rnaseq
arc assay add -s talinum_drought -a metabolomics
```

---

## Collaborate and share

![w:650](./../../public/images-tm/arc-datasharing-experts02-img1.png)

---

# Upload your local ARC to the DataHUB

```bash
arc sync -f -r https://git.nfdi4plants.org/<username>/arc-demo
```

---

## Sort the demo data into the ARC

Identify "raw dataset(s)" and "protocols" and move them to the proper subfolders in the ARC.

![bg right w:500](./../../public/images-tm/training-demo-talinum/demo-data-screenshot.png)

---


## Sync your ARC to the DataHUB

To save the changes, sync the ARC to the DataHUB including a message.

```bash
arc sync -m "sorted the demo data"
```

---

## Check the ARC in the DataHUB

Navigate to `https://git.nfdi4plants.org/<username>/arc-demo` to visit your ARC in the DataHUB

---

## Your ARC is ready

![bg 80% right:75%](./../../public/images-tm/training-demo-talinum/demo-data-screenshot.png)
![bg 80%](./../../public/images-tm/training-demo-talinum/demo-arc-screenshot.png)

---

---

# Contributors

Slides presented here include contributions by

- name: Dominik Brilhaus
  github: https://github.com/brilator
  orcid: https://orcid.org/0000-0001-9021-3197
