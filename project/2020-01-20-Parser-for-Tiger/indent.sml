structure Indent = struct

fun prettyPrintE (Ast.Nil) = ""
	| prettyPrintE (Ast.Const x) = Int.toString x
	| prettyPrintE (Ast.Str x) = x
	| prettyPrintE (Ast.Negation e) = "- " ^ prettyPrintE e
	| prettyPrintE (Ast.Assign (l1, e1)) = printLVal l1 ^ " := " ^ prettyPrintE e1 
 	| prettyPrintE (Ast.Op (e1, Ast.Plus, e2)) = (prettyPrintE e1 ^ " + " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.Minus, e2)) = (prettyPrintE e1 ^ " - " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.Mul, e2)) = (prettyPrintE e1 ^ " * " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.Div, e2)) = (prettyPrintE e1 ^ " / " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.Equal, e2)) = (prettyPrintE e1 ^ " = " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.NotEq, e2)) = (prettyPrintE e1 ^ " <> " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.Greater, e2)) = (prettyPrintE e1 ^ " > " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.Lesser, e2)) = (prettyPrintE e1 ^ " < " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.GE, e2)) = (prettyPrintE e1 ^ " >= " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.LE, e2)) = (prettyPrintE e1 ^ " <= " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.And, e2)) = (prettyPrintE e1 ^ " & " ^ prettyPrintE e2)
	| prettyPrintE (Ast.Op (e1, Ast.Or, e2)) = (prettyPrintE e1 ^ " | " ^ prettyPrintE e2)
	| prettyPrintE (Ast.IfThenElse (e1, e2, e3)) = "if " ^ prettyPrintE e1 ^ "\n then " ^ prettyPrintE e2 ^ "\nelse " ^ prettyPrintE e3
	| prettyPrintE (Ast.IfThen (e1, e2)) = "if" ^ prettyPrintE e1 ^ "\n then" ^ prettyPrintE e2
	| prettyPrintE (Ast.While (e1, e2)) = "while "^ prettyPrintE e1 ^ "\n do " ^ prettyPrintE e2
	| prettyPrintE (Ast.For (x, e1, e2, e3)) = "for " ^ x ^ " := " ^ prettyPrintE e1 ^ " to " ^ prettyPrintE e2 ^ " do\n   " ^ prettyPrintE e3
(*	| prettyPrintE (Ast.Let (dls, els)) = "let " ^  *)
	| prettyPrintE (Ast.Lval l1) = printLVal l1
	| prettyPrintE (Ast.Array (x, e1, e2)) = x ^ " [ " ^ prettyPrintE e1 ^ " ] " ^ " of " ^ prettyPrintE e2
(*	| prettyPrintE (Ast.Record (x, sel)) = x ^  *)
	
and printLVal (Ast.Id x) = x
	| printLVal (Ast.Field (l1, x)) = printLVal l1 ^ " . " ^ x	
  | printLVal (Ast.Subscript (l1, e1)) = printLVal l1 ^ " [ " ^ prettyPrintE e1 ^ " ] "
  
(*
and printStrExpList [] = ""
	| printStrExpList ((s,e)::xs) = " { " ^ s ^ " = " ^ prettyPrintE e  ^ " } "
*)
(*	
fun printDec

fun printTypeDec

fun printVarDec

fun printFunDec
*)	
	
fun listPrint (x::xs) = ((prettyPrintE x) ^ "\n" ^ (listPrint xs))
	| listPrint _      = ""

end

