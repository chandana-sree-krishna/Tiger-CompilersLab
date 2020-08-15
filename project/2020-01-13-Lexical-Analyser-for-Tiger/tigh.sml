structure TIGER = struct

val interactive = TigerLex.makeLexer (fn _ => TextIO.inputN (TextIO.stdIn,1))

fun lexfile file = let val strm = TextIO.openIn file
		in TigerLex.makeLexer (fn n => TextIO.inputN(strm,n))
		end
		
fun runWithLexer lexer = let fun loop _ = case lexer () of
												 EOF => ()
												 | t => loop (Colour.highlight t)
												 in loop ()
												 end	
												 
val _ =  ( case CommandLine.arguments() of
	       [] => runWithLexer interactive
	    |  xs => (List.map (runWithLexer o lexfile) xs; ())
	 )
end									
