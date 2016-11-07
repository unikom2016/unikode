program matriks;

var
    n, angka, i, j: integer;

begin
    for i := 1 to 3 do
    begin
        for j := 1 to 4 do
        begin
            write('(', i, ',', j, ')');
            if j <> 4 then
              write(', ');
        end;
        writeln;
    end;

    { Triangle }
    read(n);
    angka := 0;
    for i := 1 to n do
    begin
        for j := 1 to i do
        begin
            angka := angka + 1;
            write(angka);
            if j <> i then
                write(' ');
        end;
        writeln;
    end;

    for i := 1 to n do
    begin
        for j := i to n - 1 do
        begin
            angka := angka + 1;
            write(angka);
            if j <> n - 1 then
                write(' ');
        end;
        writeln;
    end; 
end.