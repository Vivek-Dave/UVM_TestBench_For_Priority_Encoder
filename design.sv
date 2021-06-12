module p_encoder(in,out);
    input  [7:0]  in;
    output reg [2:0] out;

    always @(in) begin
        if(in[0])      out=0;
        else if(in[1]) out=1;
        else if(in[2]) out=2;
        else if(in[3]) out=3;
        else if(in[4]) out=4;
        else if(in[5]) out=5;
        else if(in[6]) out=6;
        else           out=7;
    end

endmodule