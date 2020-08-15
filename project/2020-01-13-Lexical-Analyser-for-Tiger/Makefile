#Makefile to build all standalone programs

%.lex.sml: %.lex
	mllex $<

.PHONY: all clean

all: tigh


tigh: term.sml tigh.sml tokens.sml tiger.lex.sml
	mlton -output tigh tiger.mlb
	
clean: 
	rm -f *.lex.sml tigh
