program soal2pasword;
uses crt;

const
  PASSWORD_RAHASIA = 'farrelkece'; 

var
  inputPassword: string;
  kesempatan: integer;

begin
    clrscr;
    kesempatan := 0;
    
    writeln('=== SISTEM LOGIN TOKO BUKU ===');
    
    repeat
      kesempatan := kesempatan + 1;
      write('Masukkan kata sandi (Percobaan ', kesempatan, '/3): ');
      readln(inputPassword);
      
      if (inputPassword = PASSWORD_RAHASIA) then
      begin
        writeln;
        writeln('Login Berhasil! Selamat Datang.');
        break;
      end;
      
      if (kesempatan < 3) then
        writeln('Kata sandi salah! Silakan coba lagi.', sLineBreak);

    until (kesempatan = 3);
    
    if (inputPassword <> PASSWORD_RAHASIA) and (kesempatan = 3) then
    begin
      writeln;
      writeln('Akses Ditolak! Akun Terkunci.');
    end;
    
    readln;
end.
