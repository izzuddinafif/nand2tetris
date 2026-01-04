// --- Program Setup ---
@10
D=A
@n
M=D-1

// --- Initialize loop counter i ---
@1
D=A
@i
M=D

// --- Initialize fib[0] and fib[1] ---
@fib
M=1
A=A+1
M=1

// --- Main Loop ---
(LOOP)
@i
D=M
@n
D=D-M
@END
D;JEQ

// --- Fibonacci Calculation ---
@i
D=M
@fib
A=D+A
D=M
A=A-1
D=D+M
A=A+1
A=A+1
M=D

// --- Loop Control ---
@i
M=M+1
@LOOP
0;JMP

// --- End of Program ---
(END)
@END
0;JMP
