---
title: "README 2023-11-08_CEPLAS-module"
date: 2023-11-06
---

## Add sections from last year

- git / version control
- FAIR project exercises

## See website locally

1. Execute `npm run fornax`
2. Open http://127.0.0.1:8080/docs/teaching-materials/disseminations/2023-11-08_CEPLAS-module/index.html


## Batch-compile marp slide decks to html

```bash
cd src/docs/teaching-materials/disseminations/2023-11-08_CEPLAS-module
```

```bash

marpTheme=../../style/marp/marp-theme_dataplant-ceplas-ccby.css

for unit in *.md; do
    
    if grep -q "^marp: true" "$unit"
    then
        marp --html $unit --allow-local-files --theme-set $marpTheme
    fi

done
```

## automate hidden index

```bash

echo "---\n
for unit in *.html; do
    
    noPrefix=${unit#*-}
    noSuffix=${noPrefix%.*}

    echo "- <a href="./$unit" target="_blank">$noSuffix</a>" >> hidden-index.md
   

done
```
