structure Indent = struct


  (* prettyPrint : Ast.Progrm -> unit *)

  fun prettyPrintI (Ast.Id str) = print(str)

  fun prettyPrintTyi (Ast.TID id) = prettyPrintI id

  fun  prettyPrintTyf (Ast.TypeAnn []) = print("")
           | prettyPrintTyf (Ast.TypeAnn (x::xs)) = let
                                                    val (id, typeid) = x
                                                in
                                                    prettyPrintI id ; print(":") ; prettyPrintTyi typeid;
                                                    print(", ") ; prettyPrintTyf (Ast.TypeAnn xs)
                                                end

  fun prettyPrintE (Ast.Str str) = print(str)
           | prettyPrintE (Ast.NilExp) = print ""
           | prettyPrintE (Ast.Num n) = print(Int.toString n)
           | prettyPrintE (Ast.Ar (tyid, e1, e2)) = (prettyPrintTyi tyid ; print " ["; prettyPrintE e1; print "] of "; prettyPrintE e2)
           | prettyPrintE (Ast.Rec (tyid, iel)) = (prettyPrintTyi tyid; print " {"; map (fn (id, exp) => (prettyPrintI id; print "="; prettyPrintE exp) ) iel; print "} ")
           | prettyPrintE (Ast.Obj tyid) = (print "new "; prettyPrintTyi tyid)
           | prettyPrintE (Ast.Lvalctor lv) = let
                                                          fun prettyPrintL (Ast.Dot (lv, id)) = (prettyPrintL lv ; print(".") ;prettyPrintI id ; print "\n")
                                                            | prettyPrintL (Ast.LV (lv, exp)) = (prettyPrintL lv ; print(" [") ; prettyPrintE exp ; print"]\n")
                                                            | prettyPrintL (Ast.LID id) = prettyPrintI id
                                              in
                                                  prettyPrintL lv
                                              end
           | prettyPrintE (Ast.Fun (id, expl)) = let
                                                          fun helpExpList [] = print ""
                                                            | helpExpList (x::[]) = prettyPrintE x
                                                            | helpExpList (x::xs) = (prettyPrintE x ; print ", " ; helpExpList xs)
                                                       in
                                                          (prettyPrintI id; print "("; helpExpList expl; print ")")
                                                       end

           | prettyPrintE (Ast.Methd (lv, id, expl)) = let
                                                          fun helpExpList [] = print ""
                                                            | helpExpList (x::[]) = prettyPrintE x
                                                            | helpExpList (x::xs) = (prettyPrintE x ; print ", " ; helpExpList xs)

                                                          fun prettyPrintL (Ast.Dot (lv, id)) = (prettyPrintL lv ; print(".") ; prettyPrintI id)
                                                            | prettyPrintL (Ast.LV (lv, exp)) = (prettyPrintL lv ; print(" [") ; prettyPrintE exp ; print("]"))
                                                            | prettyPrintL (Ast.LID id) = prettyPrintI id

                                                       in
                                                          (prettyPrintL lv ; print "." ; prettyPrintI id ; print "(" ; helpExpList expl ; print ")")
                                                       end
           | prettyPrintE (Ast.Assign (lv, exp)) = let
                                                          fun prettyPrintL (Ast.Dot (lv, id)) = (prettyPrintL lv ; print(".") ; prettyPrintI id)
                                                            | prettyPrintL (Ast.LV (lv, exp)) = (prettyPrintL lv ; print(" [") ; prettyPrintE exp ; print("]"))
                                                            | prettyPrintL (Ast.LID id) = prettyPrintI id
                                                   in
                                                     (prettyPrintL lv ; print " := " ; prettyPrintE exp)
                                                   end
           | prettyPrintE (Ast.IfThen(e1, e2) ) = (print "if "; prettyPrintE e1 ; print "then\n\t" ; prettyPrintE e2 ; print "\n")
           | prettyPrintE (Ast.IfElse(e1, e2, e3) ) = (print "if "; prettyPrintE e1 ; print "then\n\t" ; prettyPrintE e2 ; print "else \n\t" ; prettyPrintE e3 ; print "\n")
           | prettyPrintE (Ast.While (e1, e2) ) = (print "while " ; prettyPrintE e1 ; print "do\n\t" ; prettyPrintE e2 ; print "\n")
           | prettyPrintE (Ast.For (idname, e1, e2, e3) ) = (print "for "; prettyPrintI idname ; print " := " ; prettyPrintE e1 ; print " to " ; prettyPrintE e2 ; print "do\n\t" ; prettyPrintE e3 ; print "\n")
           | prettyPrintE (Ast.Break) = (print "break\n")
           | prettyPrintE (Ast.Let (decl, expl)) = let

                                                  fun  prettyPrintV (Ast.VardecAnn (id, tyid, exp)) = (print "var "; prettyPrintI id; print ": "; prettyPrintTyi tyid; print ":= "; prettyPrintE exp; print "\n")
                                                         | prettyPrintV (Ast.Vardec (id, exp)) = ( print "var "; prettyPrintI id; print ":= "; prettyPrintE exp; print "\n")

                                                  fun prettyPrintC (Ast.MethodAnn (id, tyfs, tyid, exp)) = (print "method "; prettyPrintI id; print "("; prettyPrintTyf tyfs; print ") :"; prettyPrintTyi tyid; print "="; prettyPrintE exp)
                                                         | prettyPrintC (Ast.Method (id, tyfs, exp)) = (print "method "; prettyPrintI id; print "("; prettyPrintTyf tyfs; print ") :"; print "="; prettyPrintE exp)
                                                         | prettyPrintC (Ast.DeclVar vardec) = prettyPrintV vardec


                                                  fun  prettyPrintTy (Ast.Curly tyf) = (print "{"; prettyPrintTyf tyf; print"}")
                                                         | prettyPrintTy (Ast.Arr typeid) = (print("array of ") ; prettyPrintTyi typeid)
                                                         | prettyPrintTy (Ast.ClassTy (tyid, cl)) = (print "class extends "; prettyPrintTyi tyid; print "{\n"; map prettyPrintC cl; print "}")
                                                         | prettyPrintTy (Ast.Class cl) = (print "class "; print "{\n"; map prettyPrintC cl; print "}")
                                                         | prettyPrintTy (Ast.Typeidctor typeid) = prettyPrintTyi typeid

                                                    fun prettyPrintD Ast.NilDec = print "\n"
                                                      | prettyPrintD (Ast.Decl (id, ty)) = (print "type " ; prettyPrintI id ; print " = " ; prettyPrintTy ty; print "\n")
                                                      | prettyPrintD (Ast.ClassDeclExt (id, tyid, cl)) = (print "class " ; prettyPrintI id; print " extends " ; prettyPrintTyi tyid ; print "{" ; map prettyPrintC cl; print "}\n")
                                                      | prettyPrintD (Ast.ClassDecl (id, cl)) = (print "class " ; prettyPrintI id; print "{" ; map prettyPrintC cl; print "}\n")
                                                      | prettyPrintD (Ast.Var vardc) = (prettyPrintV vardc ; print "\n")
                                                      | prettyPrintD (Ast.FuncAnn (id, tyfs, tyid, exp)) = (print "function " ; prettyPrintI id ; print "(" ; prettyPrintTyf tyfs ; print ") : " ; prettyPrintTyi tyid ; print " = " ; prettyPrintE exp ; print "\n")
                                                      | prettyPrintD (Ast.Func (id, tyfs, exp)) = (print "function " ; prettyPrintI id ; print "(" ; prettyPrintTyf tyfs ; print ") " ; print " = " ; prettyPrintE exp)
                                                      | prettyPrintD (Ast.PrimAnn (id, tyfs, tyid)) = (print "primitive " ; prettyPrintI id ; print "(" ; prettyPrintTyf tyfs ; print ") : " ; prettyPrintTyi tyid)
                                                      | prettyPrintD (Ast.Prim (id, tyfs)) = (print "primitive ";prettyPrintI id; print "("; prettyPrintTyf tyfs; print ")\n")
                                                      | prettyPrintD (Ast.Import str) = print (concat ["import ", str, "\n"]);
                                                   in
                                                        (print "let\n" ; map
                                                        prettyPrintD decl ; print " in " ; map prettyPrintE expl ; print " end\n")
                                                   end
           | prettyPrintE (Ast.Op (e1, Ast.Ddiv, e2) ) = (prettyPrintE e1; print " / "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.Mult, e2) ) = (prettyPrintE e1; print " * "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.Plus, e2) ) = (prettyPrintE e1; print " + "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.Minus, e2) ) = (prettyPrintE e1; print " - "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.Eq, e2) ) = (prettyPrintE e1; print " = "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.Neq, e2) ) = (prettyPrintE e1; print " <> "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.Lt, e2) ) = (prettyPrintE e1; print " < "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.Gt, e2) ) = (prettyPrintE e1; print " > "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.Lte, e2) ) = (prettyPrintE e1; print " <= "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.Gte, e2) ) = (prettyPrintE e1; print " >= "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.And, e2) ) = (prettyPrintE e1; print " & "; prettyPrintE e2 ; print "\n")
			  | prettyPrintE (Ast.Op (e1, Ast.Or, e2) ) = (prettyPrintE e1; print " | "; prettyPrintE e2; print "\n")
           | prettyPrintE (Ast.Exps []) = print ""
           | prettyPrintE (Ast.Exps (exp::expl)) = (prettyPrintE exp ; prettyPrintE (Ast.Exps expl))

    (* Tyi - Typeid ; I - ID ; Ty - Ty ; Tyf - Tyfields *)
  fun  prettyPrint (Ast.ExprProg exp) = (prettyPrintE exp ; print "\n")
           | prettyPrint (Ast.DeclProg decl) = let
                                                  fun  prettyPrintV (Ast.VardecAnn (id, tyid, exp)) = (print "var "; prettyPrintI id; print ": "; prettyPrintTyi tyid; print ":= "; prettyPrintE exp; print "\n")
                                                         | prettyPrintV (Ast.Vardec (id, exp)) = ( print "var "; prettyPrintI id; print ":= "; prettyPrintE exp; print "\n")

                                                  fun prettyPrintC (Ast.MethodAnn (id, tyfs, tyid, exp)) = (print "method "; prettyPrintI id; print "("; prettyPrintTyf tyfs; print ") :"; prettyPrintTyi tyid; print "="; prettyPrintE exp)
                                                         | prettyPrintC (Ast.Method (id, tyfs, exp)) = (print "method "; prettyPrintI id; print "("; prettyPrintTyf tyfs; print ") :"; print "="; prettyPrintE exp)
                                                         | prettyPrintC (Ast.DeclVar vardec) = prettyPrintV vardec


                                                  fun  prettyPrintTy (Ast.Curly tyf) = (print "{"; prettyPrintTyf tyf; print"}")
                                                         | prettyPrintTy (Ast.Arr typeid) = (print("array of ") ; prettyPrintTyi typeid)
                                                         | prettyPrintTy (Ast.ClassTy (tyid, cl)) = (print "class extends "; prettyPrintTyi tyid; print "{\n"; map prettyPrintC cl; print "}")
                                                         | prettyPrintTy (Ast.Class cl) = (print "class "; print "{\n"; map prettyPrintC cl; print "}")
                                                         | prettyPrintTy (Ast.Typeidctor typeid) = prettyPrintTyi typeid

                                                    fun prettyPrintD Ast.NilDec = print ""
                                                      | prettyPrintD (Ast.Decl (id, ty)) = (print "type " ; prettyPrintI id ; print " = " ; prettyPrintTy ty)
                                                      | prettyPrintD (Ast.ClassDeclExt (id, tyid, cl)) = (print "class " ; prettyPrintI id; print " extends " ; prettyPrintTyi tyid ; print "{" ; map prettyPrintC cl; print "}")
                                                      | prettyPrintD (Ast.ClassDecl (id, cl)) = (print "class " ; prettyPrintI id; print "{" ; map prettyPrintC cl; print "}")
                                                      | prettyPrintD (Ast.Var vardc) = prettyPrintV vardc
                                                      | prettyPrintD (Ast.FuncAnn (id, tyfs, tyid, exp)) = (print "function " ; prettyPrintI id ; print "(" ; prettyPrintTyf tyfs ; print ") : " ; prettyPrintTyi tyid ; print " = " ; prettyPrintE exp)
                                                      | prettyPrintD (Ast.Func (id, tyfs, exp)) = (print "function " ; prettyPrintI id ; print "(" ; prettyPrintTyf tyfs ; print ") " ; print " = " ; prettyPrintE exp)
                                                      | prettyPrintD (Ast.PrimAnn (id, tyfs, tyid)) = (print "primitive " ; prettyPrintI id ; print "(" ; prettyPrintTyf tyfs ; print ") : " ; prettyPrintTyi tyid)
                                                      | prettyPrintD (Ast.Prim (id, tyfs)) = (print "primitive " ; prettyPrintI id ; print "(" ; prettyPrintTyf tyfs ; print ")")
                                                      | prettyPrintD (Ast.Import str) = print (concat ["import ", str]);
                                              in
                                                map prettyPrintD decl ; ()
                                              end

end

