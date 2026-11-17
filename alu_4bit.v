
module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] opcode,

    output reg [3:0] result,
    output reg carry,
    output reg overflow,

    output zero,
    output negative
);

reg [4:0] temp;

always @(*)
begin

    // Default values
    result   = 4'b0000;
    carry    = 1'b0;
    overflow = 1'b0;
    temp     = 5'b00000;

    case(opcode)

        // Addition
        3'b000:
        begin
            temp   = A + B;
            result = temp[3:0];
            carry  = temp[4];

            if((A[3] == B[3]) && (result[3] != A[3]))
                overflow = 1'b1;
        end

        // Subtraction
        3'b001:
        begin
            temp   = A - B;
            result = temp[3:0];
            carry  = temp[4];

            if((A[3] != B[3]) && (result[3] != A[3]))
                overflow = 1'b1;
        end

        // AND
        3'b010:
        begin
            result = A & B;
        end

        // OR
        3'b011:
        begin
            result = A | B;
        end

        // XOR
        3'b100:
        begin
            result = A ^ B;
        end

        // NOT
        3'b101:
        begin
            result = ~A;
        end

        // Shift Left
        3'b110:
        begin
            carry  = A[3];
            result = A << 1;
        end

        // Shift Right
        3'b111:
        begin
            carry  = A[0];
            result = A >> 1;
        end

        default:
        begin
            result = 4'b0000;
        end

    endcase

end

// Flags
assign zero     = (result == 4'b0000);
assign negative = result[3];

endmodule
