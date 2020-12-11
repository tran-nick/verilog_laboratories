# Lab F: Latches, Flip-Flops, and Registers
Flip-flops are a fundamental way of storing information and the basic building blocks for a sequential circuit. In the first part of the laboratory, how to model a gated RS latch in Verilog will be explored. However, to better observethe internal functionalityof a latch,the compiler directive “(*keep=“true”*)” is used to expose all signals between the inputs and outputs.In the second and third parts of the experiment, how to model a gated D latch and implement it into a master-slave configuration will be explored. The design will be downloaded onto the target NexysA7 FPGA board to physically verify the board LED output matches simulated clock and D inputs using switches. Lastly, building upon the level-triggered gated D latch from part 2, positive edge and negative edge triggered, gated D latches will be implemented to builda 3 storage element circuit. Using the timing diagram Figure 7b from the lab manual, the clock and D input signals will be replicated in simulationto verify the output from 3 storageelement circuit matches expected behavior.