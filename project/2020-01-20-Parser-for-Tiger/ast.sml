structure Ast = struct

datatype  Exp = Nil
						  | Const of int
						  | Str of string
						  | Comment of string
						  | Lval of Lvalue
						  | Negation of Exp
						  | Exps of Exp list
						  | Array of string * Exp * Exp
						  | Record of string * ((string * Exp) list)
						  | FunCall of string * (Exp list)
						  | MethCall of Lvalue * string * (Exp list)
						  | Op of Exp * BinOp * Exp
						  | Assign of Lvalue * Exp
						  | IfThenElse of Exp * Exp * Exp
						  | IfThen of Exp * Exp
						  | While of Exp * Exp
						  | For of string * Exp * Exp * Exp
						  | Let of (Dec list) * (Exp list)
						  | Break

						 
		and Lvalue = Id of string
							 | Field of Lvalue * string
							 | Subscript of Lvalue * Exp
							 
		
		and Dec = TyDec of TypeDec
						| VDec of VarDec
						| FDec of FunDec
						
		and TypeDec = TypeAssign of string * string
								| ArrayType of string * string
								| RecordType of string * ((string * string) list)
		
		and VarDec = Var of string * Exp
							 | VarType of string * string * Exp
							 
		and FunDec = Fun of string * ((string * string) list) * Exp
							 | FunType of string * ((string * string) list) * string * Exp
						 
							
		and BinOp = Plus
							| Minus
							| Mul
							| Div
							| Equal
							| NotEq
							| Greater
							| Lesser
							| GE
							| LE
							| And
							| Or
							
		type Program = Exp list
												


(* Some helper functions *)
fun plus    a b = Op (a, Plus, b)
fun minus   a b = Op (a, Minus, b)
fun mul     a b = Op (a, Mul, b)
fun divi    a b = Op (a, Div, b)
fun equal   a b = Op (a, Equal, b)
fun notEq   a b = Op (a, NotEq, b)
fun greater a b = Op (a, Greater, b)
fun lesser  a b = Op (a, Lesser, b)
fun ge      a b = Op (a, GE, b)
fun le      a b = Op (a, LE, b)
fun andOp   a b = Op (a, And, b)
fun orOp    a b = Op (a, Or, b)
	
end 
