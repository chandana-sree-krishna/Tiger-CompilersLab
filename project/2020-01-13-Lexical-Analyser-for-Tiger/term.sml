structure Colour = struct

	val (green, yellow, normal, pink) = ("\027[1;32m", "\027[1;33m", "\027[1;0m", "\027[1;35m");
	
	fun highlight (Key IF) = print(yellow ^ "if" ^ normal)
		| highlight (Key ARRAY) = print(yellow ^ "array" ^ normal)
		| highlight (Key THEN) = print(yellow ^ "then" ^ normal)
		| highlight (Key ELSE) = print(yellow ^ "else" ^ normal)
		| highlight (Key WHILE) = print(yellow ^ "while" ^ normal)
		| highlight (Key FOR) = print(yellow ^ "for" ^ normal)
		| highlight (Key TO) = print(yellow ^ "to" ^ normal)
		| highlight (Key DO) = print(yellow ^ "do" ^ normal)
		| highlight (Key LET) = print(yellow ^ "let" ^ normal)
		| highlight (Key IN) = print(yellow ^ "in" ^ normal)
		| highlight (Key END) = print(yellow ^ "end" ^ normal)
		| highlight (Key OF) = print(yellow ^ "of" ^ normal)
		| highlight (Key BREAK) = print(yellow ^ "break" ^ normal)
		| highlight (Key NIL) = print(yellow ^ "nil" ^ normal)
		| highlight (Key FUNCTION) = print(yellow ^ "function" ^ normal)
		| highlight (Key VAR) = print(yellow ^ "var" ^ normal)
		| highlight (Key TYPE) = print(yellow ^ "type" ^ normal)
		| highlight (Key IMPORT) = print(yellow ^ "import" ^ normal)
		| highlight (Key PRIMITIVE) = print(yellow ^ "primitive" ^ normal)
		
		| highlight (Orb CLASS) = print(pink ^ "class" ^ normal)
		| highlight (Orb EXTENDS) = print(pink ^ "extends" ^ normal)
		| highlight (Orb METHOD) = print(pink ^ "method" ^ normal)
		| highlight (Orb NEW) = print(pink ^ "new" ^ normal)
		
		| highlight (Sym COMMA) = print(green ^ "," ^ normal)
		| highlight (Sym COLON) = print(green ^ ":" ^ normal)
		| highlight (Sym SEMICOLON) = print(green ^ ";" ^ normal)
		| highlight (Sym LP) = print(green ^ "(" ^ normal)
		| highlight (Sym RP) = print(green ^ ")" ^ normal)
		| highlight (Sym LSB) = print(green ^ "[" ^ normal)
		| highlight (Sym RSB) = print(green ^ "]" ^ normal)
		| highlight (Sym LFB) = print(green ^ "{" ^ normal)
		| highlight (Sym RFB) = print(green ^ "}" ^ normal)
		| highlight (Sym FULLSTOP) = print(green ^ "." ^ normal)
		| highlight (Sym PLUS) = print(green ^ "+" ^ normal)
		| highlight (Sym MINUS) = print(green ^ "-" ^ normal)
		| highlight (Sym MUL) = print(green ^ "*" ^ normal)
		| highlight (Sym DIV) = print(green ^ "/" ^ normal)
		| highlight (Sym EQUAL) = print(green ^ "=" ^ normal)
		
		| highlight (Str t) = print(t)
		| highlight (INT 0) = print(pink ^ "0" ^ normal)
		| highlight (INT 1) = print(pink ^ "1" ^ normal)
		| highlight (INT 2) = print(pink ^ "2" ^ normal)
		| highlight (INT 3) = print(pink ^ "3" ^ normal)
		| highlight (INT 4) = print(pink ^ "4" ^ normal)
		| highlight (INT 5) = print(pink ^ "5" ^ normal)
		| highlight (INT 6) = print(pink ^ "6" ^ normal)
		| highlight (INT 7) = print(pink ^ "7" ^ normal)
		| highlight (INT 8) = print(pink ^ "8" ^ normal)
		| highlight (INT 9) = print(pink ^ "9" ^ normal)


end
