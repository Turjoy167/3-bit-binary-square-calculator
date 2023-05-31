module ckt(A,B,C,F0,F1,F2,F3,F4,F5);

      input A,B,C;
      output reg F0,F1,F2,F3,F4,F5;
      
      always @(A,B,C)
      
      begin
          case({A,B,C})
			  3'b001:F0=1;
			 
			  3'b011:F0=1;
			  
			  3'b101:F0=1;
			  
			  3'b111:F0=1;
			  
              default:F0=0;    
          endcase
          case({A,B,C})
			  3'b001:F1=0;
              default:F1=0;    
          endcase
          case({A,B,C})
			  3'b010:F2=1;
			  3'b110:F2=1;
              default:F2=0; 
          endcase
          case({A,B,C})
			  3'b011:F3=1;
			  3'b101:F3=1;
              default:F3=0;   
          endcase
          case({A,B,C}) 
			  3'b100:F4=1;
			  3'b101:F4=1;
			  3'b111:F4=1;
              default:F4=0; 
          endcase
          case({A,B,C})
			  3'b110:F5=1;
			  3'b111:F5=1;
              default:F5=0;    
          endcase
      end
endmodule 