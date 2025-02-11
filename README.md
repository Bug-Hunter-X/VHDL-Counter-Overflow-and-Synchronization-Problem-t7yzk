# VHDL Counter Bug

This repository demonstrates a potential bug in a simple VHDL counter. The counter is designed to increment from 0 to 15 and then reset.  The issue lies in how the reset signal interacts with the clock's rising edge and potential race conditions.

## Bug Description

The `bug.vhdl` file contains the buggy code.  There is a risk of incorrect counting due to synchronization issues between the reset signal and the clock.  Under certain clocking conditions, the reset might not be properly captured, leading to unpredictable counter behavior.

## Solution

The `bugSolution.vhdl` file provides a corrected version of the counter, addressing the synchronization problem. The solution includes proper synchronization to eliminate race conditions and ensure reliable counter operation.

## How to Reproduce

1.  Synthesize and simulate the code in `bug.vhdl` using a VHDL simulator (e.g., ModelSim, GHDL).  Observe the unexpected behavior under different clock and reset scenarios.
2.  Repeat step 1 with the `bugSolution.vhdl` to see the fixed counter behavior.
