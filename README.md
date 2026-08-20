# Serial Register Transfer

Verilog-based hardware design implementing a 4-bit serial data transfer mechanism between two registers (Register A and Register B).

## Overview

This project models synchronous serial data movement using Verilog HDL. It features two 4-bit registers initialized upon reset, allowing data shifting controlled by an external shift signal.

## Repository Structure

* [design.sv](design.sv): Contains the core hardware implementation of the `serial_transfer` module.
* `testbench.sv`: Provides the testbench stimuli to drive clock, reset, and control signals for functional verification.
* `waveform_result.pdf`: Contains the simulation waveform and output verification results.

## Module Details

* **Inputs:**
  * `clk`: System clock signal.
  * `rst`: Synchronous/asynchronous reset signal (initializes Register A to `4'b1011` and Register B to `4'b0010`).
  * `shift_control`: Control signal enabling the shift operation.
* **Outputs:**
  * `so_b`: Serial output derived from Register B.

## Verification

The design can be functionally verified using the provided testbench. The expected simulation outputs, signal transitions, and behavior can be inspected via the [waveform_result.pdf](waveform_result.pdf) document included in this repository.
