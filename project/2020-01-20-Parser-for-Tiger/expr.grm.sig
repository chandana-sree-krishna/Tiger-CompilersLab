signature Expr_TOKENS =
sig
type ('a,'b) token
type svalue
val UNARY:  'a * 'a -> (svalue,'a) token
val VAR:  'a * 'a -> (svalue,'a) token
val TYPE:  'a * 'a -> (svalue,'a) token
val FUNCTION:  'a * 'a -> (svalue,'a) token
val ARRAY:  'a * 'a -> (svalue,'a) token
val EOF:  'a * 'a -> (svalue,'a) token
val OF:  'a * 'a -> (svalue,'a) token
val END:  'a * 'a -> (svalue,'a) token
val IN:  'a * 'a -> (svalue,'a) token
val LET:  'a * 'a -> (svalue,'a) token
val TO:  'a * 'a -> (svalue,'a) token
val FOR:  'a * 'a -> (svalue,'a) token
val DO:  'a * 'a -> (svalue,'a) token
val WHILE:  'a * 'a -> (svalue,'a) token
val ELSE:  'a * 'a -> (svalue,'a) token
val THEN:  'a * 'a -> (svalue,'a) token
val IF:  'a * 'a -> (svalue,'a) token
val ASSIGN:  'a * 'a -> (svalue,'a) token
val OR:  'a * 'a -> (svalue,'a) token
val AND:  'a * 'a -> (svalue,'a) token
val GE:  'a * 'a -> (svalue,'a) token
val LE:  'a * 'a -> (svalue,'a) token
val LT:  'a * 'a -> (svalue,'a) token
val GT:  'a * 'a -> (svalue,'a) token
val NEQ:  'a * 'a -> (svalue,'a) token
val EQ:  'a * 'a -> (svalue,'a) token
val DIV:  'a * 'a -> (svalue,'a) token
val MUL:  'a * 'a -> (svalue,'a) token
val MINUS:  'a * 'a -> (svalue,'a) token
val PLUS:  'a * 'a -> (svalue,'a) token
val RFB:  'a * 'a -> (svalue,'a) token
val LFB:  'a * 'a -> (svalue,'a) token
val RSB:  'a * 'a -> (svalue,'a) token
val LSB:  'a * 'a -> (svalue,'a) token
val RP:  'a * 'a -> (svalue,'a) token
val LP:  'a * 'a -> (svalue,'a) token
val DOT:  'a * 'a -> (svalue,'a) token
val SEMICOLON:  'a * 'a -> (svalue,'a) token
val COLON:  'a * 'a -> (svalue,'a) token
val COMMA:  'a * 'a -> (svalue,'a) token
val ID: (string) *  'a * 'a -> (svalue,'a) token
val STRING: (string) *  'a * 'a -> (svalue,'a) token
val COMMENT: (string) *  'a * 'a -> (svalue,'a) token
val CONST: (int) *  'a * 'a -> (svalue,'a) token
val BREAK:  'a * 'a -> (svalue,'a) token
val NIL:  'a * 'a -> (svalue,'a) token
end
signature Expr_LRVALS=
sig
structure Tokens : Expr_TOKENS
structure ParserData:PARSER_DATA
sharing type ParserData.Token.token = Tokens.token
sharing type ParserData.svalue = Tokens.svalue
end
