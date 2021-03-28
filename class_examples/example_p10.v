module Example(output wire F, 
               input wire A,B,C);
  
  wire An;
  
  assign An =!A;
  assign F = (An&&B)||C;
  
endmodule