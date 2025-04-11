# DataPLANT Training Material

Welcome to the DataPLANT Training Material.

Here you can find training material of previous workshops and classes.

Check out the [DataPLANT Knowledge Base](https://nfdi4plants.org/nfdi4plants.knowledgebase/) for up-to-date guides and tutorials.

Material are shared here under [CC BY 4.0 license](https://creativecommons.org/licenses/by/4.0/).

## Past events


Event | Slide decks
----|---
2025-04-02_fdmnrw_fdm-werkstatt         | [slide-decks/2025-04-02_fdmnrw_fdm-werkstatt](slide-decks/2025-04-02_fdmnrw_fdm-werkstatt/slides.pdf)
2025-02-17_mibinet-arc-elabFTW-training | [slide-decks/2025-02-17_mibinet-arc-elabFTW-training](slide-decks/2025-02-17_mibinet-arc-elabFTW-training/combined-slides/2025-02-17_mibinet-arc-elabFTW-training.pdf)
2025-02-11_ceplas-mibinet_arcify        | [slide-decks/2025-02-11_ceplas-mibinet_arcify](slide-decks/2025-02-11_ceplas-mibinet_arcify)
2025-02-06_ARC_Workshop | [slide-decks/2025-02-06_workshop_FZJ/2025-02-06_ARC_Workshop](slide-decks/2025-02-06_workshop_FZJ/2025-02-06_ARC_Workshop.pdf)
2025-02-05_dataplant_dsc_cwl-demo       | [slide-decks/2025-02-05_dataplant_dsc_cwl-demo](slide-decks/2025-02-05_dataplant_dsc_cwl-demo)
2024-12-11_dp_dscirlce_knowledgebase    | [slide-decks/2024-12-11_dp_dscirlce_knowledgebase](slide-decks/2024-12-11_dp_dscirlce_knowledgebase)
2024-11-11_ceplas_phd-module-2024 | [2024-11-11_ceplas_phd-module-2024](slide-decks/2024-11-11_ceplas_phd-module-2024/combined-slides/2024-11-11_ceplas_phd-module-2024.pdf)
2024-10-24_ceplas_arcify-your-research-project | [2024-10-24_ceplas_arcify-your-research-project](slide-decks/2024-10-24_ceplas_arcify-your-research-project/_combined-slides/2024-10-24_CEPLAS-ARCify-your-research-project.pdf)
2024-06-19_trr175_tutzing-retreat | [2024-06-19_trr175_tutzing-retreat](slide-decks/2024-06-19_trr175_tutzing-retreat)
2024-04-11_mibinet-ceplas_arc-trainings | [2024-04-11_mibinet-ceplas_arc-trainings](slide-decks/2024-04-11_mibinet-ceplas_arc-trainings)
2024-04-03_ceplas_arc-trainings | [2024-04-03_ceplas_arc-trainings](slide-decks/2024-04-03_ceplas_arc-trainings)
2024-02-13_trr175_becoming-fair | [2024-02-13_trr175_becoming-fair](slide-decks/2024-02-13_trr175_becoming-fair)
2023-11-15_ceplas_arc-clubs | [2023-11-15_ceplas_arc-clubs](slide-decks/2023-11-15_ceplas_arc-clubs)
2023-11-14_hhu_tagderforschungsdaten | [2023-11-14_hhu_tagderforschungsdaten](slide-decks/2023-11-14_hhu_tagderforschungsdaten)
2023-11-08_ceplas_phd-module | [2023-11-08_ceplas_phd-module](slide-decks/2023-11-08_ceplas_phd-module)
2023-10-29_cscs-ceplas_startyourarc | [2023-10-29_cscs-ceplas_startyourarc](slide-decks/2023-10-29_cscs-ceplas_startyourarc)
2023-09-21_mibinet-ceplas_startyourarc | [2023-09-21_mibinet-ceplas_startyourarc](slide-decks/2023-09-21_mibinet-ceplas_startyourarc)
2023-09-19_hhu_fdm-nrw-bestpractice | [2023-09-19_hhu_fdm-nrw-bestpractice](slide-decks/2023-09-19_hhu_fdm-nrw-bestpractice)
2023-07-20_rptu_summerschool-elabftw | [2023-07-20_rptu_summerschool-elabftw](slide-decks/2023-07-20_rptu_summerschool-elabftw)
2023-07-17_rptu_summerschool-on-rdm | [2023-07-17_rptu_summerschool-on-rdm](slide-decks/2023-07-17_rptu_summerschool-on-rdm)
2023-07-11_dataplant_datasteward-circle | [2023-07-11_dataplant_datasteward-circle](slide-decks/2023-07-11_dataplant_datasteward-circle)
2023-06-28_hhu_arc-club | [2023-06-28_hhu_arc-club](slide-decks/2023-06-28_hhu_arc-club)
2023-05-09_dataplant_teaching-materials-concept | [2023-05-09_dataplant_teaching-materials-concept](slide-decks/2023-05-09_dataplant_teaching-materials-concept)
2023-05-09_ceplas_startyourarc-series | [2023-05-09_ceplas_startyourarc-series](slide-decks/2023-05-09_ceplas_startyourarc-series)
2023-04-27_dataplant_mbs-onboarding | [2023-04-27_dataplant_mbs-onboarding](slide-decks/2023-04-27_dataplant_mbs-onboarding)

---

## Development

In order to reuse images from the knowledge base, the repo is added here as a submodule.

### Add knowledge base via git submodule

```bash
git submodule add -b main https://github.com/nfdi4plants/nfdi4plants.knowledgebase/ public/kb
git submodule update --init --recursive
```

### Slidev

[Slidev](http://sli.dev/) is a pretty strong vue.js based framework to build slides from markdown files.

- This can also be used to compile slide decks from smaller slide decks ("bricks").
- There's a vscode extension available
- while in watch or building it checks, that all referenced / reused images or imported bricks actually exist.

#### Install slidev

```bash
## npm init slidev (done once)
npm install ## (done once per machine)
```

#### watch a slidev slide deck

You can see an example slide deck built with slidev here using the following command. 
This should open a browser with the presentation, including some presentation controls in the bottom-left corner.
(Note: this will only work, if above `git submodule` (i.e. the images from knowledge base) are correctly added.)

```bash
npm run dev -- slide-decks/2025-04-02_fdmnrw_fdm-werkstatt/slides.md
```

#### export a slidev slide deck to pdf

You can directly export a slide deck to pdf using slidev's browser controls or use the export command, e.g.

```bash
npm run export -- slide-decks/2025-04-02_fdmnrw_fdm-werkstatt/slides.md --output slide-decks/2025-04-02_fdmnrw_fdm-werkstatt/slides.pdf
```