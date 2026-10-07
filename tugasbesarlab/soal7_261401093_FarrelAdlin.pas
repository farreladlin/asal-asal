program soal7biayaparkir;
uses crt;
var
    kodeKendaraan: char;
    lamaParkir: integer;
    tarif: real;

begin
    clrscr;
    write('Masukkan Kode Kendaraan (M/K/B): ');
    readln(kodeKendaraan);
    write('Masukkan Lama Parkir (jam): ');
    readln(lamaParkir);

    case upcase(kodeKendaraan) of
        'M': begin
            if lamaParkir <= 1 then
                tarif := 5000
            else if lamaParkir > 10 then
                tarif := 30000
            else
                tarif := 5000 + (lamaParkir - 1) * 3000;
        end;
        'K': begin
            if lamaParkir <= 1 then
                tarif := 2000
            else if lamaParkir > 10 then
                tarif := 10000
            else
                tarif := 2000 + (lamaParkir - 1) * 1000;
        end;
        'B': begin
            if lamaParkir <= 1 then
                tarif := 10000
            else if lamaParkir > 10 then
                tarif := 50000
            else
                tarif := 10000 + (lamaParkir - 1) * 5000;
        end;
        else begin
            writeln('Kode kendaraan tidak valid.');
            exit; 
        end;
    end;

    writeln('Tarif Parkir: Rp', tarif:0:2);
end.