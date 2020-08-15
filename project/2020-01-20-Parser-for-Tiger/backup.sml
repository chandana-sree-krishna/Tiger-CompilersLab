structure Ast = struct

datatype exp = EOF
						 | Const of int
						 | Str of string
						 | Op of exp * Binop * exp
						 | Ctrl of Control
							
		and BinOp = Plus
							| Minus
							| Mul
							| Div
							| Equal
							| NotEqual
							| Greater
							| Lesser
							| GE
							| LE
							| AND
							| OR
							
		and Control = IF of exp * exp * exp 
							
	
	
(* Conversion to strings *)

fun binOpToString Plus  = "+"
  | binOpToString Minus = "-"
  | binOpToString Mul   = "*"
  | binOpToString Div   = "/"

(* Some helper functions *)
fun plus  a b = Op (a, Plus, b)
fun minus a b = Op (a, Minus, b)
fun mul   a b = Op (a, Mul, b)
fun div   a b = Op (a, Div, b)
fun equal a b = Op (a, Equal, b)
fun notEqual a b = Op (a, NotEqual, b)
fun greater a b = Op (a, Greater, b)
fun lesser a b = Op (a, Lesser, b)
fun ge a b = Op (a, GE, b)
fun le a b = Op (a, LE, b)
fun and a b = Op (a, AND, b)
fun or a b = Op (a, OR, b)
	
end 
