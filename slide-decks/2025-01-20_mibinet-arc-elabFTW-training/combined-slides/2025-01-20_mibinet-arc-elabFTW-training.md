---\nmarp: true\nlayout: slides\ntheme: marp-theme_dataplant-ceplas-mibinet-ccby\npaginate: true\ntitle: 2025-01-20_mibinet-arc-elabFTW-training\ndate: 2025-01-09\n---\n

#  ARCify your research project

<!--  _color: white; -->
<!-- _paginate: false -->
<style scoped>section {background: none; background-color: white;}</style>

January, 2025

Sabrina Zander (MibiNet)
Stella Eggels (DataPLANT)

![bg fit](./../../images/ceplas/ceplas-background-title-mibinet.drawio.svg)

---
# Tentative agenda

<div class="two-columns" style="font-size: 18px">
<div class="columns-left">

### Morning

Time | Topics
-------- | --------
09:00 - 09:15 | Welcome, Intro RDM and NFDI
09:15 - 09:45 | Overview DataPLANT, and DataPLANT Tool chain
09:45 - 10:30 | Hands-on ARCitect
10:30 - 10:45 | *Short break* :coffee:
10:45 - 11:45 | Intro and Hands-on DataHUB
11:45 - 12:00 | Q & A

</div>

<div class="columns-right">

### Afternoon

Time | Topics
-------- | --------
12:00 - 13:00 | *Lunch break* :pizza:
13:00 - 14:00 | Intro and Hands-on Metadata annotation with SWATE
14:00 - 15:00 | Create your own ARC
15:00 - 15:15 | *Short break* :coffee:
15:15 - 16:30 | Create your own ARC
16:30 - 17:00 | Q & A and wrap-up

</div>
</div>

---


# House-keeping

<div class="two-columns">
  <div>

  - Use the [pad](https://pad.hhu.de/BpqX_5KHSUiW5gDhrUFtgg) to raise questions and feedback
  - Copy / paste links (hands-on)

  </div>

  <div>
  <a href="https://pad.hhu.de/BpqX_5KHSUiW5gDhrUFtgg" target="_blank"> </a>
  </div>
</div>

---

# Training Materials

Slides are shared via [DataPLANT Training Material](https://github.com/nfdi4plants/training-material)

---

# Resources &ndash; join the open source movement

### <img align="left" style="height:35px" src='https://raw.githubusercontent.com/nfdi4plants/Branding/7e7d442aafeaa767b9c14a63a16e459dadcbdaaf/logos/DataPLANT/dataplant-logo-minimal-rounded-bg-darkblue.svg'/> DataPLANT (nfdi4plants)

DataPLANT Website: <a href="https://nfdi4plants.org/" target="_blank">https://nfdi4plants.org/</a>
Knowledge Base: <a href="https://nfdi4plants.org/nfdi4plants.knowledgebase/" target="_blank">https://nfdi4plants.org/nfdi4plants.knowledgebase/</a>
DataHUB: <a href="https://git.nfdi4plants.org" target="_blank">https://git.nfdi4plants.org</a>

GitHub: <a href="https://github.com/nfdi4plants" target="_blank">https://github.com/nfdi4plants</a>
HelpDesk: <a href="https://helpdesk.nfdi4plants.org" target="_blank">https://helpdesk.nfdi4plants.org</a>

:bulb: You can help us by raising issues, bugs, ideas...

:rocket: NEW! ARC website: <a href="https://arc-rdm.org" target="_blank">https://arc-rdm.org</a>

---

# Continuous support

Data managers in Düsseldorf, Cologne, Jülich and close by (CEPLAS, MibiNet, TRR341) offer support.

1. Slack Workspace for ad hoc support
2. Monthly user meeting (2nd Friday of the month)

[&rarr; Details](https://nfdi4plants.github.io/events/2025-01-10_arc-user-support/).

<div>
  <img style="height:40px;margin-right:50px" src='https://www.ceplas.eu/typo3conf/ext/fksitepackage/Resources/Public/Images/CEPLAS-Logo.svg'/>
  <img style="height:100px;margin-right:50px" src='https://trr341.uni-koeln.de/sites/crc_trr_341/TRR341_logo.png'/>
  <img style="height:70px;margin-right:50px" src='https://www.sfb1535.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Biologie/SFB1535/Bilder/MibiNet.png'/>
</div>

---

# Introduce yourself

- Lab
- MibiNet / CEPLAS / TRR / ?
- Used code / programming language before
- Experience with Git / GitLab / GitHub?
- Have an ORCID
- My motivation / expectation
- My favorite lab assay

---

# Let's draw a typical lab workflow :pencil:


---


# BYOD &ndash; Goals

- First few steps into ARC ecosystem
- Move existing datasets into ARCs
- Share them via the DataHUB
- Annotate with metadata
- Introduction into elabFTW 
- elab2ARC tool

![bg right w:500](./../../images/ceplas-arcs.drawio.svg)

\n---\n

<!-- 
# Why research data management (RDM)?

- Increase transparency
- Make data accessible
- Save time (writing, reusing)
- Reduce the risk of data loss
- Optimize the costs
- Facilitate future reuse and sharing
- Improve citations

![bg right:40% w:400](https://rdmpromotion.rbind.io/material/CC-BY-NC/futureself.png)

--- -->

# FAIR data stewardship

- **F**indable
- **A**ccessible
- **I**nteroperable
- **R**eusable

https://doi.org/10.1038/sdata.2016.18

![bg right:45% w:600](./../../images/wilkinson2016-fair.png)

---

# The FAIR principles

<style scoped>

section p img {
width: 1100px;
height: 450px;
object-fit: cover;
/* object-position: 100% 100%; */
}
</style>

![](./../../images/ceplas/fair-benefits.png)

---

# Is your data FAIR?

**F**indable | **A**ccessible | **I**nteroperable | **R**eusable

- Where do you store your data?
- How do you annotate your data?
- How do you share your data?
- What tools do you use to analyse your data?
- How do you reuse other people's data?

![bg right:40% w:500](./../../images/user-challenges-002.svg)

<!-- 
---

# The research data life cycle

![w:350](./../../images/rdmkit-data-life-cycle-9.svg)

<span class="footer-reference">https://rdmkit.elixir-europe.org, [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)</span> 

-->
\n---\n

# MibiNet &ndash; One SFB, six locations

![w:800](./../../images/mibinet/data-fragmentation-mibinet00.drawio.png)

---

# Data silos impede collaboration

![w:800](./../../images/mibinet/data-fragmentation-mibinet01.drawio.png)


---

# Missing interfaces impede collaboration

![w:800](./../../images/ceplas/hhu-services-withoutdatahub.drawio.png)
\n---\n
