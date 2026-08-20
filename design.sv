module serial_transfer (
    input wire clk,
    input wire shift_control,
    input wire rst,          
    output wire so_b         
);

    reg [3:0] reg_A;
    reg [3:0] reg_B;

    wire so_a;
    wire si_a;
    wire si_b;

    assign so_a = reg_A[0];
    assign so_b = reg_B[0];
    
    assign si_a = so_a;      
    assign si_b = so_a;     

    always @(posedge clk) begin
        if (rst) begin
            reg_A <= 4'b1011; 
            reg_B <= 4'b0010;
        end 
        else if (shift_control) begin
            reg_A <= {si_a, reg_A[3:1]};
            reg_B <= {si_b, reg_B[3:1]};
        end
    end

endmodule
