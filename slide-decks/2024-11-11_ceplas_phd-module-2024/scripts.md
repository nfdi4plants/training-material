

## Batch-compile marp slide decks to html

```bash

bricks_dir="bricks"

rm $bricks_dir/*.html

for unit in $bricks_dir/*.md; do
    
    if grep -q "^marp: true" "$unit"
    then
        npx @marp-team/marp-cli@latest --html --allow-local-files $unit --theme-set $marpTheme ../../style/ --
    fi

done
```

## automate adding slides to index

Slides will be placed between two tags <!-- linked-slides -->

```bash

indexfile=README.md
bricks_dir="bricks"

linkedSlidesBegin=$(awk '/<!-- linked-slides -->/{++n; if (n==1) { print NR; exit}}' $indexfile)
linkedSlidesEnd=$(awk '/<!-- linked-slides -->/{++n; if (n==2) { print NR; exit}}' $indexfile)

head -n $linkedSlidesBegin $indexfile > tmp

for unit in $bricks_dir/*.html; do
    
    noPrefix=${unit#*-}
    noSuffix=${noPrefix%.*}

    echo "- <a href="./$unit" target="_blank">$noSuffix</a>" >> tmp
   
done

tail -n +$linkedSlidesEnd $indexfile >> tmp

mv tmp $indexfile

```

## Combine all slide decks into one

```zsh
marpTheme=marp-theme_dataplant-ceplas-ccby
out_dir=combined-slides
bricks_dir=bricks

mkdir -p $out_dir
title=$(pwd | xargs basename)
outfile="$out_dir"/"$title".md
currentDate=$(date +"%Y-%m-%d")

echo "---\nmarp: true\nlayout: slides\ntheme: $marpTheme\npaginate: true\ntitle: $title\ndate: $currentDate\n---\n" > $outfile

for unit in $bricks_dir/*.md; do    
    if grep -q "^marp: true" "$unit"
    then
      yamlEnd=$(awk '/---/{++n; if (n==2) { print NR; exit}}' $unit)
      tail -n +$((yamlEnd+1)) $unit >> $outfile
      echo "\n---\n" >> $outfile
    fi
done

# sed "s|\.\./\.\./\.\./images/|\.\./\.\./\.\./\.\./images/|g" $outfile > tmp; mv tmp $outfile

npx @marp-team/marp-cli@latest --html --allow-local-files $outfile --theme-set $marpTheme ../../style/ --
npx @marp-team/marp-cli@latest --html --allow-local-files --pdf $outfile --theme-set $marpTheme ../../style/ --

```
