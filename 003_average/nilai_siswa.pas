program nilai_siswa;

// type
//     sw = record
//         nama: string;
//         a, b, c, d, e: integer; 
//     end;

//     larik_siswa: array of sw;

// var
//     siswa: larik_siswa;
//     lanjut: char;

// procedure isidatasiswa(idx: integer; var siswa: larik_siswa);
// begin
//     writeln('========Data Siswa========');
//     // write('Nama Siswa: '); readln(siswa[idx].nama);
//     write('Siswa ke-', idx);
//     write('Mata Pelajaran 1: '); readln(siswa[idx].a);
//     write('Mata Pelajaran 2: '); readln(siswa[idx].b);
//     write('Mata Pelajaran 3: '); readln(siswa[idx].c);
//     write('Mata Pelajaran 4: '); readln(siswa[idx].d);
//     write('Mata Pelajaran 5: '); readln(siswa[idx].e);
// end;

// function hitungnilairata(siswa: larik_siswa): integer;
// var
//     nilaia, nilaib, nilaic, nilaid, nilaie: integer;
// begin
//     for i := 0 to length(siswa) - 1 do
//     begin
//         nilaia := nilaia + siswa[i].a;
//         nilaib := nilaib + siswa[i].b;
//         nilaic := nilaic + siswa[i].c;
//         nilaid := nilaid + siswa[i].d;
//         nilaie := nilaie + siswa[i].e;
//     end;
// end;
begin
    repeat
        // i := 0;
        // { Output }
        // if (siswa > 1) then
        // begin
        //     for i := 1 to siswa do
        //     begin
        //         writeln('Rapor siswa ', i);
        //         write('Pelajaran 1: ', a); writeln('Rata-rata kelas: ', a div siswa);
        //         write('Pelajaran 2: ', b); writeln('Rata-rata kelas: ', b div siswa);
        //         write('Pelajaran 3: ', c); writeln('Rata-rata kelas: ', c div siswa);
        //         write('Pelajaran 4: ', d); writeln('Rata-rata kelas: ', d div siswa);
        //         write('Pelajaran 5: ', e); writeln('Rata-rata kelas: ', e div siswa);
        //     end;
        // end;

        
    until (lanjut = 'N') or (lanjut = 'n');
end.