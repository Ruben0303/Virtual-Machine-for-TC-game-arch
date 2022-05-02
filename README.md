Virtual-Machine-for-TC-game-32bit arch

Programm reads from file in build directory called "input.txt"
Translates binary code and runs the program as encoded in game.

Note: 
In input file is written binary for the following code:


label_1:
Add 1 to R1(register) and save in R1
Out R1 value(but originally does R1 or 0 and out)
CHECKING  IF INPUT NUMBER is equal to  R1 value go to label_1

Feel free to change input.txt 
with codes you want by following format 

Opcode SRC1 SRC2 Destination
IF OPCODE is CONDITION Instead of Destination is address to jump:
CND_Opcode SRC1 SRC2 ADDRESS



OPCODE:
  ADD 0 (0000)
  SUB 1 (0001)
  AND 2 (0010)
  OR 3  (0011)
  NOT 4(ignores SRC2) (0010)
  XOR 5 (0101)

IF OPCODES last bit is 1 it means that SRC1 is Immidiate
IF OPCODES last bit is 1 it means that SRC2 is Immidiate
OTHERWISE SRC1 and SRC2 is register numbers
There are 6 regs:
  R0 
  R1
  R2
  R3
  R4
  R5

CONDITIONS:
  IF_EQUAL - 32 (100000)
  IF_NOT_EQUAL - 33 (100001)
  IF_LESS - 34 (100010)
  IF_LESS_OR_EQUAL - 35 (100011)
  IF_GREATER - 36 (100100)
  IF_GREATER_OR_EQUAL - 37 (100101)



