---
title: README 2023-09-MibiNet-CEPLAS-StartYourARC
---

## See website locally

1. Execute `npm run fornax`
2. Open http://127.0.0.1:8080/docs/teaching-materials/disseminations/2023-09-MibiNet-CEPLAS-StartYourARC/index.html


## Batch-compile marp slide decks to html

```bash
cd src/docs/teaching-materials/events-2023/2023-09-MibiNet-CEPLAS-StartYourARC
```

```bash

marpTheme=../../style/marp/marp-theme_dataplant-ceplas-mibinet-ccby.css

for unit in *.md; do
    
    if grep -q "^marp: true" "$unit"
    then
        marp --html $unit --allow-local-files --theme-set $marpTheme
    fi

done
```




## Combine all slide decks into one

```zsh
selectMarpTheme=marp-theme_dataplant-ceplas-mibinet-ccby
outfolder=_combined-slides

mkdir -p $outfolder
title=$(pwd | xargs basename)
outfile="$outfolder"/"$title".md
currentDate=$(date +"%Y-%m-%d")

echo "---\nmarp: true\n
for unit in *.md; do    
    if grep -q "^marp: true" "$unit"
    then
      yamlEnd=$(awk '/---/{++n; if (n==2) { print NR; exit}}' $unit)
      tail -n +$((yamlEnd+1)) $unit >> $outfile
      echo "\n---\n" >> $outfile
    fi
done

sed "s|\.\./\.\./\.\./images/|\.\./\.\./\.\./\.\./images/|g" $outfile > tmp; mv tmp $outfile


npx @marp-team/marp-cli@latest --html --allow-local-files $outfile --theme-set $marpTheme ../../style/marp/ --
npx @marp-team/marp-cli@latest --html --allow-local-files --pdf $outfile --theme-set $marpTheme ../../style/marp/ --

```
