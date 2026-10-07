program soal5nilaimahasiswa;
uses crt;
var
    M, N: integer;
    i, j: integer;
    nilai: array of array of real;
    rataRata: real;
    totalLulus, totalTidakLulus: integer;

begin
clrscr;
    write('Masukkan jumlah mahasiswa (M): ');
    readln(M);
    write('Masukkan jumlah tugas (N): ');
    readln(N);

    SetLength(nilai, M, N);
    totalLulus := 0;
    totalTidakLulus := 0;

    for i := 0 to M - 1 do
    begin
        writeln('Masukkan nilai untuk Mahasiswa ', i + 1, ':');
        for j := 0 to N - 1 do
        begin
            write('Nilai Tugas ', j + 1, ': ');
            readln(nilai[i][j]);
        end;
    end;

    writeln;
    for i := 0 to M - 1 do
    begin
        rataRata := 0;
        for j := 0 to N - 1 do
        begin
            rataRata := rataRata + nilai[i][j];
        end;
        rataRata := rataRata / N;

        writeln('Rata-rata Mahasiswa ', i + 1, ': ', rataRata:0:2);
        if rataRata >= 65 then
        begin
            writeln('Status: LULUS');
            totalLulus := totalLulus + 1;
        end
        else
        begin
            writeln('Status: TIDAK LULUS');
            totalTidakLulus := totalTidakLulus + 1;
        end;
        writeln;
    end;

    writeln('Total Mahasiswa LULUS: ', totalLulus);
    writeln('Total Mahasiswa TIDAK LULUS: ', totalTidakLulus);

end.