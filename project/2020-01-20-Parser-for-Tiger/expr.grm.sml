functor ExprLrValsFun(structure Token : TOKEN)
 : sig structure ParserData : PARSER_DATA
       structure Tokens : Expr_TOKENS
   end
 = 
struct
structure ParserData=
struct
structure Header = 
struct
(*#line 1.2 "expr.grm"*)
(*#line 12.1 "expr.grm.sml"*)
end
structure LrTable = Token.LrTable
structure Token = Token
local open LrTable in 
val table=let val actionRows =
"\
\\001\000\001\000\152\000\002\000\152\000\003\000\152\000\004\000\152\000\
\\005\000\152\000\006\000\152\000\007\000\152\000\009\000\152\000\
\\011\000\152\000\012\000\152\000\014\000\152\000\016\000\152\000\
\\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\027\000\152\000\028\000\152\000\030\000\152\000\031\000\152\000\
\\032\000\152\000\033\000\152\000\034\000\152\000\035\000\152\000\
\\036\000\152\000\037\000\152\000\038\000\152\000\039\000\152\000\
\\041\000\152\000\043\000\152\000\044\000\152\000\045\000\152\000\
\\046\000\152\000\000\000\
\\001\000\001\000\153\000\002\000\153\000\003\000\153\000\004\000\153\000\
\\005\000\153\000\006\000\153\000\007\000\153\000\009\000\153\000\
\\011\000\153\000\012\000\153\000\014\000\153\000\016\000\153\000\
\\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\027\000\153\000\028\000\153\000\030\000\153\000\031\000\153\000\
\\032\000\153\000\033\000\153\000\034\000\153\000\035\000\153\000\
\\036\000\153\000\037\000\153\000\038\000\153\000\039\000\153\000\
\\041\000\153\000\043\000\153\000\044\000\153\000\045\000\153\000\
\\046\000\153\000\000\000\
\\001\000\001\000\154\000\002\000\154\000\003\000\154\000\004\000\154\000\
\\005\000\154\000\006\000\154\000\007\000\154\000\009\000\154\000\
\\011\000\154\000\012\000\154\000\014\000\154\000\016\000\154\000\
\\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\027\000\154\000\028\000\154\000\030\000\154\000\031\000\154\000\
\\032\000\154\000\033\000\154\000\034\000\154\000\035\000\154\000\
\\036\000\154\000\037\000\154\000\038\000\154\000\039\000\154\000\
\\041\000\154\000\043\000\154\000\044\000\154\000\045\000\154\000\
\\046\000\154\000\000\000\
\\001\000\001\000\155\000\002\000\155\000\003\000\155\000\004\000\155\000\
\\005\000\155\000\006\000\155\000\007\000\155\000\009\000\155\000\
\\011\000\155\000\012\000\155\000\014\000\155\000\016\000\155\000\
\\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\027\000\155\000\028\000\155\000\030\000\155\000\031\000\155\000\
\\032\000\155\000\033\000\155\000\034\000\155\000\035\000\155\000\
\\036\000\155\000\037\000\155\000\038\000\155\000\039\000\155\000\
\\041\000\155\000\043\000\155\000\044\000\155\000\045\000\155\000\
\\046\000\155\000\000\000\
\\001\000\001\000\156\000\002\000\156\000\003\000\156\000\004\000\156\000\
\\005\000\156\000\006\000\156\000\007\000\156\000\009\000\156\000\
\\011\000\156\000\012\000\156\000\014\000\156\000\016\000\156\000\
\\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\027\000\156\000\028\000\156\000\030\000\156\000\031\000\156\000\
\\032\000\156\000\033\000\156\000\034\000\156\000\035\000\156\000\
\\036\000\156\000\037\000\156\000\038\000\156\000\039\000\156\000\
\\041\000\156\000\043\000\156\000\044\000\156\000\045\000\156\000\
\\046\000\156\000\000\000\
\\001\000\001\000\157\000\002\000\157\000\003\000\157\000\004\000\157\000\
\\005\000\157\000\006\000\157\000\007\000\157\000\009\000\157\000\
\\011\000\157\000\012\000\157\000\014\000\157\000\016\000\157\000\
\\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\027\000\157\000\028\000\157\000\030\000\157\000\031\000\157\000\
\\032\000\157\000\033\000\157\000\034\000\157\000\035\000\157\000\
\\036\000\157\000\037\000\157\000\038\000\157\000\039\000\157\000\
\\041\000\157\000\043\000\157\000\044\000\157\000\045\000\157\000\
\\046\000\157\000\000\000\
\\001\000\001\000\016\000\002\000\015\000\003\000\014\000\004\000\013\000\
\\005\000\012\000\006\000\011\000\011\000\010\000\030\000\009\000\
\\033\000\008\000\035\000\007\000\037\000\006\000\046\000\005\000\000\000\
\\001\000\006\000\042\000\000\000\
\\001\000\006\000\052\000\000\000\
\\001\000\006\000\067\000\000\000\
\\001\000\006\000\068\000\000\000\
\\001\000\006\000\069\000\000\000\
\\001\000\006\000\076\000\000\000\
\\001\000\006\000\097\000\000\000\
\\001\000\006\000\100\000\015\000\099\000\042\000\098\000\000\000\
\\001\000\006\000\103\000\000\000\
\\001\000\006\000\103\000\012\000\102\000\000\000\
\\001\000\006\000\121\000\000\000\
\\001\000\006\000\126\000\000\000\
\\001\000\006\000\127\000\000\000\
\\001\000\006\000\131\000\000\000\
\\001\000\008\000\083\000\029\000\082\000\000\000\
\\001\000\008\000\114\000\021\000\113\000\000\000\
\\001\000\008\000\115\000\000\000\
\\001\000\008\000\124\000\021\000\123\000\000\000\
\\001\000\011\000\085\000\000\000\
\\001\000\012\000\073\000\000\000\
\\001\000\012\000\093\000\000\000\
\\001\000\012\000\112\000\000\000\
\\001\000\014\000\080\000\017\000\032\000\018\000\031\000\019\000\030\000\
\\020\000\029\000\021\000\028\000\022\000\027\000\023\000\026\000\
\\024\000\025\000\025\000\024\000\026\000\023\000\027\000\022\000\
\\028\000\021\000\000\000\
\\001\000\014\000\092\000\017\000\032\000\018\000\031\000\019\000\030\000\
\\020\000\029\000\021\000\028\000\022\000\027\000\023\000\026\000\
\\024\000\025\000\025\000\024\000\026\000\023\000\027\000\022\000\
\\028\000\021\000\000\000\
\\001\000\016\000\090\000\000\000\
\\001\000\016\000\122\000\000\000\
\\001\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\
\\031\000\072\000\000\000\
\\001\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\
\\034\000\071\000\000\000\
\\001\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\
\\034\000\128\000\000\000\
\\001\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\
\\036\000\104\000\000\000\
\\001\000\021\000\084\000\000\000\
\\001\000\021\000\091\000\000\000\
\\001\000\021\000\132\000\000\000\
\\001\000\021\000\135\000\000\000\
\\001\000\029\000\070\000\000\000\
\\001\000\029\000\109\000\000\000\
\\001\000\038\000\065\000\000\000\
\\001\000\039\000\095\000\000\000\
\\001\000\040\000\107\000\000\000\
\\001\000\040\000\110\000\000\000\
\\001\000\041\000\000\000\000\000\
\\001\000\043\000\041\000\044\000\040\000\045\000\039\000\000\000\
\\140\000\001\000\016\000\002\000\015\000\003\000\014\000\004\000\013\000\
\\005\000\012\000\006\000\011\000\011\000\010\000\017\000\032\000\
\\018\000\031\000\019\000\030\000\020\000\029\000\021\000\028\000\
\\022\000\027\000\023\000\026\000\024\000\025\000\025\000\024\000\
\\026\000\023\000\027\000\022\000\028\000\021\000\030\000\009\000\
\\033\000\008\000\035\000\007\000\037\000\006\000\046\000\005\000\000\000\
\\141\000\000\000\
\\142\000\000\000\
\\143\000\000\000\
\\144\000\000\000\
\\145\000\010\000\019\000\013\000\018\000\029\000\017\000\000\000\
\\146\000\000\000\
\\147\000\000\000\
\\148\000\019\000\030\000\020\000\029\000\000\000\
\\149\000\019\000\030\000\020\000\029\000\000\000\
\\150\000\000\000\
\\151\000\000\000\
\\158\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\000\000\
\\159\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\000\000\
\\160\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\000\000\
\\161\000\000\000\
\\162\000\000\000\
\\163\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\000\000\
\\164\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\
\\032\000\105\000\000\000\
\\165\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\000\000\
\\166\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\000\000\
\\167\000\000\000\
\\168\000\000\000\
\\169\000\000\000\
\\170\000\000\000\
\\171\000\001\000\016\000\002\000\015\000\003\000\014\000\004\000\013\000\
\\005\000\012\000\006\000\011\000\011\000\010\000\030\000\009\000\
\\033\000\008\000\035\000\007\000\037\000\006\000\046\000\005\000\000\000\
\\172\000\009\000\074\000\017\000\032\000\018\000\031\000\019\000\030\000\
\\020\000\029\000\021\000\028\000\022\000\027\000\023\000\026\000\
\\024\000\025\000\025\000\024\000\026\000\023\000\027\000\022\000\
\\028\000\021\000\000\000\
\\173\000\000\000\
\\174\000\007\000\094\000\017\000\032\000\018\000\031\000\019\000\030\000\
\\020\000\029\000\021\000\028\000\022\000\027\000\023\000\026\000\
\\024\000\025\000\025\000\024\000\026\000\023\000\027\000\022\000\
\\028\000\021\000\000\000\
\\175\000\000\000\
\\176\000\011\000\049\000\013\000\048\000\015\000\047\000\000\000\
\\177\000\000\000\
\\178\000\000\000\
\\179\000\007\000\118\000\017\000\032\000\018\000\031\000\019\000\030\000\
\\020\000\029\000\021\000\028\000\022\000\027\000\023\000\026\000\
\\024\000\025\000\025\000\024\000\026\000\023\000\027\000\022\000\
\\028\000\021\000\000\000\
\\180\000\000\000\
\\181\000\043\000\041\000\044\000\040\000\045\000\039\000\000\000\
\\182\000\000\000\
\\183\000\000\000\
\\184\000\000\000\
\\185\000\000\000\
\\186\000\000\000\
\\187\000\000\000\
\\188\000\000\000\
\\189\000\007\000\133\000\000\000\
\\190\000\000\000\
\\191\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\000\000\
\\192\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\000\000\
\\193\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\000\000\
\\194\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\000\000\
\\195\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\000\000\
\\196\000\017\000\032\000\018\000\031\000\019\000\030\000\020\000\029\000\
\\021\000\028\000\022\000\027\000\023\000\026\000\024\000\025\000\
\\025\000\024\000\026\000\023\000\027\000\022\000\028\000\021\000\000\000\
\"
val actionRowNumbers =
"\006\000\054\000\049\000\006\000\
\\048\000\007\000\006\000\006\000\
\\074\000\079\000\053\000\071\000\
\\052\000\072\000\051\000\006\000\
\\006\000\008\000\050\000\006\000\
\\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\073\000\
\\087\000\088\000\086\000\043\000\
\\084\000\009\000\010\000\011\000\
\\041\000\034\000\033\000\026\000\
\\075\000\012\000\006\000\006\000\
\\065\000\029\000\081\000\062\000\
\\061\000\000\000\001\000\004\000\
\\005\000\003\000\002\000\060\000\
\\059\000\058\000\057\000\074\000\
\\085\000\021\000\037\000\025\000\
\\006\000\006\000\006\000\055\000\
\\074\000\031\000\038\000\030\000\
\\027\000\077\000\080\000\044\000\
\\006\000\013\000\014\000\016\000\
\\036\000\068\000\067\000\076\000\
\\064\000\006\000\045\000\056\000\
\\074\000\070\000\098\000\042\000\
\\046\000\015\000\089\000\028\000\
\\022\000\023\000\006\000\006\000\
\\082\000\006\000\078\000\006\000\
\\017\000\032\000\024\000\006\000\
\\018\000\019\000\035\000\066\000\
\\012\000\063\000\099\000\090\000\
\\091\000\006\000\020\000\095\000\
\\039\000\092\000\006\000\083\000\
\\094\000\040\000\006\000\015\000\
\\069\000\006\000\097\000\093\000\
\\096\000\047\000"
val gotoT =
"\
\\001\000\137\000\002\000\002\000\005\000\001\000\000\000\
\\000\000\
\\001\000\018\000\002\000\002\000\005\000\001\000\000\000\
\\002\000\031\000\005\000\001\000\000\000\
\\008\000\036\000\009\000\035\000\010\000\034\000\011\000\033\000\
\\012\000\032\000\000\000\
\\000\000\
\\002\000\041\000\005\000\001\000\000\000\
\\002\000\042\000\005\000\001\000\000\000\
\\002\000\044\000\003\000\043\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\048\000\005\000\001\000\000\000\
\\002\000\049\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\002\000\051\000\005\000\001\000\000\000\
\\002\000\052\000\005\000\001\000\000\000\
\\002\000\053\000\005\000\001\000\000\000\
\\002\000\054\000\005\000\001\000\000\000\
\\002\000\055\000\005\000\001\000\000\000\
\\002\000\056\000\005\000\001\000\000\000\
\\002\000\057\000\005\000\001\000\000\000\
\\002\000\058\000\005\000\001\000\000\000\
\\002\000\059\000\005\000\001\000\000\000\
\\002\000\060\000\005\000\001\000\000\000\
\\002\000\061\000\005\000\001\000\000\000\
\\002\000\062\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\008\000\036\000\009\000\064\000\010\000\034\000\011\000\033\000\
\\012\000\032\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\006\000\073\000\000\000\
\\002\000\075\000\005\000\001\000\000\000\
\\002\000\077\000\004\000\076\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\044\000\003\000\079\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\084\000\005\000\001\000\000\000\
\\002\000\085\000\005\000\001\000\000\000\
\\002\000\086\000\005\000\001\000\000\000\
\\000\000\
\\002\000\044\000\003\000\087\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\094\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\007\000\099\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\104\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\002\000\044\000\003\000\106\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\007\000\109\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\114\000\005\000\001\000\000\000\
\\002\000\115\000\005\000\001\000\000\000\
\\000\000\
\\002\000\117\000\005\000\001\000\000\000\
\\000\000\
\\002\000\118\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\123\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\006\000\127\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\128\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\132\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\134\000\005\000\001\000\000\000\
\\007\000\135\000\000\000\
\\000\000\
\\002\000\136\000\005\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\"
val numstates = 138
val numrules = 57
val s = ref "" and index = ref 0
val string_to_int = fn () => 
let val i = !index
in index := i+2; Char.ord(String.sub(!s,i)) + Char.ord(String.sub(!s,i+1)) * 256
end
val string_to_list = fn s' =>
    let val len = String.size s'
        fun f () =
           if !index < len then string_to_int() :: f()
           else nil
   in index := 0; s := s'; f ()
   end
val string_to_pairlist = fn (conv_key,conv_entry) =>
     let fun f () =
         case string_to_int()
         of 0 => EMPTY
          | n => PAIR(conv_key (n-1),conv_entry (string_to_int()),f())
     in f
     end
val string_to_pairlist_default = fn (conv_key,conv_entry) =>
    let val conv_row = string_to_pairlist(conv_key,conv_entry)
    in fn () =>
       let val default = conv_entry(string_to_int())
           val row = conv_row()
       in (row,default)
       end
   end
val string_to_table = fn (convert_row,s') =>
    let val len = String.size s'
        fun f ()=
           if !index < len then convert_row() :: f()
           else nil
     in (s := s'; index := 0; f ())
     end
local
  val memo = Array.array(numstates+numrules,ERROR)
  val _ =let fun g i=(Array.update(memo,i,REDUCE(i-numstates)); g(i+1))
       fun f i =
            if i=numstates then g i
            else (Array.update(memo,i,SHIFT (STATE i)); f (i+1))
          in f 0 handle Subscript => ()
          end
in
val entry_to_action = fn 0 => ACCEPT | 1 => ERROR | j => Array.sub(memo,(j-2))
end
val gotoT=Array.fromList(string_to_table(string_to_pairlist(NT,STATE),gotoT))
val actionRows=string_to_table(string_to_pairlist_default(T,entry_to_action),actionRows)
val actionRowNumbers = string_to_list actionRowNumbers
val actionT = let val actionRowLookUp=
let val a=Array.fromList(actionRows) in fn i=>Array.sub(a,i) end
in Array.fromList(map actionRowLookUp actionRowNumbers)
end
in LrTable.mkLrTable {actions=actionT,gotos=gotoT,numRules=numrules,
numStates=numstates,initialState=STATE 0}
end
end
local open Header in
type pos = int
type arg = unit
structure MlyValue = 
struct
datatype svalue = VOID | ntVOID of unit | ID of  (string) | STRING of  (string) | COMMENT of  (string) | CONST of  (int) | BINOP of  (Ast.BinOp) | VARDEC of  (Ast.VarDec) | FUNDEC of  (Ast.FunDec) | TYPEDEC of  (Ast.TypeDec) | DECS of  (Ast.Dec list) | DEC of  (Ast.Dec) | RECORDFIELDCREATE of  ( ( string * string )  list) | RECORDFIELDDEC of  ( ( string * Ast.Exp )  list) | LVALUE of  (Ast.Lvalue) | EXPC of  (Ast.Exp list) | EXPS of  (Ast.Exp list) | EXP of  (Ast.Exp) | PROGRAM of  (Ast.Program)
end
type svalue = MlyValue.svalue
type result = Ast.Program
end
structure EC=
struct
open LrTable
infix 5 $$
fun x $$ y = y::x
val is_keyword =
fn _ => false
val preferred_change : (term list * term list) list = 
nil
val noShift = 
fn (T 40) => true | _ => false
val showTerminal =
fn (T 0) => "NIL"
  | (T 1) => "BREAK"
  | (T 2) => "CONST"
  | (T 3) => "COMMENT"
  | (T 4) => "STRING"
  | (T 5) => "ID"
  | (T 6) => "COMMA"
  | (T 7) => "COLON"
  | (T 8) => "SEMICOLON"
  | (T 9) => "DOT"
  | (T 10) => "LP"
  | (T 11) => "RP"
  | (T 12) => "LSB"
  | (T 13) => "RSB"
  | (T 14) => "LFB"
  | (T 15) => "RFB"
  | (T 16) => "PLUS"
  | (T 17) => "MINUS"
  | (T 18) => "MUL"
  | (T 19) => "DIV"
  | (T 20) => "EQ"
  | (T 21) => "NEQ"
  | (T 22) => "GT"
  | (T 23) => "LT"
  | (T 24) => "LE"
  | (T 25) => "GE"
  | (T 26) => "AND"
  | (T 27) => "OR"
  | (T 28) => "ASSIGN"
  | (T 29) => "IF"
  | (T 30) => "THEN"
  | (T 31) => "ELSE"
  | (T 32) => "WHILE"
  | (T 33) => "DO"
  | (T 34) => "FOR"
  | (T 35) => "TO"
  | (T 36) => "LET"
  | (T 37) => "IN"
  | (T 38) => "END"
  | (T 39) => "OF"
  | (T 40) => "EOF"
  | (T 41) => "ARRAY"
  | (T 42) => "FUNCTION"
  | (T 43) => "TYPE"
  | (T 44) => "VAR"
  | (T 45) => "UNARY"
  | _ => "bogus-term"
local open Header in
val errtermvalue=
fn _ => MlyValue.VOID
end
val terms : term list = nil
 $$ (T 45) $$ (T 44) $$ (T 43) $$ (T 42) $$ (T 41) $$ (T 40) $$ (T 39) $$ (T 38) $$ (T 37) $$ (T 36) $$ (T 35) $$ (T 34) $$ (T 33) $$ (T 32) $$ (T 31) $$ (T 30) $$ (T 29) $$ (T 28) $$ (T 27) $$ (T 26) $$ (T 25) $$ (T 24) $$ (T 23) $$ (T 22) $$ (T 21) $$ (T 20) $$ (T 19) $$ (T 18) $$ (T 17) $$ (T 16) $$ (T 15) $$ (T 14) $$ (T 13) $$ (T 12) $$ (T 11) $$ (T 10) $$ (T 9) $$ (T 8) $$ (T 7) $$ (T 6) $$ (T 1) $$ (T 0)end
structure Actions =
struct 
exception mlyAction of int
local open Header in
val actions = 
fn (i392,defaultPos,stack,
    (()):arg) =>
case (i392,stack)
of  ( 0, ( ( _, ( MlyValue.EXP EXP, EXP1left, EXP1right)) :: rest671)) => let val  result = MlyValue.PROGRAM ((*#line 60.25 "expr.grm"*) [EXP] (*#line 551.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 0, ( result, EXP1left, EXP1right), rest671)
end
|  ( 1, ( ( _, ( MlyValue.PROGRAM PROGRAM, _, PROGRAM1right)) :: ( _, ( MlyValue.EXP EXP, EXP1left, _)) :: rest671)) => let val  result = MlyValue.PROGRAM ((*#line 61.23 "expr.grm"*)EXP :: PROGRAM(*#line 555.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 0, ( result, EXP1left, PROGRAM1right), rest671)
end
|  ( 2, ( ( _, ( _, NIL1left, NIL1right)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 64.31 "expr.grm"*)Ast.Nil(*#line 559.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, NIL1left, NIL1right), rest671)
end
|  ( 3, ( ( _, ( MlyValue.CONST CONST, CONST1left, CONST1right)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 65.31 "expr.grm"*)Ast.Const CONST(*#line 563.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, CONST1left, CONST1right), rest671)
end
|  ( 4, ( ( _, ( MlyValue.STRING STRING, STRING1left, STRING1right)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 66.34 "expr.grm"*)Ast.Str STRING(*#line 567.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, STRING1left, STRING1right), rest671)
end
|  ( 5, ( ( _, ( MlyValue.LVALUE LVALUE, LVALUE1left, LVALUE1right)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 67.30 "expr.grm"*)Ast.Lval LVALUE(*#line 571.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, LVALUE1left, LVALUE1right), rest671)
end
|  ( 6, ( ( _, ( _, _, RP1right)) :: ( _, ( MlyValue.EXPS EXPS, _, _)) :: ( _, ( _, LP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 68.36 "expr.grm"*)Ast.Exps EXPS(*#line 575.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, LP1left, RP1right), rest671)
end
|  ( 7, ( ( _, ( _, _, RP1right)) :: ( _, ( MlyValue.EXPC EXPC, _, _)) :: _ :: ( _, ( MlyValue.ID ID, ID1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 69.34 "expr.grm"*)Ast.FunCall (ID, EXPC)(*#line 579.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, ID1left, RP1right), rest671)
end
|  ( 8, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 70.56 "expr.grm"*) Ast.plus EXP1 EXP2(*#line 583.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 9, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 71.57 "expr.grm"*) Ast.minus EXP1 EXP2(*#line 587.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 10, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 72.57 "expr.grm"*) Ast.mul EXP1 EXP2(*#line 591.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 11, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 73.57 "expr.grm"*) Ast.divi EXP1 EXP2(*#line 595.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 12, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 74.55 "expr.grm"*) Ast.ge EXP1 EXP2(*#line 599.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 13, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 75.56 "expr.grm"*) Ast.le EXP1 EXP2(*#line 603.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 14, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 76.56 "expr.grm"*) Ast.equal EXP1 EXP2(*#line 607.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 15, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 77.57 "expr.grm"*) Ast.notEq EXP1 EXP2(*#line 611.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 16, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 78.56 "expr.grm"*) Ast.lesser EXP1 EXP2(*#line 615.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 17, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 79.56 "expr.grm"*) Ast.greater EXP1 EXP2(*#line 619.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 18, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 80.57 "expr.grm"*) Ast.andOp EXP1 EXP2(*#line 623.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 19, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 81.56 "expr.grm"*) Ast.orOp EXP1 EXP2(*#line 627.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, EXP1left, EXP2right), rest671)
end
|  ( 20, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: _ :: ( _, ( MlyValue.EXP EXP1, _, _)) :: _ :: ( _, ( MlyValue.ID ID, ID1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 82.51 "expr.grm"*)Ast.Array (ID, EXP1, EXP2)(*#line 631.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, ID1left, EXP2right), rest671)
end
|  ( 21, ( ( _, ( _, _, RFB1right)) :: ( _, ( MlyValue.RECORDFIELDDEC RECORDFIELDDEC, _, _)) :: _ :: ( _, ( MlyValue.ID ID, ID1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 83.45 "expr.grm"*)Ast.Record (ID, RECORDFIELDDEC)(*#line 635.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, ID1left, RFB1right), rest671)
end
|  ( 22, ( ( _, ( MlyValue.EXP EXP, _, EXP1right)) :: _ :: ( _, ( MlyValue.LVALUE LVALUE, LVALUE1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 84.43 "expr.grm"*)Ast.Assign (LVALUE, EXP)(*#line 639.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, LVALUE1left, EXP1right), rest671)
end
|  ( 23, ( ( _, ( MlyValue.EXP EXP3, _, EXP3right)) :: _ :: ( _, ( MlyValue.EXP EXP2, _, _)) :: _ :: ( _, ( MlyValue.EXP EXP1, _, _)) :: ( _, ( _, IF1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 85.44 "expr.grm"*)Ast.IfThenElse(EXP1, EXP2, EXP3)(*#line 643.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, IF1left, EXP3right), rest671)
end
|  ( 24, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, _, _)) :: ( _, ( _, IF1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 86.40 "expr.grm"*)Ast.IfThen(EXP1, EXP2)(*#line 647.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, IF1left, EXP2right), rest671)
end
|  ( 25, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( MlyValue.EXP EXP1, _, _)) :: ( _, ( _, WHILE1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 87.42 "expr.grm"*)Ast.While (EXP1,EXP2)(*#line 651.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, WHILE1left, EXP2right), rest671)
end
|  ( 26, ( ( _, ( MlyValue.EXP EXP3, _, EXP3right)) :: _ :: ( _, ( MlyValue.EXP EXP2, _, _)) :: _ :: ( _, ( MlyValue.EXP EXP1, _, _)) :: _ :: ( _, ( MlyValue.ID ID, _, _)) :: ( _, ( _, FOR1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 88.48 "expr.grm"*)Ast.For (ID,EXP1,EXP2,EXP3)(*#line 655.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, FOR1left, EXP3right), rest671)
end
|  ( 27, ( ( _, ( _, _, END1right)) :: ( _, ( MlyValue.EXPS EXPS, _, _)) :: _ :: ( _, ( MlyValue.DECS DECS, _, _)) :: ( _, ( _, LET1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 89.48 "expr.grm"*) Ast.Let (DECS, EXPS) (*#line 659.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, LET1left, END1right), rest671)
end
|  ( 28, ( ( _, ( MlyValue.COMMENT COMMENT, COMMENT1left, COMMENT1right)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 90.31 "expr.grm"*)Ast.Comment COMMENT(*#line 663.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, COMMENT1left, COMMENT1right), rest671)
end
|  ( 29, ( ( _, ( _, BREAK1left, BREAK1right)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 91.30 "expr.grm"*)Ast.Break(*#line 667.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, BREAK1left, BREAK1right), rest671)
end
|  ( 30, ( ( _, ( MlyValue.EXP EXP, _, EXP1right)) :: ( _, ( _, UNARY1left, _)) :: rest671)) => let val  result = MlyValue.EXP ((*#line 92.32 "expr.grm"*)Ast.Negation EXP(*#line 671.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 1, ( result, UNARY1left, EXP1right), rest671)
end
|  ( 31, ( rest671)) => let val  result = MlyValue.EXPS ((*#line 95.30 "expr.grm"*)[](*#line 675.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 2, ( result, defaultPos, defaultPos), rest671)
end
|  ( 32, ( ( _, ( MlyValue.EXP EXP, EXP1left, EXP1right)) :: rest671)) => let val  result = MlyValue.EXPS ((*#line 96.20 "expr.grm"*)[EXP](*#line 679.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 2, ( result, EXP1left, EXP1right), rest671)
end
|  ( 33, ( ( _, ( MlyValue.EXPS EXPS, _, EXPS1right)) :: _ :: ( _, ( MlyValue.EXP EXP, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXPS ((*#line 97.28 "expr.grm"*)EXP :: EXPS(*#line 683.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 2, ( result, EXP1left, EXPS1right), rest671)
end
|  ( 34, ( ( _, ( MlyValue.EXP EXP, EXP1left, EXP1right)) :: rest671)) => let val  result = MlyValue.EXPC ((*#line 100.54 "expr.grm"*) [EXP] (*#line 687.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 3, ( result, EXP1left, EXP1right), rest671)
end
|  ( 35, ( ( _, ( MlyValue.EXPS EXPS, _, EXPS1right)) :: _ :: ( _, ( MlyValue.EXP EXP, EXP1left, _)) :: rest671)) => let val  result = MlyValue.EXPC ((*#line 101.54 "expr.grm"*) EXP :: EXPS (*#line 691.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 3, ( result, EXP1left, EXPS1right), rest671)
end
|  ( 36, ( ( _, ( MlyValue.ID ID, ID1left, ID1right)) :: rest671)) => let val  result = MlyValue.LVALUE ((*#line 104.54 "expr.grm"*) Ast.Id ID (*#line 695.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 4, ( result, ID1left, ID1right), rest671)
end
|  ( 37, ( ( _, ( _, _, RSB1right)) :: ( _, ( MlyValue.EXP EXP, _, _)) :: _ :: ( _, ( MlyValue.LVALUE LVALUE, LVALUE1left, _)) :: rest671)) => let val  result = MlyValue.LVALUE ((*#line 105.49 "expr.grm"*) Ast.Subscript (LVALUE, EXP) (*#line 699.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 4, ( result, LVALUE1left, RSB1right), rest671)
end
|  ( 38, ( ( _, ( MlyValue.ID ID, _, ID1right)) :: _ :: ( _, ( MlyValue.LVALUE LVALUE, LVALUE1left, _)) :: rest671)) => let val  result = MlyValue.LVALUE ((*#line 106.54 "expr.grm"*) Ast.Field (LVALUE, ID) (*#line 703.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 4, ( result, LVALUE1left, ID1right), rest671)
end
|  ( 39, ( ( _, ( MlyValue.EXP EXP, _, EXP1right)) :: _ :: ( _, ( MlyValue.ID ID, ID1left, _)) :: rest671)) => let val  result = MlyValue.RECORDFIELDDEC ((*#line 109.50 "expr.grm"*) [(ID, EXP)] (*#line 707.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 5, ( result, ID1left, EXP1right), rest671)
end
|  ( 40, ( ( _, ( MlyValue.RECORDFIELDDEC RECORDFIELDDEC, _, RECORDFIELDDEC1right)) :: _ :: ( _, ( MlyValue.EXP EXP, _, _)) :: _ :: ( _, ( MlyValue.ID ID, ID1left, _)) :: rest671)) => let val  result = MlyValue.RECORDFIELDDEC ((*#line 110.50 "expr.grm"*) (ID, EXP) :: RECORDFIELDDEC (*#line 711.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 5, ( result, ID1left, RECORDFIELDDEC1right), rest671)
end
|  ( 41, ( ( _, ( MlyValue.DEC DEC, DEC1left, DEC1right)) :: rest671)) => let val  result = MlyValue.DECS ((*#line 112.54 "expr.grm"*) [DEC] (*#line 715.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 8, ( result, DEC1left, DEC1right), rest671)
end
|  ( 42, ( ( _, ( MlyValue.DECS DECS, _, DECS1right)) :: ( _, ( MlyValue.DEC DEC, DEC1left, _)) :: rest671)) => let val  result = MlyValue.DECS ((*#line 113.54 "expr.grm"*) DEC :: DECS (*#line 719.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 8, ( result, DEC1left, DECS1right), rest671)
end
|  ( 43, ( ( _, ( MlyValue.TYPEDEC TYPEDEC, TYPEDEC1left, TYPEDEC1right)) :: rest671)) => let val  result = MlyValue.DEC ((*#line 115.54 "expr.grm"*) Ast.TyDec TYPEDEC (*#line 723.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 7, ( result, TYPEDEC1left, TYPEDEC1right), rest671)
end
|  ( 44, ( ( _, ( MlyValue.VARDEC VARDEC, VARDEC1left, VARDEC1right)) :: rest671)) => let val  result = MlyValue.DEC ((*#line 116.54 "expr.grm"*) Ast.VDec VARDEC (*#line 727.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 7, ( result, VARDEC1left, VARDEC1right), rest671)
end
|  ( 45, ( ( _, ( MlyValue.FUNDEC FUNDEC, FUNDEC1left, FUNDEC1right)) :: rest671)) => let val  result = MlyValue.DEC ((*#line 117.54 "expr.grm"*) Ast.FDec FUNDEC (*#line 731.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 7, ( result, FUNDEC1left, FUNDEC1right), rest671)
end
|  ( 46, ( ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, TYPE1left, _)) :: rest671)) => let val  result = MlyValue.TYPEDEC ((*#line 119.50 "expr.grm"*) Ast.TypeAssign (ID1, ID2) (*#line 735.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 9, ( result, TYPE1left, ID2right), rest671)
end
|  ( 47, ( ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: _ :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, TYPE1left, _)) :: rest671)) => let val  result = MlyValue.TYPEDEC ((*#line 120.50 "expr.grm"*) Ast.ArrayType (ID1, ID2) (*#line 739.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 9, ( result, TYPE1left, ID2right), rest671)
end
|  ( 48, ( ( _, ( _, _, RFB1right)) :: ( _, ( MlyValue.RECORDFIELDCREATE RECORDFIELDCREATE, _, _)) :: _ :: _ :: ( _, ( MlyValue.ID ID, _, _)) :: ( _, ( _, TYPE1left, _)) :: rest671)) => let val  result = MlyValue.TYPEDEC ((*#line 122.50 "expr.grm"*) Ast.RecordType (ID, RECORDFIELDCREATE) (*#line 743.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 9, ( result, TYPE1left, RFB1right), rest671)
end
|  ( 49, ( ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.RECORDFIELDCREATE ((*#line 125.50 "expr.grm"*) [(ID1, ID2)] (*#line 747.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 6, ( result, ID1left, ID2right), rest671)
end
|  ( 50, ( ( _, ( MlyValue.RECORDFIELDCREATE RECORDFIELDCREATE, _, RECORDFIELDCREATE1right)) :: _ :: ( _, ( MlyValue.ID ID2, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.RECORDFIELDCREATE ((*#line 126.50 "expr.grm"*) (ID1, ID2) :: RECORDFIELDCREATE (*#line 751.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 6, ( result, ID1left, RECORDFIELDCREATE1right), rest671)
end
|  ( 51, ( ( _, ( MlyValue.EXP EXP, _, EXP1right)) :: _ :: _ :: ( _, ( MlyValue.RECORDFIELDCREATE RECORDFIELDCREATE, _, _)) :: _ :: ( _, ( MlyValue.ID ID, _, _)) :: ( _, ( _, FUNCTION1left, _)) :: rest671)) => let val  result = MlyValue.FUNDEC ((*#line 129.46 "expr.grm"*) Ast.Fun (ID, RECORDFIELDCREATE, EXP) (*#line 755.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 10, ( result, FUNCTION1left, EXP1right), rest671)
end
|  ( 52, ( ( _, ( MlyValue.EXP EXP, _, EXP1right)) :: _ :: _ :: _ :: ( _, ( MlyValue.ID ID, _, _)) :: ( _, ( _, FUNCTION1left, _)) :: rest671)) => let val  result = MlyValue.FUNDEC ((*#line 130.42 "expr.grm"*) Ast.Fun (ID, [], EXP) (*#line 759.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 10, ( result, FUNCTION1left, EXP1right), rest671)
end
|  ( 53, ( ( _, ( MlyValue.EXP EXP, _, EXP1right)) :: _ :: ( _, ( MlyValue.ID ID2, _, _)) :: _ :: _ :: ( _, ( MlyValue.RECORDFIELDCREATE RECORDFIELDCREATE, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FUNCTION1left, _)) :: rest671)) => let val  result = MlyValue.FUNDEC ((*#line 132.46 "expr.grm"*) Ast.FunType (ID1, RECORDFIELDCREATE, ID2, EXP) (*#line 763.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 10, ( result, FUNCTION1left, EXP1right), rest671)
end
|  ( 54, ( ( _, ( MlyValue.EXP EXP, _, EXP1right)) :: _ :: ( _, ( MlyValue.ID ID2, _, _)) :: _ :: _ :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FUNCTION1left, _)) :: rest671)) => let val  result = MlyValue.FUNDEC ((*#line 134.50 "expr.grm"*) Ast.FunType (ID1, [], ID2, EXP) (*#line 767.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 10, ( result, FUNCTION1left, EXP1right), rest671)
end
|  ( 55, ( ( _, ( MlyValue.EXP EXP, _, EXP1right)) :: _ :: ( _, ( MlyValue.ID ID, _, _)) :: ( _, ( _, VAR1left, _)) :: rest671)) => let val  result = MlyValue.VARDEC ((*#line 136.54 "expr.grm"*) Ast.Var (ID, EXP) (*#line 771.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 11, ( result, VAR1left, EXP1right), rest671)
end
|  ( 56, ( ( _, ( MlyValue.EXP EXP, _, EXP1right)) :: _ :: ( _, ( MlyValue.ID ID2, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, VAR1left, _)) :: rest671)) => let val  result = MlyValue.VARDEC ((*#line 137.54 "expr.grm"*) Ast.VarType (ID1, ID2, EXP) (*#line 775.1 "expr.grm.sml"*)
)
 in ( LrTable.NT 11, ( result, VAR1left, EXP1right), rest671)
end
| _ => raise (mlyAction i392)
end
val void = MlyValue.VOID
val extract = fn a => (fn MlyValue.PROGRAM x => x
| _ => let exception ParseInternal
	in raise ParseInternal end) a 
end
end
structure Tokens : Expr_TOKENS =
struct
type svalue = ParserData.svalue
type ('a,'b) token = ('a,'b) Token.token
fun NIL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 0,(ParserData.MlyValue.VOID,p1,p2))
fun BREAK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 1,(ParserData.MlyValue.VOID,p1,p2))
fun CONST (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 2,(ParserData.MlyValue.CONST i,p1,p2))
fun COMMENT (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 3,(ParserData.MlyValue.COMMENT i,p1,p2))
fun STRING (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 4,(ParserData.MlyValue.STRING i,p1,p2))
fun ID (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 5,(ParserData.MlyValue.ID i,p1,p2))
fun COMMA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 6,(ParserData.MlyValue.VOID,p1,p2))
fun COLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 7,(ParserData.MlyValue.VOID,p1,p2))
fun SEMICOLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 8,(ParserData.MlyValue.VOID,p1,p2))
fun DOT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 9,(ParserData.MlyValue.VOID,p1,p2))
fun LP (p1,p2) = Token.TOKEN (ParserData.LrTable.T 10,(ParserData.MlyValue.VOID,p1,p2))
fun RP (p1,p2) = Token.TOKEN (ParserData.LrTable.T 11,(ParserData.MlyValue.VOID,p1,p2))
fun LSB (p1,p2) = Token.TOKEN (ParserData.LrTable.T 12,(ParserData.MlyValue.VOID,p1,p2))
fun RSB (p1,p2) = Token.TOKEN (ParserData.LrTable.T 13,(ParserData.MlyValue.VOID,p1,p2))
fun LFB (p1,p2) = Token.TOKEN (ParserData.LrTable.T 14,(ParserData.MlyValue.VOID,p1,p2))
fun RFB (p1,p2) = Token.TOKEN (ParserData.LrTable.T 15,(ParserData.MlyValue.VOID,p1,p2))
fun PLUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 16,(ParserData.MlyValue.VOID,p1,p2))
fun MINUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 17,(ParserData.MlyValue.VOID,p1,p2))
fun MUL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 18,(ParserData.MlyValue.VOID,p1,p2))
fun DIV (p1,p2) = Token.TOKEN (ParserData.LrTable.T 19,(ParserData.MlyValue.VOID,p1,p2))
fun EQ (p1,p2) = Token.TOKEN (ParserData.LrTable.T 20,(ParserData.MlyValue.VOID,p1,p2))
fun NEQ (p1,p2) = Token.TOKEN (ParserData.LrTable.T 21,(ParserData.MlyValue.VOID,p1,p2))
fun GT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 22,(ParserData.MlyValue.VOID,p1,p2))
fun LT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 23,(ParserData.MlyValue.VOID,p1,p2))
fun LE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 24,(ParserData.MlyValue.VOID,p1,p2))
fun GE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 25,(ParserData.MlyValue.VOID,p1,p2))
fun AND (p1,p2) = Token.TOKEN (ParserData.LrTable.T 26,(ParserData.MlyValue.VOID,p1,p2))
fun OR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 27,(ParserData.MlyValue.VOID,p1,p2))
fun ASSIGN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 28,(ParserData.MlyValue.VOID,p1,p2))
fun IF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 29,(ParserData.MlyValue.VOID,p1,p2))
fun THEN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 30,(ParserData.MlyValue.VOID,p1,p2))
fun ELSE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 31,(ParserData.MlyValue.VOID,p1,p2))
fun WHILE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 32,(ParserData.MlyValue.VOID,p1,p2))
fun DO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 33,(ParserData.MlyValue.VOID,p1,p2))
fun FOR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 34,(ParserData.MlyValue.VOID,p1,p2))
fun TO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 35,(ParserData.MlyValue.VOID,p1,p2))
fun LET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 36,(ParserData.MlyValue.VOID,p1,p2))
fun IN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 37,(ParserData.MlyValue.VOID,p1,p2))
fun END (p1,p2) = Token.TOKEN (ParserData.LrTable.T 38,(ParserData.MlyValue.VOID,p1,p2))
fun OF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 39,(ParserData.MlyValue.VOID,p1,p2))
fun EOF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 40,(ParserData.MlyValue.VOID,p1,p2))
fun ARRAY (p1,p2) = Token.TOKEN (ParserData.LrTable.T 41,(ParserData.MlyValue.VOID,p1,p2))
fun FUNCTION (p1,p2) = Token.TOKEN (ParserData.LrTable.T 42,(ParserData.MlyValue.VOID,p1,p2))
fun TYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 43,(ParserData.MlyValue.VOID,p1,p2))
fun VAR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 44,(ParserData.MlyValue.VOID,p1,p2))
fun UNARY (p1,p2) = Token.TOKEN (ParserData.LrTable.T 45,(ParserData.MlyValue.VOID,p1,p2))
end
end
