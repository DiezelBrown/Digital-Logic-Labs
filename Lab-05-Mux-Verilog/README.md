# Lab 5 - 4-to-1 Multiplexer and Hierarchical Verilog

## Overview

This lab focused on designing, constructing, and verifying a 4-to-1 multiplexer using both physical digital logic hardware and Verilog HDL.

A gate-level 4-to-1 multiplexer was constructed using 74LS-series integrated circuits and compared against a 74LS153N multiplexer. A comparator circuit was used to verify that both implementations produced the same output.

The multiplexer was also implemented in Verilog using hierarchical design by combining multiple 2-to-1 mux modules.

## Hardware Used

- 74LS04 Hex Inverter
- 2 × SN74LS11 Triple 3-Input AND Gate ICs
- 74LS32 OR Gate IC
- 74LS153N 4-to-1 Multiplexer
- 74LS86 XOR Gate IC
- Breadboard
- LED
- Current-limiting resistor
- 5 V power supply
- Jumper wires

## 4-to-1 Multiplexer Logic

The multiplexer uses two select inputs, `S1` and `S0`, to choose one of four data inputs.

| S1 | S0 | Selected Input |
|----|----|----------------|
| 0 | 0 | D0 |
| 0 | 1 | D1 |
| 1 | 0 | D2 |
| 1 | 1 | D3 |

The Boolean expression is:

```text
Y = D0S1'S0' + D1S1'S0 + D2S1S0' + D3S1S0
