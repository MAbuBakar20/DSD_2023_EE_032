

module dsd4_tb;  

	logic [1:0] a1;  
	logic [1:0] b1;  
	logic re1;  
	logic gr1;  
	logic bl1;  

dsd4 UUT (  
    .a(a1),
    .b(b1),
    .re(re1),
    .gr(gr1),   
    .bl(bl1)
);

initial begin
    a1 = 2'b00; b1 = 2'b00; #10;
    a1 = 2'b00; b1 = 2'b01; #10;
    a1 = 2'b00; b1 = 2'b10; #10;
    a1 = 2'b00; b1 = 2'b11; #10;
    a1 = 2'b01; b1 = 2'b00; #10;
    a1 = 2'b01; b1 = 2'b01; #10;
    a1 = 2'b01; b1 = 2'b10; #10;
    a1 = 2'b01; b1 = 2'b11; #10;
    a1 = 2'b10; b1 = 2'b00; #10;
    a1 = 2'b10; b1 = 2'b01; #10;
    a1 = 2'b10; b1 = 2'b10; #10;
    a1 = 2'b10; b1 = 2'b11; #10;
    a1 = 2'b11; b1 = 2'b00; #10;
    a1 = 2'b11; b1 = 2'b01; #10;
    a1 = 2'b11; b1 = 2'b10; #10;
    a1 = 2'b11; b1 = 2'b11; #10;
    $stop;
end

initial begin
    $monitor("a0= %d, a1= %d, b0= %d, b1= %d, re= %d, gr= %d, bl= %d", 
              a1[0], a1[1], b1[0], b1[1], re1, gr1, bl1);
end

endmodule
