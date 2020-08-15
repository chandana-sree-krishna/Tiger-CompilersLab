#Makefile to build all standalone programs

COMMON=ast.sml

%.lex.sml: %.lex
	mllex $<

%.grm.sml: %.grm
	mlyacc  $<

.PHONY: all clean

all: tiger


tiger: parse.sml indent.sml tiger.mlb expr.grm.sml expr.lex.sml ${COMMON}
	mlton tiger.mlb
	
clean: 
	rm -f *.lex.sml tiger
	rm -f *.grm.sml *.grm.desc *.grm.sig tiger

