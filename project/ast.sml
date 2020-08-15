structure Ast = struct

datatype exp = Const of int
							| Op of exp * Binop * exp
							
		and BinOp = Plus
							| Minus
							| Mul
							| Div
							| Equal
							| NotEqual
							| Greater
							| LesserThan
							| GreaterOrEqual
							
		
							
fun binOpDenote Plus  x y = x + y
	| binOpDenote Minus x y = x - y
	| binOpDenote Mul   x y = x * y
	| binOpDenote Div   x y = x / y;
	
	
fun exprDenote (Const x)      = x
	| exprDenote(Op (x,oper,y)) = binOpDenote oper (exprDenote x) (exprDenote y);
	
	
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
	
end 
