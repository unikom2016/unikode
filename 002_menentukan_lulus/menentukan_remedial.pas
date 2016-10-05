program menentukan_remedial;

uses
  crt;

var
  nama, keterangan                 : string;
  mtk, indo, ing, ipa, standar     : real;
  i                                : integer; // index

begin

  { Data Input }
  write('Masukkan Nama         : ');readln(nama);
  write('Nilai Matematika      : ');readln(mtk);
  write('Nilai Bhs. Indonesia  : ');readln(indo);
  write('Nilai Bhs. Inggris    : ');readln(ing);
  write('Nilai IPA             : ');readln(ipa);
  write('Standar Kelulusan     : ');readln(standar);
  
  { Process }
  if ((mtk < standar) and (indo < standar) and (ing < standar) and (ipa < standar)) then
    // Directly output the failure message
    begin
      keterangan := 'maaf kamu tidak lulus';
      writeln(nama, ', ', keterangan);
    end
  else if ((mtk >= standar) and (indo >= standar) and (ing >= standar) and (ipa >= standar)) then
    // Directly output the success message
    begin
      keterangan := 'selamat kamu lulus semua mata pelajaran';
      writeln(nama, ', ', keterangan);
    end
  else
    // Check for each subject
    // And add index for each failure subject
    begin
    keterangan := 'berikut mata pelajaran yang perlu kamu remedial: ';
    writeln(nama, ', ', keterangan);

    i := 0; // index
      if (mtk < standar) then
        begin
          i += 1;
          writeln(i, '. Matematika');
        end;
      if (indo < standar) then
        begin
          i += 1;
          writeln(i, '. Bahasa Indonesia');
        end;
      if (ipa < standar) then
        begin
          i += 1;
          writeln(i, '. IPA');
        end;
      if (ing < standar) then
        begin
          i += 1;
          writeln(i, '. Bahasa Inggris');
        end;
    end; // End of each subject grading

  readln;

end.