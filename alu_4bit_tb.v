
module alu_4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] opcode;

    wire [3:0] result;
    wire carry;
    wire zero;
    wire overflow;
    wire negative;

    // Instantiate ALU
    alu_4bit uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .carry(carry),
        .overflow(overflow),
        .zero(zero),
        .negative(negative)
    );

    initial
    begin

        // Input values
        A = 4'b0110;   // 6
        B = 4'b0011;   // 3

        $display("Starting ALU Simulation");

        // Addition
        opcode = 3'b000;
        #20;

        // Subtraction
        opcode = 3'b001;
        #20;

        // AND
        opcode = 3'b010;
        #20;

        // OR
        opcode = 3'b011;
        #20;

        // XOR
        opcode = 3'b100;
        #20;

        // NOT
        opcode = 3'b101;
        #20;

        // Shift Left
        opcode = 3'b110;
        #20;

        // Shift Right
        opcode = 3'b111;
        #20;

        $display("Simulation Completed");

        $finish;

    end

endmodule
