[
Hex to binary
Accepts space-terminated string of hexadecimal, then outputs binary equivalent.
uses [char] [helper] during input
and [helper] [char] during output
]

>,>++++		keep *0 as 0 and write first input to *1
[-<-------->]<	subtract 32 from char then look at char
[		while recent char is not space
>,>++++		input next one
[-<-------->]<	sub 32 from char and look at it like before
]		(continue when space found)
<[<]>		scroll left until start of file then look at first char
[		while curr char isn't 0 (space)
<++++		y'all already know
[->----<]	surprise we're subtracting 16 so that "0" is 0
+>		the helper byte is now the "does it need output" bit
[-		procs if greater than 0
 [-		procs if greater than 1
  [-		procs if greater than 2
   [-		procs if greater than 3
    [-		procs if greater than 4
     [-		procs if greater than 5
      [-	procs if greater than 6
       [-	procs if greater than 7
        [-	procs if greater than 8
         [--------	procs if greater than 9 because of the ascii gap
          [-	procs if greater than A
           [-	procs if greater than B
            [-	procs if greater than C
             [-	procs if greater than D
              [[-]		clears if greater than E (F)
               <++++++		helper byte is now used for multiplication
               [->+++++++<]>	store 49 ("1") into char
               ....[-]		write 1111 and clear
              ]			F over
              <[>[-]		clears if output needed for E
               <++++++
               [->+++++++<]>
               ...-.[-]<	write 1110 and clear
              ]>		check complete
             ]			E over
             <[>[-]		clears if output needed for D
              <++++++
              [->+++++++<]>
              ..-.+.[-]<	write 1101 and clear
             ]>			check complete
            ]			D over
            <[>[-]		clears if output needed for C
             <++++++
             [->+++++++<]>
             ..-..[-]<	write 1100 and clear
            ]>		check complete
           ]		C over
           <[>[-]	clears if output needed for B
            <++++++
            [->+++++++<]>
            .-.+..[-]<	write 1011 and clear
           ]>		check complete
          ]		B over
          <[>[-]	clears if output needed for A
           <++++++
           [->+++++++<]>
           .-.+.-.[-]<	write 1010 and clear
          ]>		check complete
         ]		A over
         <[>[-]		clears if output needed for 9
          <++++++
          [->+++++++<]>
          .-..+.[-]<	write 1001 and clear
         ]>		check complete
        ]		9 over
        <[>[-]		clears if output needed for 8
         <++++++
         [->+++++++<]>
         .-...[-]<	write 1000 and clear
        ]>		check complete
       ]		8 over
       <[>[-]		7 start
        <++++++
        [->+++++++<]>
        -.+...[-]<	0111
       ]>
      ]
      <[>[-]		6 start
       <++++++
       [->+++++++<]>
       -.+..-.[-]<	0110
      ]>
     ]
     <[>[-]		5 start
      <++++++
      [->+++++++<]>
      -.+.-.+.[-]<	0101
     ]>
    ]
    <[>[-]		4 start
     <++++++
     [->+++++++<]>
     -.+.-..[-]<	0100
    ]>
   ]
   <[>[-]	3 start
    <++++++
    [->+++++++<]>
    -..+..[-]<	0011
   ]>
  ]
  <[>[-]	2 start
   <++++++
   [->+++++++<]>
   -..+.-.[-]<	0010
  ]>
 ]
 <[>[-]		1 start
  <++++++
  [->+++++++<]>
  -...+.[-]<	0001
 ]>
]
<[>[-]		0 start
 <++++++
 [->+++++++<]>
 -....[-]<	0000
]>[-]		empty the char just in case
<[-]++++	eh let's write a space between them
[->++++++++<] ASCII 32 btw
>.[-]
>]		look at next char and jump back to see if it's space
