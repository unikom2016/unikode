program rapot;

uses crt;

const
	maks = 50;
	matpel = 5;

var
	jumlah_siswa,i,j,nilai: integer;
	nilai_siswa : array[1..maks,1..matpel] of integer; // matriks
  rata_rata : array[1..matpel] of integer;
	
begin	
	write('Jumlah Siswa : '); readln(jumlah_siswa);

	// jumlah_siswa = 2

	for i := 1 to jumlah_siswa do begin // for luar -> baris
    for j := 1 to matpel do begin // for dalam -> kolom
      write('Nilai [', i ,'][', j ,'] : ');readln(nilai);
      nilai_siswa[i,j] := nilai // nilai_siswa[1, 5]
    end;
	end;

	for	i:= 1 to jumlah_siswa do begin
		write('Siswa ',i,' = ');
		for	j:= 1 to matpel do begin
			write(nilai_siswa[i,j],' ');
			rata_rata[j] := nilai_siswa[i - 1,j] + nilai_siswa[i, j];
		end;
		writeln;
	end;

	for	j:= 1 to matpel do begin
		write(rata_rata[j] div jumlah_siswa,' ');
	end;
	readln;
end.
