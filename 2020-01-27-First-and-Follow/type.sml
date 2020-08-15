type Symbol = Atom.atom
type Token = Atom.atom

type Symbols = AtomSet.set (* set of symbols  *)
type Tokens = AtomSet.set (* set of tokens  *)

type RHS = Atom.atom list (* The RHS gamma of a rule A -> gamma *)

structure RHS_KEY : ORD_KEY = struct
  type ord_key = RHS
  val compare = List.collate Atom.lexCompare
end

structure RHSSet = RedBlackSetFn(RHS_KEY)

type Productions = RHSSet.set

type Rules = Productions AtomMap.map

type Grammar = {symbols : Symbols, tokens : Tokens, rules : Rules}

