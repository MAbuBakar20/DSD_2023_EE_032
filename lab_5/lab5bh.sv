module lab5bh (
    input logic a, b, c, d,  
    output logic seg1, seg2, seg3, seg4, seg5, seg6, seg7  
);

    logic [3:0] n;
    assign n = {a, b, c, d}; // Combine inputs into a 4-bit value

    // 7-segment display decoder
    always_comb begin
        case (n)
            4'h0: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0000001;
            4'h1: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b1001111;
            4'h2: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0010010;
            4'h3: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0000110;
            4'h4: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b1001100;
            4'h5: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0100100;
            4'h6: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0100000;
            4'h7: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0001111;
            4'h8: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0000000;
            4'h9: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0000100;
            4'hA: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0001000;
            4'hB: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b1100000;
            4'hC: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0110001;
            4'hD: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b1000010;
            4'hE: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0110000;
            4'hF: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b0111000;

            default: {seg1, seg2, seg3, seg4, seg5, seg6, seg7} = 7'b1111111; 
        endcase
    end

endmodule
