#!/bin/bash

cd ../../fna/
for i in *.fna ; do grep -v ">" $i | tr -d '\n' | wc -c > $i.totalbp.txt ; done
#grep -v ">" find all non header lines (i.e. without ">")
#tr -d '\n' delete all newlines
#wc -c count all characters
grep -vI “\x00” -- *.txt | sed 's/:/\t/g' > genomesize.tab
sed -i 's/.fna.totalbp.txt//g' genomesize.tab
