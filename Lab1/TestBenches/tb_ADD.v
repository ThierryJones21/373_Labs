T0: begin//see if you need to de-assertthese signals
    #10 PCout<= 1; MARin <= 1; IncPC <= 1; Zlowin <= 1;
end
T1: begin
    #10 Zlowout<= 1; PCin <= 1; Read <= 1; MDRin <= 1; Mdatain <= 32'h1A920000; //opcode for ADD R5, R2, R4 0001 1 010 1 001 0 010 0000 0000 0000 0000 
end
T2: begin
    #10 MDRout<= 1; IRin <= 1;
end
T3: begin
    #10 R2out<= 1; Yin <= 1;
end
T4: begin
    // add
    #10 R4out<= 1; CONTROL <= 2; Zlowin <= 1;
end
T5: begin
    #10 Zlowout<= 1; R5in <= 1;
end
