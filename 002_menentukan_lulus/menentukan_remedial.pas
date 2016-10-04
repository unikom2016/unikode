program menentukan_remedial;

uses
  crt;

var
  nama, keterangan : string;
  mtk, indo, ing, ipa, standar : integer;
begin
  write('Masukkan Nama         : ');readln(nama);
  write('Nilai Matematika      : ');readln(mtk);
  write('Nilai Bhs. Indonesia  : ');readln(indo);
  write('Nilai Bhs. Inggris    : ');readln(ing);
  write('Nilai IPA             : ');readln(ipa);
  write('Standar Kelulusan     : ');readln(standar);
    keterangan := 'Selamat Anda Lulus Semua Mata Pelajaran';
    if (mtk < standar) and (indo < standar) and (ing < standar) and (ipa < standar) then
      begin
        keterangan := 'Tidak Lulus Semua ';
      end
      else
        if (mtk < standar) and (indo < standar) and (ing < standar) then
          begin
            keterangan := '1. Matematika 2. Bhs. Indonesia 3. Bhs Inggris';
          end
          else
            if (mtk < standar) and (indo < standar) and (ipa < standar) then
              begin
                keterangan := '1. Matematika 2. Bhs. Indonesia 3. IPA';
              end
              else
                if (mtk < standar)  and (ing < standar) and (ipa < standar) then
                  begin
                    keterangan := '1. Matematika 2. Bhs Inggris 3. IPA';
                  end
                  else
                    if (mtk < standar)  and (indo < standar) then
                      begin
                        keterangan := '1. Matematika 2. Bhs. Indonesia';
                      end
                      else
                        if (mtk < standar)  and (ing < standar) then
                          begin
                            keterangan := '1. Matematika 2. Bhs Inggris';
                          end
                          else
                            if (mtk < standar)  and (ipa < standar) then
                              begin
                                keterangan := '1. Matematika 2. IPA';
                              end
                              else
                                if (indo < standar) and (ing < standar) and (ipa < standar) then
                                  begin
                                    keterangan := '1. Bhs. Indonesia 2. Bhs. Inggris 3. IPA';
                                  end
                                  else
                                    if (indo < standar) and (ing < standar) then
                                      begin
                                        keterangan := '1. Bhs. Indonesia 2. Bhs. Inggris';
                                      end
                                      else
                                        if (indo < standar) and (ipa < standar) then
                                          begin
                                            keterangan := '1. Bhs. Indonesia 2. IPA';
                                          end
                                          else
                                            if (ing < standar) and (ipa < standar) then
                                              begin
                                                keterangan := '1. Bhs. Inggris 2. IPA';
                                              end
                                              else
                                                if (mtk < standar)  then
                                                  begin
                                                    keterangan := '1. Matematika';
                                                  end
                                                  else
                                                    if (indo < standar)  then
                                                      begin
                                                        keterangan := '1. Bhs. Indonesia';
                                                      end
                                                      else
                                                        if (ing < standar)  then
                                                          begin
                                                            keterangan := '1. Bhs. Inggris';
                                                          end
                                                          else
                                                            if (ipa < standar)  then
                                                              begin
                                                                keterangan := '1. IPA';
                                                              end;


  writeln(nama, ' Tidak Lulus Dalam Mata Pelajaran : ');
  writeln(keterangan);
  readln;
end.
