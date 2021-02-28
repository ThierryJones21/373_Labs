T0: begin//see if you need to de-assertthese signals
    PCout<= 1; MARin <= 1; IncPC <= 1; Zin <= 1;
end
T1: begin
    Zlowout<= 1; PCin <= 1; Read <= 1; MDRin <= 1;
    Mdatain <= 32'h4A920000; //opcode for AND R5, R2, R4
end
T2: begin
    MDRout<= 1; IRin <= 1;
end
T3: begin
    R2out<= 1; 
    // Not
    CONTROL <= 5; 
    Zin <= 1;
end
T4: begin
    Zlowout<= 1; R5in <= 1;
end