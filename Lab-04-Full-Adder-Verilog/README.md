# Lab 4 - Full Adder and Verilog HDL

## Overview

This lab focused on designing, building, and verifying a 1-bit full adder using both physical hardware and Verilog HDL.

The full adder has three inputs:

- `A`
- `B`
- `Cin`

and two outputs:

- `Sum`
- `Cout`

The circuit was first analyzed using a truth table and Karnaugh maps, then implemented on a breadboard using XOR and NAND logic gates. The same circuit was also modeled in structural Verilog and verified using a testbench and waveform simulation.

## Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## Boolean Expressions

The MSOP expressions obtained from the truth table and Karnaugh maps were:

```text
Sum = A'B'Cin + A'BCin' + AB'Cin' + ABCin
