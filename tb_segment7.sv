 module tb_segment7;

    reg [3:0] bcd;
    wire [0:6] seg;
    integer i;

    // Instanciando o modulo a ser testado
    bcd_7segments inst_test (
        .entrada(bcd), 
        .saida(seg)
    );

//Aplicando as entradas
    initial begin
        for(i = 0;i < 16;i = i+1) //Faz o loop de 0 a 15.
        begin
            bcd = i; 
            #10; //espera 10 ns
        end     
    end
      
endmodule
