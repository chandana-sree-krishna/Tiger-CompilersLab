type Pos = int * int
val curpos = ref (0,0)

fun newlines n = curpos := (x,y)
			  	 where (x1,x2) = !curpos
				and  (x,y) = (x1+n,x2)
