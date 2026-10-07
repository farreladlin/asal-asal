program soal8gajikaryawan;
uses crt;
var
    golongan: char;
    jamKerja: integer;
    gajiPokok, lembur, bonus, totalGaji: real;

begin
clrscr;
    write('Masukkan Golongan Karyawan (A/B/C): ');
    readln(golongan);
    write('Masukkan Total Jam Kerja (jam): ');
    readln(jamKerja);

    case upcase(golongan) of
        'A': gajiPokok := 1500000;
        'B': gajiPokok := 2000000;
        'C': gajiPokok := 2500000;
        else begin
            writeln('Golongan tidak valid.');
            exit;
        end;
    end;

    if jamKerja > 40 then
        lembur := (jamKerja - 40) * 20000
    else
        lembur := 0;

    if (upcase(golongan) = 'C') and (jamKerja > 50) then
        bonus := 100000
    else
        bonus := 0;

    totalGaji := gajiPokok + lembur + bonus;

    writeln;
    writeln('Rincian Gaji Karyawan:');
    writeln('Golongan: ', upcase(golongan));
    writeln('Gaji Pokok: Rp', gajiPokok:0:2);
    writeln('Lembur: Rp', lembur:0:2);
    writeln('Bonus: Rp', bonus:0:2);
    writeln('Total Gaji Akhir: Rp', totalGaji:0:2);
end.