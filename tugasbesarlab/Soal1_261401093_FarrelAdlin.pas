program soal1belanjabuku;
uses crt;

var
    n, i: integer;
    harga, totalSebelumDiskon, besarDiskon, totalBayar: real;

begin
    clrscr;
    
    write('Masukkan jumlah barang yang dibeli : ');
    readln(n);
    
    totalSebelumDiskon := 0;
    for i := 1 to n do
    begin
        write('Masukkan harga barang ke-', i, ': Rp');
        readln(harga);
        totalSebelumDiskon := totalSebelumDiskon + harga;
    end;
    
    if (totalSebelumDiskon < 100000) then
        besarDiskon := 0 * totalSebelumDiskon
    else if (totalSebelumDiskon >= 100000) and (totalSebelumDiskon < 500000) then
        besarDiskon := 0.10 * totalSebelumDiskon
    else
        besarDiskon := 0.20 * totalSebelumDiskon;
        
    totalBayar := totalSebelumDiskon - besarDiskon;
    
    writeln('             RINCIAN BELANJA               ');
    writeln('-------------------------------------------');
    writeln('Total Sebelum Diskon : Rp', totalSebelumDiskon:10:2);
    writeln('Besar Diskon         : Rp', besarDiskon:10:2);
    writeln('-------------------------------------------');
    writeln('Total Bayar Akhir    : Rp', totalBayar:10:2);
    writeln('-------------------------------------------');
    
    readln;
end.
