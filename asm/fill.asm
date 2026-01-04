// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

@8192
D=A
@R0
M=D

(LOOP)
@n
M=0
@KBD
D=M
@ON
D;JGT

// OFF
(OFF)
@R0
D=M
@n
D=D-M
@LOOP
D;JEQ // if n == 8192, goto LOOP
@SCREEN
D=A
@n
A=D+M
M=0 // *(SCREEN + n) = 0
@n
M=M+1 // n++ 
@OFF
0;JMP

// ON
(ON)
@R0
D=M
@n
D=D-M
@LOOP
D;JEQ // if n == 8192, goto LOOP
@SCREEN
D=A
@n
A=D+M // *(SCREEN + n) = -1
M=-1
@n
M=M+1 // n++ 
@ON
0;JMP