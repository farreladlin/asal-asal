program soal9jumlahhari;
uses crt;
var
    tahun, bulan, jumlahHari: integer;
    isKabisat: boolean;

begin
    clrscr;
    write('Masukkan Tahun: ');
    readln(tahun);
    write('Masukkan Nomor Bulan (1-12): ');
    readln(bulan);

    isKabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

    case bulan of
        1, 3, 5, 7, 8, 10, 12: jumlahHari := 31;
        4, 6, 9, 11: jumlahHari := 30;
        2: if isKabisat then
                jumlahHari := 29
            else
                jumlahHari := 28;
        else begin
            writeln('Nomor bulan tidak valid.');
            exit;
        end;
    end;

    writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah: ', jumlahHari);
end.