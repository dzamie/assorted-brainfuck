# Assorted Brainfuck Programs
Brainfuck is a compact programming language that has only 8 commands:
1. `+` increment the current memory byte
2. `-` decrement the current memory byte
3. `>` increment the memory pointer
4. `<` decrement the memory pointer
5. `[` if current memory byte = 0, jump past the paired `]`
6. `]` jump back to the paired `[`
7. `,` store an inputted byte (usually an ASCII char) in the current memory byte
8. `.` print the current memory byte value (usually as an ASCII char)

All other characters are ignored/treated as comments. Uncommented Brainfuck sucks to read.

Anyway, I'm going to store some assorted Brainfuck programs here. They're described below.

## Reverse
Accepts a space-terminated string, then prints it in reverse. "MadamImAdam " prints "madAmImadaM" and so on.

## Hex_To_Bin
Accepts a space-terminated hexadecimal string, then prints its equivalent in binary. Any character that isn't a digit or an uppercase A-E is treated as an F (e.g. "3F" "3X" and "3a" all output "0011 1111 ").
