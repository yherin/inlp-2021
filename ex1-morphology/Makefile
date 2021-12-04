# source/inspiration: F Tyers
# tutorial: https://ftyers.github.io/2017-%D0%9A%D0%9B_%D0%9C%D0%9A%D0%9B/hfst.html

all:
	hfst-lexc    finnish.lexc -o finnish.lexc.hfst
	hfst-twolc   finnish.twol -o finnish.twol.hfst
	hfst-compose-intersect -1 finnish.lexc.hfst -2 finnish.twol.hfst -o finnish-generator.hfst
# flip: create analyzer from generator
	hfst-invert -i finnish-generator.hfst -o finnish-analyzer.hfst
# final step: OPTIMIZE for lookup
	hfst-fst2fst -w -i finnish-analyzer.hfst -o finnish-analyzer.hfstol


# for debugging / troubleshooting
check: 
	hfst-fst2strings finnish-analyzer.hfst

graph-FST:
	cat finnish.lexc | python3 ../scripts/lexc2dot.py | dot -Tpng -ofinnish.lexc.png

graph-characters:
	hfst-fst2txt finnish-analyzer.hfst | python3  ../scripts/att2dot.py | dot -Tpng -ofinnish-analyzer.png
