# Digital Logic Labs

A collection of hands-on digital logic projects and laboratory work completed as part of my Computer Engineering coursework.

This repository documents the design, implementation, simulation, and testing of digital circuits using physical hardware and Verilog.

## Topics

- Boolean algebra and logic minimization
- Combinational logic
- Sequential logic
- Breadboard prototyping
- 74LS-series integrated circuits
- Verilog design and simulation
- Hardware testing and debugging
- Oscilloscope measurements and waveform analysis
- Finite State Machines (FSMs)

## Labs

### Lab 2 - NAND Majority Circuit

Implemented a three-input majority function using SN74LS00N NAND gates on a breadboard. The circuit was tested using different input combinations and verified against its expected truth table.

[View Lab 2 Documentation](https://github.com/DiezelBrown/Digital-Logic-Labs/blob/main/Lab-02-NAND-Majority-Circuit/README.md)

### Lab 3 - NAND-Gate Ring Oscillator

Designed and constructed a three-stage NAND-gate ring oscillator using a 74LS00 NAND IC. The circuit was implemented on a breadboard and tested using a Digilent Analog Discovery 2 and WaveForms oscilloscope software.

The lab explored propagation delay, feedback, oscillation, and waveform analysis in physical digital logic hardware.

[View Lab 3 Documentation](https://github.com/DiezelBrown/Digital-Logic-Labs/blob/main/Lab-03-NAND-Ring-Oscillator/README.md)

### Lab 4 - Full Adder and Verilog HDL

Designed, constructed, and verified a 1-bit full adder using XOR and NAND logic.

The full adder was first analyzed using a truth table and Karnaugh maps, then implemented on a breadboard and tested using LEDs to verify the `Sum` and `Cout` outputs.

The same optimized circuit was implemented using structural Verilog and verified with a testbench covering all eight possible input combinations. Simulation results were analyzed using the Surfer waveform viewer.

[View Lab 4 Documentation](https://github.com/DiezelBrown/Digital-Logic-Labs/blob/main/Lab-04-Full-Adder-Verilog/README.md)

## Tools & Hardware

- Breadboards
- 74LS-series logic ICs
- XOR and NAND logic gates
- LEDs and current-limiting resistors
- Digital logic trainer
- Digilent Analog Discovery 2
- WaveForms
- Tinkercad Circuits
- Verilog HDL
- Icarus Verilog
- GTKWave / Surfer
- VS Code

## Repository Goals

This repository documents my progression from Boolean logic and basic gate-level circuits to more advanced combinational and sequential digital systems.

Each lab includes design information, implementation details, testing, simulation, and results when applicable.
