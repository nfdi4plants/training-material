---
marp: true
theme: marp-theme_dataplant-ceplas-ccby
paginate: true
license: '[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)'
title: ARCitect Hands-on
author:
- name: Dominik Brilhaus
  github: https://github.com/brilator
  orcid: https://orcid.org/0000-0001-9021-3197
- name: Cristina Martins Rodrigues
  github: https://github.com/CMR248
  orcid: https://orcid.org/0000-0002-4849-1537
- name: Sabrina Zander
  github: https://github.com/SabrinaZander
  orcid: https://orcid.org/0009-0000-4569-6126
---

<!-- TODO 

- more to remote?
- add history panel
- add Swate alpha examples in ARCitect ???
- check linking studies and assays

-->



# ARCitect Hands-on

<style scoped>section {background: none; background-color: white}</style>
<!-- _paginate: false -->

---

# ARCitect installation

Please install version **v0.0.31** (or later) of the ARCitect: https://github.com/nfdi4plants/ARCitect/releases/latest

---

## Download the demo data <!-- fit -->

https://nfdi4plant.sharepoint.com/:f:/s/Teaching/Eik7k-oJiMREgZ24kto7sIYBGxHmmZlS_Kzf7psk-5w-xg?e=u0sADd

![bg right w:600](./../../public/images-tm/training-demo-talinum/demo-data-download.png)

---

# Sort Demo data in an ARC

![bg right width:400](./../../public/images-tm/training-demo-talinum/demo-data-screenshot.png)

![width:900](./../../public/images-tm/arc-fillwithdata-experimental.png)

---

# Open ARCitect

1. Login to DataHUB (1)
   ![bg right:40% w:250](./../../public/images-tm/arcitect/arcitect-help-sidebar.png)
2. Select `git.nfdi4plants.org` as Host 
    ![w:800](./../../public/images-tm/arcitect/arcitect-choose-datahub.png)
---

# Initiate the ARC folder structure

![bg right:40% w:250](./../../public/images-tm/arcitect/arcitect-help-sidebar.png)

1. Create a **New ARC** (2)
2. Select a location and name it **TalinumPhotosynthesis**

---

# Your ARC's name

<style scoped>section {font-size: 25px;}</style>

💡 By default, your ARC's name will be used
   - for the ARC folder on your machine
   - to create your ARC in the DataHUB at `https://git.nfdi4plants.org/<YourUserName>/<YourARC>` (see next steps)
   - as the identifier for your investigation

💡 Make sure that no ARC exists at  `https://git.nfdi4plants.org/<YourUserName>/<YourARC>`. Otherwise you will sync to that ARC.


![bg right:30% w:500](./../../public/images-tm/training-demo-talinum/arcitect-talinumphotosynthesis.png)

---

# Add a description to your investigation

![w:900](./../../public/images-tm/training-demo-talinum/arcitect-talinumphotosynthesis-investigationmetadata.png)

---

# Add a contributor


![bg right w:600](./../../public/images-tm/training-demo-talinum/arcitect-talinumphotosynthesis-investigationperson.png)
- you could also add the contacts directly via ORCID
---

# Add a study

by clicking "Add Study" and entering an identifier for your study

Use **talinum_drought** as an identifier

![bg right w:500](./../../public/images-tm/training-demo-talinum/arcitect-talinumphotosynthesis-study.png)

---

# Study panel

In the study panel you can add

- general metadata,
- people, and
- publications
- data process information

![bg right w:500](./../../public/images-tm/training-demo-talinum/arcitect-talinumphotosynthesis-studypanel.png)
<!-- TODO show connected assays -->
---


# Add an assay

by clicking "Add Assay" and entering an identifier for your assay

Add two assays with **rnaseq** and **metabolomics** as an identifier
![bg right w:500](./../../public/images-tm/training-demo-talinum/arcitect-talinumphotosynthesis-assay.png)

---

# Link your assay to a study

You can either
- link your new assay to an existing study in your ARC or
- create a new one
  
Link your assays to your **talinum_drought** study


![bg right w:500](./../../public/images-tm/training-demo-talinum/arcitect-talinumphotosynthesis-assay2.png)

---

# Add information about your assay

In the assay panel you can define the assay's
 - measurement type
 - technology type, and
 - technology platform

![bg right w:600](./../../public/images-tm/training-demo-talinum/arcitect-talinumphotosynthesis-assaypanel.png)

---

# Add protocols

You can either
- directly write a **new protocol** within the ARCitect or
- import an existing one from your computer

![w:800](./../../public/images-tm/arcitect/arcitect-arcpanel-protocol.png)

---

# Add protocols and datasets

In the file tree you can
  - **import dataset files or folders** and 
  - **protocols** associated to that dataset.

:bulb: **Import Dataset** allows to import data from any location on your computer into the ARC.

:warning: Depending on the file size, this may take a while. Test this with a small batch of files first.


![bg right:40% w:400](./../../public/images-tm/arcitect/arcitect-arcpanel-assay03.png)

---

# Sort Demo Data to your ARC

💡 protocols and multiple datasets can directly be imported via ARCitect

---

# Explorer

The **Explorer (6)** button directly opens your ARC locally

![bg right:40% w:250](./../../public/images-tm/arcitect/arcitect-help-sidebar.png)

---

# Commit panel (7)

You have to commit changes before you can upload to the DataHUB

![bg right:40% w:250](./../../public/images-tm/arcitect/arcitect-help-sidebar.png)

---
If you are logged in, the **Commit panel** shows
- your DataHUB's *Full Name* and *eMail*

It allows you to
- track changes of the ARC with git
- add a commit message 
- use different branches 

![bg right:50% w:500](./../../public/images-tm/arcitect/arcitect-commit-panel.png)


---

# Upload your local ARC to the DataHUB

From the sidebar, navigate to **DataHUB Sync** (8)

![bg right:40% w:250](./../../public/images-tm/arcitect/arcitect-help-sidebar.png)

---


# DataHUB Sync

The DataHUB Sync panel allows you to
- sync the changes to the DataHUB: **Push**
- sync from the DataHUB: **Pull**, and
- change the Remote for the synchronization


![bg right:50% w:500](./../../public/images-tm/arcitect/arcitect-datahub-sync.png) 

<!-- TODO more to remote?-->
---


# Check if your ARC is successfully uploaded

1. [sign in](https://auth.nfdi4plants.org/realms/dataplant/login-actions/registration?client_id=account&tab_id=4bQkU161waI) to the DataHUB 
2. Check your projects

---

# Your ARC is ready

<style scoped>

section p br {
   display: block;
   margin-top: 20px;
   content: "";
}
</style>

👩‍💻 Initiated an ARC
<br>
📂 Structured and ...  
<br>
<img align="left" height=35px src='https://raw.githubusercontent.com/nfdi4plants/Branding/master/icons/Swate/Excel/Core/swate-c-40x40.png'/> ... annotated experimental data
<br>
🌐 Shared with collaborators

![bg right width:400](./../../public/images-tm/training-demo-talinum/demo-arc-screenshot.png)

---

---

# Received two emails from "GitLab" about a failed pipeline? <!-- fit -->

![w:600](./../../public/images-tm/datahub-cqc/cqc-error-email.png)

:fire: Don't worry :smile:

---

## Pipeline Failed

![bg right w:700](./../../public/images-tm/datahub-cqc/cqc-error-badges.png)

- a "continuous quality control" (CQC) pipeline validates your ARC
- This fails if one of the following metadata items is missing:

    ```bash
    Investigation Identifier
    Investigation Title
    Investigation Description
    Investigation Person Last Name
    Investigation Person First Name
    Investigation Person Email
    Investigation Person Affiliation
    ```  

---

## Pipeline Failed

If the pipeline has failed once, it is disabled by default

![bg right w:500](./../../public/images-tm/datahub-cqc/cqc-error-email2.png)

---

## Reactivate the CQC pipeline

<style scoped>
section {font-size: 22px;}
</style>

To reactivate it and let the DataHUB validate your ARC again:
  
  1. navigate to CI/CD setting `<arc-url>/-/settings/ci_cd`
  2. expand "Auto DevOps"
  3. check box "Default to Auto DevOps pipeline"
  4. Save changes

![bg right:60% w:600](./../../public/images-tm/datahub-cqc/cqc-activate-autodevops.png)
