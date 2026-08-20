`timescale 1ns / 1ps

module tb_serial_transfer();

    reg clk;
    reg shift_control;
    reg rst;
    wire so_b;

    serial_transfer uut (
        .clk(clk),
        .shift_control(shift_control),
        .rst(rst),
        .so_b(so_b)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("serial_transfer.vcd"); 
        $dumpvars(0, tb_serial_transfer); 
 
        clk = 0;
        shift_control = 0;
        rst = 1;

        $display("Time | rst | shift | reg_A | reg_B | so_b");
        $display("-------------------------------------------");
        
        $monitor("%4t |  %b  |   %b   |  %b |  %b |  %b", 
                 $time, rst, shift_control, uut.reg_A, uut.reg_B, so_b);

        #15 rst = 0;

        #10 shift_control = 1;

        #40 shift_control = 0;

        #20 $finish;
    end

endmodule
