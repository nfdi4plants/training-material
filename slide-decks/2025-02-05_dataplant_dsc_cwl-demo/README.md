
# CWL in ARCs

- DataPLANT Data Steward Circle – Feb 5<sup>th</sup>, 2025
- Dominik Brilhaus, [CEPLAS Data](https://www.ceplas.eu/en/research/ceplas-data)

:bulb: The mermaid graphs don't render properly in the pdf, check out the html instead. 

## marp slides

```bash
slides=cwl-in-arcs.md
marpTheme=marp-theme_dataplant-ceplas-ccby
```


### render slides in watch mode

```bash
npx @marp-team/marp-cli@latest --html --allow-local-files --watch $slides --theme-set $marpTheme ../../style/marp/ --
```

### render pdf

```bash
npx @marp-team/marp-cli@latest --pdf --allow-local-files $slides --theme-set $marpTheme ../../style/marp/ --
```