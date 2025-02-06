---
marp: true
theme: marp-theme_dataplant-ceplas-mibinet-ccby
paginate: true
license: '[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)'
title: DataPLANT DataHUB
author:
- name: Dominik Brilhaus
  github: https://github.com/brilator
  orcid: https://orcid.org/0000-0001-9021-3197
- name: Cristina Martins Rodrigues
  github: https://github.com/CMR248
  orcid: https://orcid.org/0000-0002-4849-1537
---

# DataHUB terminology and data sharing

---

## Choosing the proper role

When inviting new members to an ARC or group, you can choose between different levels.

<img src="../../../images/arc-sharing-permissionsroles.drawio.png" style="display: block; margin: auto" width=800px>

:bulb: By default you are **Owner** of an ARC you create or upload to the DataHUB.

---

## **Projects** and **Groups** are not the same

- "Project" = ARC
- "Groups" = Group of users

---

## Project = ARC

- In the DataHUB, ARCs are called "projects"; they are the same.
- An ARC can be shared with individual users (invited as "members") or a group.

---

## DataHUB Groups = Group of members (e.g. lab)

- A "Group" is a group of users with specific [permissions](#roles-and-permissions)
- A group can share ARCs
- A group can be invited to an ARC
- Groups can have subgroups

---

## Options to share an ARC via the DataHUB

<img src="../../../images/arc-sharing-options.drawio.png" style="display: block; margin: auto" width=700px>

---

## Namespaces

- Every user has a personal namespace, where they can upload or create new ARCs
- Every group and subgroup has its own namespace

<div class="table-container" style="font-size: 25px">

Type | URL | Namespace | Name
--- | --- | --- | --- 
A **personal** ARC | https://git.nfdi4plants.org/brilator/Facultative-CAM-in-Talinum | `brilator` | Dominik Brilhaus
An **group**-shared ARC | https://git.nfdi4plants.org/hhu-plant-biochemistry/Samuilov-2018-BOU-PSP | `hhu-plant-biochemistry` | HHU Plant Biochemistry

### :bulb: **Personal** is not the same as **private**

---

## Visibility

The visibility of ARCs and groups can be managed individually for each ARC or group
  
<img src="../../../images/arc-sharing-visibility.drawio.png" style="display: block; margin: auto" width=800px>

:bulb: By default every ARC and every group is set to **private**.

---

## ARC DataHUB members // ARC Investigation contacts <!-- fit -->

![w:1100](../../../images/arc-sharing-membersvscontacts.drawio.png)

:bulb: Investigation contacts are not automatically invited as members to the ARC.

---

## Version control

Check out the **commit history** of your ARC via Repository (2) or directly via commits (7)

![w:1000](../../../images/datahub/datahub-arc-overview.drawio.svg)
