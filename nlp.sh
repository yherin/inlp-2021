#!/bin/sh
set -e

mkdir nlp-ex1 
cd nlp-ex1

set +e

wget --recursive --no-parent https://www.cs.helsinki.fi/u/yangarbe/Courses/2020-NLP/Morphological-Analysis/ .
mv www.cs.helsinki.fi/u/yangarbe/Courses/2020-NLP/Morphological-Analysis/* .
rm -r www.cs.helsinki.fi
rm *index.html*
echo "Done"
echo "Files downloaded to $PWD"
