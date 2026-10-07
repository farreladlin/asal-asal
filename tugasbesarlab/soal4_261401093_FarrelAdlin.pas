program soal4;
uses crt;
var
    pilihan: integer;
    angka1, angka2, hasil: real;
    ulang: char;

begin
clrscr;
    repeat
        writeln('Kalkulator Sederhana');
        writeln('1. Penjumlahan');
        writeln('2. Pengurangan');
        writeln('3. Perkalian');
        writeln('4. Pembagian Real');
        writeln('5. DIV & MOD');
        write('Pilih operasi (1-5): ');
        readln(pilihan);

        write('Masukkan angka pertama: ');
        readln(angka1);
        write('Masukkan angka kedua: ');
        readln(angka2);

        case pilihan of
            1: begin
                hasil := angka1 + angka2;
                writeln('Hasil Penjumlahan: ', hasil:0:2);
            end;
            2: begin
                hasil := angka1 - angka2;
                writeln('Hasil Pengurangan: ', hasil:0:2);
            end;
            3: begin
                hasil := angka1 * angka2;
                writeln('Hasil Perkalian: ', hasil:0:2);
            end;
            4: begin
                if angka2 <> 0 then
                begin
                    hasil := angka1 / angka2;
                    writeln('Hasil Pembagian Real: ', hasil:0:2);
                end
                else
                    writeln('Error: Pembagian dengan nol tidak diperbolehkan.');
            end;
            5: begin
                if (angka2 <> 0) and (Trunc(angka1) = angka1) and (Trunc(angka2) = angka2) then
                begin
                    writeln('Hasil DIV: ', Trunc(angka1) div Trunc(angka2));
                    writeln('Hasil MOD: ', Trunc(angka1) mod Trunc(angka2));
                end
                else
                    writeln('Error: DIV & MOD hanya untuk bilangan bulat dan pembagi tidak boleh nol.');
            end;
            else
                writeln('Pilihan tidak valid. Silakan pilih antara 1 hingga 5.');
        end;

        write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
        readln(ulang);
    until (ulang = 'T') or (ulang = 't');
end.