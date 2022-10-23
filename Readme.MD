# MICROPROCESSOR-PROJECT

This is the repository for our CSN-221 Microprocessor Project

## About

In this project we have implemented a pipelined MIPS processor which features hazard detection as well as forwarding. This implementation is based on a limited ISA suited for the given tasks in the project(namely Fibonacci and Factorial).
There are five pipeline stages involved:
1.	Instruction Fetch (IF)
2.	Instruction Decode (ID)
3.	Execution (EXE)
4.	Memory (MEM)
5.	Write Back (WB)
Design:
All modules have been named according to their function in the project. The top level description of the processor can be found under the file topLevelCircuit.v. It contains a modular design of the processor containing five pipe stages and four pipe registers. The Register File, the Hazard Detection and the Forwarding units are also instantiated in topLevelCircuit.v. Pipe stages are consist and run other modules through it.

Constants:
defines.v contains constants used all over the project for OPCODES, EXECUTION COMMANDS, and BRANCH CONDITION COMMANDS required in the tasks specified. It also contains some constants for wire, reg widths and memory specifications.


## How to start?

- Clone the repository to your local system using `git clone -b` along with branch name and  SSH Key.
- Install Icarus compiler for verilog version 0.97
- Input your MIPS instruction to parser.cpp and paste the output to instructionMem.v
- Run the terminal in the bin folder of compiler and move all the files of modules there .
- Run the two commands given in `Command Line Entry.txt` in the terminal 

## Author

[Lakshya Joshi](https://github.com/lakshya1310)
[Darshan Kumar](https://github.com/itsdarshankumar)
[Tushar Tembhurne](https://github.com/tusharrr17)
[Om Gupta](https://github.com/omg-sator)
[Partha Kaushik](https://github.com/parthanos)
[Rishika](https://github.com/rishu-3619)

