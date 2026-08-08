# 1-Bit Comparator using Verilog

## Description

A **1-Bit Comparator** is a combinational circuit that compares two single-bit binary inputs and determines whether:

* A is greater than B
* A is equal to B
* A is less than B

### Inputs

* `A` – First input
* `B` – Second input

### Outputs

* `A_greater_B` – A is greater than B
* `A_equal_B` – A is equal to B
* `A_less_B` – A is less than B

## Truth Table

| A | B | A > B | A = B | A < B |
| - | - | ----- | ----- | ----- |
| 0 | 0 | 0     | 1     | 0     |
| 0 | 1 | 0     | 0     | 1     |
| 1 | 0 | 1     | 0     | 0     |
| 1 | 1 | 0     | 1     | 0     |

## Project Files

* `comparator.v` – 1-Bit Comparator design
* `comparator_tb.v` – Testbench
* `README.md` – Project documentation
* `output.txt` – Sample simulation output

## Requirements

* Visual Studio Code
* Icarus Verilog
* GTKWave (optional)

## Compile

```bash
iverilog -o comparator_sim comparator.v comparator_tb.v
```

## Run

```bash
vvp comparator_sim
```

## Expected Output

The simulation tests all possible combinations of A and B and displays the comparison results.

```text
Time = 0  | A = 0 | B = 0 | A>B = 0 | A=B = 1 | A<B = 0
Time = 10 | A = 0 | B = 1 | A>B = 0 | A=B = 0 | A<B = 1
Time = 20 | A = 1 | B = 0 | A>B = 1 | A=B = 0 | A<B = 0
Time = 30 | A = 1 | B = 1 | A>B = 0 | A=B = 1 | A<B = 0
```

## Working Principle

The comparator produces three outputs:

```text
A > B → A_greater_B = 1
A = B → A_equal_B   = 1
A < B → A_less_B    = 1
```

Only one output is HIGH for each valid input combination.

## Author

1-Bit Comparator using Verilog HDL.
