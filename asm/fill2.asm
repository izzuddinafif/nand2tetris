// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

// SCREEN + ROW * 32 + COL / 16

@8192
D=A
@R0
M=D

(LOOP_0)
@n
M=0
@KBD
D=M
@SET
D;JGT
@flag
M=0

(LOOP_1)
@R0
D=M
@n
D=D-M
@LOOP_0
D;JEQ // if n == 8192, goto LOOP

@SCREEN
D=A
@n
A=D+M
D=A
@i
M=D

@flag
D=M
@ON
D;JGT

@i
A=M
M=0 // set to white
@n
M=M+1 // n++ 
@LOOP_1
0;JMP

(ON)
@i
A=M
M=-1 // set to black
@n
M=M+1 // n++ 
@LOOP_1
0;JMP

(SET)
@flag
M=1
@LOOP_1
0;JMP