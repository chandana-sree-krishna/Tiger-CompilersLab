signature TEMP = sig
	type temp
	type label
	val newlabel : unit -> label
	val newtemp : unit -> temp
	
end

structure Temp :> TEMP = struct 
    
    type temp = int
    type label = int
    
    val tempCnt = ref 0
    val labelCnt = ref 0

    fun newtemp () = (tempCnt := !tempCnt + 1; !tempCnt)
    fun newlabel () = (labelCnt := !labelCnt + 1;  !labelCnt)

end;


structure MIPS = struct

datatype regs = Zero
							| AT
							| V of int	(* v0, v1*)
							| A of int	(* 0 to 3 *)
							| T of int	(* 0 to 9 *)
							| S of int	(* 0 to 7 *)
							| K of int	(* 0 to 1 *)
							| GP
							| SP
							| FP
							| RA

datatype ('l, 't) inst = ADD of 't * 't * 't 
                 | ADDI of 't * 't * int
                 | ADDU of 't * 't * 't 
                 | ADDIU of 't * 't * int
                 | SUB of 't * 't * 't 
                 | SUBU of 't * 't * 't 
                 | MUL of 't * 't * 't 
                 | MULT of 't * 't 
                 | DIV of 't * 't 
                 | AND of 't * 't * 't 
                 | ANDI of 't * 't * int
                 | OR of 't * 't * 't 
                 | ORI of 't * 't * int
                 | SLL of 't * 't * int
                 | SRL of 't * 't * int
                 | LW of 't * int * 't 
                 | LI of 't * int
                 | LA of 't * 'l
                 | LUI of 't * int
                 | SW of 't * int * 't 
                 | MFHI of 't 
                 | MFLO of 't 
                 | MOVE of 't * 't 
                 | BEQ of 't * 't * 'l
                 | BNE of 't * 't * 'l
                 | BGT of 't * 't * 'l
                 | BGE of 't * 't * 'l
                 | BLT of 't * 't * 'l
                 | BLE of 't * 't * 'l
                 | SLT of 't * 't * 't 
                 | SLTI of 't * 't * int
                 | J of 'l
                 | JR of 't 
                 | JAL of 'l
                 | SYSCALL
                 
  fun printRegs Zero = String.concat ["zero"]
  	| printRegs AT = String.concat ["at"]
  	| printRegs (V n) = String.concat ["v", Int.toString n]
  	| printRegs (A n) = String.concat ["a", Int.toString n]
  	| printRegs (T n) = String.concat ["t", Int.toString n]
  	| printRegs (S n) = String.concat ["s", Int.toString n]
  	| printRegs (K n) = String.concat ["k", Int.toString n]
  	| printRegs GP = String.concat ["gp"]
  	| printRegs FP = String.concat ["fp"]
  	| printRegs SP = String.concat ["sp"]
  	| printRegs RA = String.concat ["ra"]
  	
  	
  fun pretty (ADD (x, y, z)) = String.concat ["add $" , printRegs x , " $" , printRegs y, " $" , printRegs z]
  	| pretty (ADDI (x, y, z)) = String.concat ["addi $" , printRegs x , " $" , printRegs y , " $" , Int.toString z ]
    | pretty (ADDU (x, y, z)) = String.concat ["addu $" , printRegs x , " $" , printRegs y , " $" , printRegs z ]
    | pretty (ADDIU (x, y, z)) = String.concat ["addiu $" , printRegs x , " $" , printRegs y , " $" , Int.toString z ]
    | pretty (SUB (x, y, z)) = String.concat ["sub $" , printRegs x , " $" , printRegs y , " $" , printRegs z ]
    | pretty (SUBU (x, y, z)) = String.concat ["subu $" , printRegs x , " $" , printRegs y , " $" , printRegs z ]
    | pretty (MUL (x, y, z)) = String.concat ["mul $" , printRegs x , " $" , printRegs y , " $" , printRegs z ]
    | pretty (MULT (x, y)) = String.concat ["mult $" , printRegs x , " $" , printRegs y ]
    | pretty (DIV (x, y)) = String.concat ["div $" , printRegs x , " $" , printRegs y ]
    | pretty (AND (x, y, z)) = String.concat ["and $" , printRegs x , " $" , printRegs y , " $" , printRegs z ]
    | pretty (ANDI (x, y, z)) = String.concat ["andi $" , printRegs x , " $" , printRegs y , " $" , Int.toString z ]
    | pretty (OR (x, y, z)) = String.concat ["or $" , printRegs x , " $" , printRegs y , " $" , printRegs z ]
    | pretty (ORI (x, y, z)) = String.concat ["ori $" , printRegs x , " $" , printRegs y , " $" , Int.toString z ]
    | pretty (SLL (x, y, z)) = String.concat ["sll $" , printRegs x , " $" , printRegs y , " $" , Int.toString z ]
    | pretty (SRL (x, y, z)) = String.concat ["srl $" , printRegs x , " $" , printRegs y , " $" , Int.toString z ]
    | pretty (LW (x, y, z)) = String.concat ["lw $" , printRegs x , " $" , Int.toString y , " $" , printRegs z ]
    | pretty (LI (x, y)) = String.concat ["li $" , printRegs x , " $" , Int.toString y ]
    | pretty (LA (x, y)) = String.concat ["la $" , printRegs x , " " ,  y ]
    | pretty (LUI (x, y)) = String.concat ["lui $" , printRegs x , " $" , Int.toString y ]
    | pretty (SW (x, y, z)) = String.concat ["sw $" , printRegs x , " $" , Int.toString y , " $" , printRegs z ]
    | pretty (MFHI x) = String.concat ["mhfi $" , printRegs x ]
    | pretty (MFLO x) = String.concat ["mflo $" , printRegs x ]
    | pretty (MOVE (x, y)) = String.concat ["move $" , printRegs x , " $" , printRegs y ]
    | pretty (BEQ (x, y, z)) = String.concat ["beq $" , printRegs x , " $" , printRegs y , " " , z ]
    | pretty (BNE (x, y, z)) = String.concat ["bnq $" , printRegs x , " $" , printRegs y , " " , z ]
    | pretty (BGT (x, y, z)) = String.concat ["bgt $" , printRegs x , " $" , printRegs y , " " , z ]
    | pretty (BGE (x, y, z)) = String.concat ["bge $" , printRegs x , " $" , printRegs y , " " , z ]
    | pretty (BLT (x, y, z)) = String.concat ["blt $" , printRegs x , " $" , printRegs y , " " , z ]
    | pretty (BLE (x, y, z)) = String.concat ["ble $" , printRegs x , " $" , printRegs y , " " , z ]
    | pretty (SLT (x, y, z)) = String.concat ["slt $" , printRegs x , " $" , printRegs y , " $" , printRegs z ]
    | pretty (SLTI (x, y, z)) = String.concat ["slti $" , printRegs x , " $" , printRegs y , " $" , Int.toString z ]
    | pretty (J x) = String.concat ["j " , x ]
    | pretty (JR x) = String.concat ["jr $" , printRegs x ]
    | pretty (JAL x) = String.concat ["jal " , x ]
    | pretty _ = String.concat ["syscall"] 
  	
end
