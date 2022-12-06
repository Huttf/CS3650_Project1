`include "mips_16.v"
`include "JR_Control.v"
`include "control.v"
`include "ALUControl.v"
`include "data_memory.v"
`include "alu.v"
`include "instr_mem.v"
`include "register_file.v"

module tb_mips16;  
      // Inputs  
      reg clk;  
      reg reset;  
      // Outputs  
      wire [15:0] pc_out;  
      wire [15:0] alu_result;//,reg3,reg4;  
      // Instantiate the Unit Under Test (UUT)  
      mips_16 uut (  
           .clk(clk),   
           .reset(reset),   
           .pc_out(pc_out),   
           .alu_result(alu_result)  
           //.reg3(reg3),  
          // .reg4(reg4)  
      );  
      initial begin  
           clk = 0;  
           forever #10 clk = ~clk;  
      end  
      initial begin  
          $dumpfile("tb_mips16.vcd");
          $dumpvars(0, tb_mips16);

           // Initialize Inputs  
           // $monitor ("register 3=%d, register 4=%d", reg3,reg4);  
           reset = 1;  
           // Wait 100 ns for global reset to finish  
           #100;  
     reset = 0;  
           // Add stimulus here  
      end  
 endmodule 