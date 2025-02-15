module lab2(output y,output x,
            input a,b,c
            );
     assign x=(~c)^(a|b);
     assign y=(a|b)&((~(a&b)^(a|b)));
     


endmodule