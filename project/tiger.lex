(* This type captures the range (or return type) of the lexer. 
	 You should think of lexer as a function that takes a string and returns
   the next token which in this case happens to be Tokens.Token
 *)
type lexresult = Token

(* The token to return when the end of stream is reached.*)
fun eof () = EOF


fun charsToInt m (x :: xs) = charsToInt (10 * m + ord x - ord #"0") xs
	| charsToInt m []        = m
	
fun toSigned (#"-" :: xs) = ~ (charsToInt 0 xs)
  | toSigned (#"~" :: xs) = ~ (charsToInt 0 xs)
  | toSigned (#"+" :: xs) =   charsToInt 0 xs
  | toSigned xs           =   charsToInt 0 xs

(* val toInt  = toSigned o String.explode *)


fun atoi(a) =
    valOf (Int.fromString a)

%%

%structure TigerLex 
whitespace=[\ \r];
tab=[\t];
newline=[\n];
digit=[0-9];
alpha=[a-zA-Z];
id=[a-zA-Z][a-zA-Z0-9_]*;

%%
{whitespace}+		=> (print(" ");lex() (* White spaces are ignored *) );
"#".*\n				=> (lex() (* A line comment *) );
{newline}+			=> (print("\n");lex() (* Newline *));
{tab}+				=> (print("\t");lex() (* Tab *));
{digit}+ 				=> (INT(atoi yytext));
","							=> (Sym COMMA);
":"							=> (Sym COLON);
";"							=> (Sym SEMICOLON);
"("							=> (Sym LP);
")"							=> (Sym RP);
"["							=> (Sym LSB);
"]"							=> (Sym RSB);
"{"							=> (Sym LFB);
"}"							=> (Sym RFB);
"."							=> (Sym FULLSTOP);
"+"							=> (Sym PLUS);
"-"							=> (Sym MINUS);
"*"							=> (Sym MUL);
"/"							=> (Sym DIV);
"="							=> (Sym EQUAL);
"array"					=> (Key ARRAY);
"if"						=> (Key IF);
"then"					=> (Key THEN);
"else"					=> (Key ELSE);
"while"					=> (Key WHILE);
"for"						=> (Key FOR);
"to"						=> (Key TO);
"do"						=> (Key DO);
"let"						=> (Key LET);
"in"						=> (Key IN);
"end"						=> (Key END);
"of"						=> (Key OF);
"break"					=> (Key BREAK);
"nil"						=> (Key NIL);
"function"			=> (Key FUNCTION);
"VAR"						=> (Key VAR);
"type"					=> (Key TYPE);
"import"				=> (Key IMPORT);
"primitive"			=> (Key PRIMITIVE);
{alpha}+				=> (Str (yytext));
