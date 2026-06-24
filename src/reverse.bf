[
reverse space-terminated string
so, ends on 32
set up tape as [char][temp helper] ...
store (input-32)
when reading back, print (input+32)
]
>		keep *0 as 0 (psuedo space)
,>++++		read input and set up helper for minus 32
[-<-------->]	input offset down 32
<[		check that previous char wasn't space
>,>++++		store curr char after prev char and ready mult
[-<-------->]	sub 32 from curr char
<]		look at curr char for loop check
<		look at pre space char
[		while curr char not space
>++++
[-<++++++++>]<.	add 32 to curr char and print
[-]<		clear char and ready to look at prev
]
