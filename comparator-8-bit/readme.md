 8-bit Comparator using Verilog

 Description

This project implements an 8-bit magnitude comparator using Verilog HDL.

The comparator compares two 8-bit binary numbers, A and B, and produces three outputs:

- `A_greater_B` - HIGH when A is greater than B
- `A_equal_B` - HIGH when A is equal to B
- `A_less_B` - HIGH when A is less than B
 Files

- `comparator_8bit.v` - Verilog design code
- `comparator_8bit_tb.v` - Verilog testbench
- `README.md` - Project documentation

Truth Table

| Condition | A_greater_B | A_equal_B | A_less_B |
|-----------|-------------|-----------|----------|
| A > B     | 1           | 0         | 0        |
| A = B     | 0           | 1         | 0        |
| A < B     | 0           | 0         | 1        |

