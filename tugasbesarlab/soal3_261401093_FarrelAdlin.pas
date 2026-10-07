program soal3DeretAngka;
uses crt;

var
  n, pilihan, i: integer;

begin
  clrscr;
 
  writeln('=== PROGRAM FILTER DERET ANGKA ===');
  write('Masukkan nilai maksimal (N): ');
  readln(n);
  
  writeln('Pilih Kategori Deret:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Masukkan pilihan (1/2): ');
  readln(pilihan);
  
  writeln('-----------------------------------');
  write('Hasil Deret Angka: ');
  
  i := 0;
  while (i < n) do
  begin
    i := i + 1; 
    
    if (pilihan = 1) and (i mod 2 = 0) then
      continue; 
      
    if (pilihan = 2) and (i mod 2 <> 0) then
      continue; 
      
    if (i mod 5 = 0) then
      continue;
      
    write(i, ' ');
  end;
  
  writeln;
  writeln('-----------------------------------');
  readln;
end.
