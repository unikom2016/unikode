program fibonacci;

var
  n, hasil: integer;

  procedure isi(var n: integer);
  begin
    write('Masukkan suke ke berapa: ');
    readln(n);
  end;

  function fib(n: integer): integer;
  begin
    if (n = 0) or (n = 1) then
      fib := n
    else
      fib := fib(n - 1) + fib(n - 2);
  end;

  procedure tampil(hasil: integer);
  begin
    writeln('Hasil dari suku ke-', n, ' yaitu: ', hasil);
  end;

begin
  isi(n); // input
  hasil := fib(n); // process
  tampil(hasil); // output
end.