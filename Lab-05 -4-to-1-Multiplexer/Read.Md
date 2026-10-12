# Lab 5 - 4-to-1 Multiplexer and Hierarchical Verilog

## Overview

This lab focused on designing, constructing, and verifying a 4-to-1 multiplexer using both physical digital logic hardware and Verilog HDL.

A gate-level 4-to-1 multiplexer was constructed using 74LS-series integrated circuits and compared against a 74LS153N multiplexer. A comparator circuit was used to verify that both implementations produced the same output.

The mux was also implemented in Verilog using hierarchical design by combining multiple 2-to-1 mux modules.

## Hardware

- 74LS04 Hex Inverter
- 2 × SN74LS11 Triple 3-Input AND Gates
- 74LS32 OR Gates
- 74LS153N Multiplexer
- 74LS86 XOR Gates
- Breadboard
- LED
- Current-limiting resistor
- 5 V power supply
- Jumper wires

## 4-to-1 Multiplexer Logic

The mux selects one of four data inputs using two select lines.

| S1 | S0 | Output |
|----|----|--------|
| 0 | 0 | D0 |
| 0 | 1 | D1 |
| 1 | 0 | D2 |
| 1 | 1 | D3 |

Equation:

Y = D0S1'S0' + D1S1'S0 + D2S1S0' + D3S1S0

## Physical Implementation

The manually constructed mux used:

- 2 NOT gates to generate S0' and S1'
- 4 three-input AND gates
- 3 OR gates

The manual mux output was compared against the output of a 74LS153N.

A 74LS86 XOR gate and 74LS04 inverter formed a comparator. The LED remained on when both mux outputs matched.

All four select combinations were tested successfully:

- 00 → D0
- 01 → D1
- 10 → D2
- 11 → D3

## Verilog Implementation

The Verilog design used hierarchical construction.

Three 2-to-1 mux modules were combined to create the 4-to-1 mux:

- M0 selects between D0 and D1
- M1 selects between D2 and D3
- M2 selects between the outputs of M0 and M1

## Simulation

The testbench tested:

- 16 possible data-input patterns
- 4 possible select combinations
- 64 total test cases

Simulation result:

```text
PASS: All 64 combinations passed.
