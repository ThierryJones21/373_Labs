module ldi_case_3_TB ();
  
always @(Present_state)// do the required job ineach state
    begin
        case (Present_state) //assert the required signals in each clock cycle
            Default: begin //initialize the signals
                PCout <= 0; Zlowout <= 0; Zhighout <= 0; MDRout<= 0;  //initialize the signals
                MARin <= 0; Zlowin <= 0; Zhighin <= 0;
                PCin <= 0; MDRin <= 0; IRin  <= 0; Yin <= 0;
                IncPC <= 0; Read <= 0; CONTROL <= 0;
                Clear <= 1; Yout <= 0; highin <= 0; lowin <= 0;
                Cout <= 0; outPortIn <= 0; inPortOut <= 0; inPortIn<= 0; con_in <= 0;
                Mdatain <= 32'h00000000; highout <= 0; lowout <= 0;
                BAout <= 0; Rin <= 0; Rout <= 0; Gra <= 0; Grb <= 0; Grc <= 0; ram_enable <= 0;
                R15_enable <= 0; PC_enable <= 0;
            end
            
    case (Present_state) //assert the required signals in each clock cycle
            
        T0: begin 
            #10 PCout <= 1; MARin <= 1; IncPC <= 1; Zlowin<= 1;  //initialize the signals         
            #15 PCout <= 0; MARin <= 0; IncPC <= 0; Zlowin<= 0;
        end
        T1: begin
            #10 Zlowout<= 1; PCin <= 1; Read <= 1; MDRin <= 1; Mdatain <= 32'h08800085; //Reading from RAM 0000101000000xxxxxxxxxxxxxxxxxx
            #15 Zlowout<= 0; PCin <= 0; Read <= 0; MDRin <= 0;
        end
        T2: begin
            #10 MDRout<= 1; IRin <= 1;
            #15 MDRout<= 0; IRin <= 0;
        end
        T3: begin
            #10 Grb <= 1; BAout<= 1; Yin <= 1;
            #15 Grb <= 0; BAout<= 0; Yin <= 0;
        end
        T4: begin
            #10 Cout<= 1; Mdatain <= 32'h08800085; Zlowin <= 1;
            #15 Cout<= 0;  Zlowin <= 0;
        end
        T5: begin
            #10 Zlowout<= 1; Gra <= 1; Rin <= 1;
            #15 Zlowout<= 0; Gra <= 0; Rin <= 0;
        end
    endcase
end

endmodule 
