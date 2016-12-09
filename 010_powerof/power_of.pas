{ Judul }
program power_of;

{ Kamus Global }
var
  a, b: integer;
  hasil: int64;

{ Input }
procedure isi(var a, b: integer);
begin
  write('Masukkan nilai a: ');
  readln(a);
  write('Masukkan nilai b: ');
  readln(b);
end;

{ Process }
function hitung(a, b: integer): int64;
begin
  if (a = 0) or (b < 0) then
    write('You cannot')
  else begin
    if (b = 0) then begin
      hitung := 1;
      writeln;
    end else begin
      write(a);
      if (b > 1) then
        write(' * ');
      hitung := a * hitung(a, b - 1);    
    end;
  end;
end;

{ Output }
procedure tampil(hasil: int64);
begin
  writeln('Hasil a^b: ', hasil);
end;

begin
  isi(a, b); // input
  hasil := hitung(a, b); // hitung
  tampil(hasil); // output
end.