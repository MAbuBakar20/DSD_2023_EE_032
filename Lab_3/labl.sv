module labl (
    output sum, carry,
    input a, b, c
);

    assign sum = (a ^ b) ^ c;  // Sum calculation
    assign carry = (a & b) | (c & (a ^ b));  // Carry calculation

endmodule
