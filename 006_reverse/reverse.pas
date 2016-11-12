program reverse;

var
    i, j: integer;

begin
    for i := 7 downto 1 do
    begin
        for j := 0 to i - 1 do
        begin
            write(i - j);
            if j <> i then
                write(' ');
        end;
        writeln;
    end;
end.