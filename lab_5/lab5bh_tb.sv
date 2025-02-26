module lab5bh_tb;
    logic a, b, c, d;
    logic seg1, seg2, seg3, seg4, seg5, seg6, seg7;

localparam period = 10;

lab5bh UUT (

    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .seg1(seg1),
    .seg2(seg2),
    .seg3(seg3),
    .seg4(seg4),
    .seg5(seg5),
    .seg6(seg6),
    .seg7(seg7)

);

initial begin
        
    {a, b, c, d} = 4'h0;      #period;
    {a, b, c, d} = 4'h1;      #period;
    {a, b, c, d} = 4'h2;      #period;
    {a, b, c, d} = 4'h3;      #period;
    {a, b, c, d} = 4'h4;      #period;
    {a, b, c, d} = 4'h5;      #period;
    {a, b, c, d} = 4'h6;      #period;
    {a, b, c, d} = 4'h7;      #period;
    {a, b, c, d} = 4'h8;      #period;
    {a, b, c, d} = 4'h9;      #period;
    {a, b, c, d} = 4'hA;      #period;
    {a, b, c, d} = 4'hB;      #period;
    {a, b, c, d} = 4'hC;      #period;
    {a, b, c, d} = 4'hD;      #period;
    {a, b, c, d} = 4'hE;      #period;
    {a, b, c, d} = 4'hF;      #period;

    $stop;

end

initial begin

        $monitor("Time=%0t | a=%b b=%b c=%b d=%b | Output={%b, %b, %b, %b, %b, %b, %b}", 
                 $time, a, b, c, d, seg1, seg2, seg3, seg4, seg5, seg6, seg7);

end

endmodule
