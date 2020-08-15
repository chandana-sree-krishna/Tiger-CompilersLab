structure EC =
struct

(*

The next three lines show how to interconnect the parser (generated my
ml-yacc) with the lexer (generated by ml-lex).

1. Use the `ExprLrValsFun` functor to create an `ExprLrVals`
   structure.  The `ExprLrVals` thus created has manythings required
   by the parser like the parsing table. It also has the Tokens data
   type of the language and the lexer needs to know this.

2. The substructure `ExprLrVals.Tokens` is then passed to the lexer
   generator functor `ExprLexFun` to get the lexer structure `ExprLex`

3. Finally, the lexer (available in `ExprLex`) is combined with the
   parsing data to build the parser. Note that the parser needs to
   know the lexing function as it is used by the parser to get tokens.

NOTE: The names of the structures are all controllable. For example
our functors are called ExprLrValsFun and ExprLexFun due to the line
starting with `%name` in expr.grm and `%header` line in the expr.lex
respectively.

*)

structure ExprLrVals = ExprLrValsFun(structure Token = LrParser.Token)
structure ExprLex    = ExprLexFun(structure Tokens = ExprLrVals.Tokens)
structure ExprParser = Join( structure ParserData = ExprLrVals.ParserData
			     structure Lex        = ExprLex
			     structure LrParser   = LrParser
			   )

(* 

At this point every thing regarding lexing and parsing is contained in
the ExprParser structure. Let us create a lexer using this.

*)
(* Build Lexers *)
fun makeExprLexer strm = ExprParser.makeLexer (fn n => TextIO.inputN(strm,n))
val makeFileLexer      = makeExprLexer o TextIO.openIn


(* Parse command line and set a suitable lexer *)

val thisLexer = case CommandLine.arguments() of
		    []  => makeExprLexer TextIO.stdIn
		 |  [x] => makeFileLexer x
		 |  _   => (TextIO.output(TextIO.stdErr, "usage: ec file"); OS.Process.exit OS.Process.failure)



fun print_error (s,i:int,_) = TextIO.output(TextIO.stdErr,
					    "Error, line " ^ (Int.toString i) ^ ", " ^ s ^ "\n")

val (program,_) = ExprParser.parse (0,thisLexer,print_error,()) (* parsing *)
val executable = Indent.listPrint program 
val _ = TextIO.output(TextIO.stdOut, executable)


end

