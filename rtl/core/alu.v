module alu (
    input wire [31:0] operand_a,
    input wire [31:0] operand_b,
    input wire [3:0] alu_op,
    output reg [31:0] result
);

// Start with just basic ADD operation
    parameter ALU_ADD = 4'b0000;


    always @(*) begin
        case (alu_op)
            ALU_ADD: result = operand_a + operand_b;
            default: result = 32'b0;
        endcase
    end

endmodule

