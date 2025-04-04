# FullAdderVerilog
A structural Verilog implementation of a Full Adder circuit with a testbench for simulation.

## Overview
This repository contains a Verilog module for a Full Adder, which takes three 1-bit inputs (`a`, `b`, and `cin`) and produces a sum (`s`) and carry-out (`c`) output. The implementation uses basic logic gates (XOR, AND, OR) in a structural style. The testbench (`testbench.v`) verifies the functionality by testing all input combinations.

## Files
- `design.v`: The Full Adder module.
- `testbench.v`: Testbench to simulate the Full Adder.

## Simulation
The code can be simulated on [EDA Playground](https://www.edaplayground.com). Select Icarus Verilog as the simulator and run the testbench to see the results.

## Usage
1. Copy `design.v` and `testbench.v` into EDA Playground.
2. Select Icarus Verilog as the simulator.
3. Run the simulation to verify the Full Adder's functionality.
