
# marp slides

```bash
slides=cwl-in-arcs.md
marpTheme=marp-theme_dataplant-ceplas-ccby
```


## render slides in watch mode

```bash
npx @marp-team/marp-cli@latest --html --allow-local-files --watch $slides --theme-set $marpTheme ../../style/ --
```

## render pdf

```bash
npx @marp-team/marp-cli@latest --pdf --allow-local-files $slides --theme-set $marpTheme ../../style/ --
```