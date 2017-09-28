#! /bin/bash

echo "Generating epub version"
asciidoctor -d book -b docbook5 testing-microservices.adoc -o output.docbook
pandoc -f docbook -t epub output.docbook -o testing-microservices.epub

echo "Generating pdf version"
asciidoctor-pdf -d book testing-microservices.adoc -o testing-microservices.pdf

echo "Cleanup output"
rm output.docbook
