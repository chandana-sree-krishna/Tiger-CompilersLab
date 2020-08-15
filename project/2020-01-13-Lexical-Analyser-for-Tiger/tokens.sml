datatype Token = Key of keywords | Orb of obj_rel_keywords | Sym of symbols | Str of string | INT of int | EOF

	and keywords = ARRAY
							 | IF
							 | THEN
							 | ELSE
							 | WHILE
							 | FOR
							 | TO
							 | DO
							 | LET
							 | IN
							 | END
							 | OF
							 | BREAK
							 | NIL
							 | FUNCTION
							 | VAR
							 | TYPE
							 | IMPORT
							 | PRIMITIVE
							 	
	and obj_rel_keywords = CLASS
						| EXTENDS
						| METHOD
						| NEW

	and symbols = COMMA
				| COLON
				| SEMICOLON
				| LP
				| RP
				| LSB
				| RSB
				| LFB
				| RFB
				| FULLSTOP
				| PLUS
				| MINUS
				| MUL
				| DIV
				| EQUAL
									 

