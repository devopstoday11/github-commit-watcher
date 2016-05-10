#!/usr/bin/env sh

echo ""                                                          > README.md
echo "<!--"                                                     >> README.md
echo "Generated by:"                                            >> README.md
echo "$ ./scripts/gen_doc.sh"                                   >> README.md
echo "-->"                                                      >> README.md
echo ""                                                         >> README.md
echo "[![Build Status](https://travis-ci.org/AurelienLourot/github-commit-watcher.svg?branch=master)](https://travis-ci.org/AurelienLourot/github-commit-watcher)" >> README.md
echo ""                                                         >> README.md
echo "Official documentation [here](http://lourot.com/gicowa)." >> README.md
echo ""                                                         >> README.md
html2text README.html                                           >> README.md

echo ""                                                              > README
echo ".. Generated by:"                                             >> README
echo "   $ ./scripts/gen_doc.sh"                                    >> README
echo ""                                                             >> README
echo ""                                                             >> README
echo "Official documentation \`here <http://lourot.com/gicowa>\`_." >> README
echo ""                                                             >> README
# apt-get install pandoc # 1.12.2.1
pandoc --from=html --to=rst < README.html                           >> README
