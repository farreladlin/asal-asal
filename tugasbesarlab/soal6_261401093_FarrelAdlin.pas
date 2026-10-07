program soal6nilairerata;
uses crt;
var
    nilaiTugas, nilaiUTS, nilaiUAS, kehadiran, nilaiAkhir: real;
    statusLulus: string;
    indeksHuruf: char;

begin
    clrscr;
    write('Masukkan Nilai Tugas (0-100): ');
    readln(nilaiTugas);
    write('Masukkan Nilai UTS (0-100): ');
    readln(nilaiUTS);
    write('Masukkan Nilai UAS (0-100): ');
    readln(nilaiUAS);
    write('Masukkan Kehadiran (%) (0-100): ');
    readln(kehadiran);

    nilaiAkhir := (nilaiTugas * 0.3) + (nilaiUTS * 0.3) + (nilaiUAS * 0.4);

    if (nilaiAkhir >= 60) and (kehadiran >= 80) then
        statusLulus := 'LULUS'
    else
        statusLulus := 'TIDAK LULUS';

    if nilaiAkhir >= 85 then
        indeksHuruf := 'A'
    else if nilaiAkhir >= 75 then
        indeksHuruf := 'B'
    else if nilaiAkhir >= 60 then
        indeksHuruf := 'C'
    else if nilaiAkhir >= 50 then
        indeksHuruf := 'D'
    else
        indeksHuruf := 'E';

    writeln;
    writeln('Nilai Akhir: ', nilaiAkhir:0:2);
    writeln('Status: ', statusLulus);
    writeln('Indeks Huruf: ', indeksHuruf);

end.