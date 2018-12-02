# ARM CPU

This is a 32-bit single-cycle cpu implementation that supports a subset of ARMv7 instructions, the register file contains 16 32-bit registers.

## Supported instructions
Here is an outline of all the instructions supported

#### Branching:
```
B, BX, BL
```

#### Data Processing:
```
MOV, ADD, CMP, SUB
```

#### Single Data Transfer
```
LDR, STR
```

#### Conditioning:
```
EQ, LT, GT, LE, GE
```

##### Note:
All instructions of the four assembly program in the project root directory is supported and can be executed by this cpu in Logism.

First, compile the assembly code and extract all the 32-bit instructions in hex format. Then, save the instructions in a rom.txt file and can be imported into a ROM module in Logism. Once imported, the rom will be accessed by the cpu for instructions.
