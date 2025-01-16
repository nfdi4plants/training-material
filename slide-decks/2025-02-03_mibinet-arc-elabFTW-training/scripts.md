## Change into current slide deck folder

```bash
cd slide-decks/2025-01-20_mibinet-arc-elabFTW-training/
```

## Combine all slide decks into one

```bash
marpTheme=marp-theme_dataplant-ceplas-mibinet-ccby
out_dir=combined-slides
bricks_dir=bricks

mkdir -p $out_dir
title=$(pwd | xargs basename)
outfile="$out_dir"/"$title".md
currentDate=$(date +"%Y-%m-%d")

printf -- "---\nmarp: true\nlayout: slides\ntheme: $marpTheme\npaginate: true\ntitle: $title\ndate: $currentDate\n---\n" > $outfile

for unit in $bricks_dir/*.md; do    
    if grep -q "^marp: true" "$unit"
    then
      yamlEnd=$(awk '/---/{++n; if (n==2) { print NR; exit}}' $unit)
      tail -n +$((yamlEnd+1)) $unit >> $outfile
      printf -- "\n---\n" >> $outfile
    fi
done

npx @marp-team/marp-cli@latest --html --allow-local-files $outfile --theme-set $marpTheme ../../style/ --
npx @marp-team/marp-cli@latest --html --allow-local-files --pdf $outfile --theme-set $marpTheme ../../style/ --


```
