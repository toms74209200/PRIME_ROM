# PRIME_ROM
ROM implementation in FPGA by 4 different method. 

1. VHDL constant declaration
2. VHDL case statement
3. Verilog-HDL case statement
4. Verilog-HDL initial statement

Implementation target device is Cyclone V(5CSEBA6U19C6).

| Method          | Logic utilization | Total registers | Total block memory bits | Total RAM Blocks |
| --------------- | ----------------- | --------------- | ----------------------- | ---------------- |
| VHDL constant   | 224               | 13              | 0                       | 0                |
| VHDL case       | 1,112             | 13              | 0                       | 0                |
| Verilog case    | 1,112             | 13              | 0                       | 0                |
| Verilog initial | 1                 | 0               | 19,648                  | 4                |

## License

MIT License

## Author

[toms74209200](<https://github.com/toms74209200>)