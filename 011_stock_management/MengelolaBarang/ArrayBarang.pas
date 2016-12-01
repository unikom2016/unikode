program ArrayBarang;
uses
    crt, sysutils;
const
     maksbrg = 3;
type
    Larik1 = array[1..maksbrg] of string;
    larik2 = array[1..maksbrg] of integer;
var
  // stokBrg: larik;
   kode,namabrg,status : larik1;
   harga,stok          : larik2;
   empty: string;

function isEmpty(kd: string): boolean;
begin
  isEmpty := false;
  if (kd = '') then
    isEmpty := true;
end;

function isInvalid(kd: string): boolean;
var len01, len02, len03: integer;
begin
  len01 := comparetext(kd, 'brg01');
  len02 := comparetext(kd, 'brg02');
  len03 := comparetext(kd, 'brg03');
  if (len01 <> 0) and (len02 <> 0) and (len03 <> 0) then
    isInvalid := true
  else
    isInvalid := false;
end;

function  konversinamabrg(kode:string) : string;
{I.S                    }
{F.S                    }
begin
     if ( kode='BRG01' ) or ( kode='brg01' ) or ( kode='Brg01' ) then begin
            konversinamabrg := 'Pakaian';
     end else if  ( kode='BRG02' ) or ( kode='brg02' ) or ( kode='Brg02' ) then begin
        konversinamabrg := 'Sepatu';
     end else if ( kode='BRG03' ) or ( kode='brg03' ) or ( kode='Brg03' ) then begin
        konversinamabrg := 'Tas';
     end;

end;//endfunction

function konversiharga(kode:string): integer;
{I.S                     }
{F.S                     }
begin
    if ( kode='BRG01' ) or ( kode='brg01' ) or ( kode='Brg01' ) then begin
        konversiharga := 67500;
    end else if ( kode='BRG02' ) or ( kode='brg02' ) or ( kode='Brg02' ) then begin
        konversiharga := 118000;
    end else if ( kode='BRG03' ) or ( kode='brg03' ) or ( kode='Brg03' ) then begin
        konversiharga := 72500;
    end;
end;//endfungction

 function konversistatus(stok:integer): string;
 {I.S          }
 {F.S          }
 begin
      if ( stok >= 20 ) then
      begin
          konversistatus := 'Aman';
      end
      else
          begin
             konversistatus:= 'Tidak Aman';
          end;

 end;//endfunction


procedure tampildata ();
var
   i : integer;
begin//mulai procedure
clrscr;
gotoxy(35,2); writeln('STOCK TOKO');
gotoxy(6,3);
writeln('----------------------------------------------------------------------');
gotoxy(6,4);
writeln('| No | Kode Barang | Nama Barang | Harga Satuan | Stock | Status     |');
gotoxy(6,5);
writeln('----------------------------------------------------------------------');
       for i := 1 to maksbrg do
       begin
            gotoxy(6,i+5); writeln('|    |             |             |              |       |            |');
            gotoxy(8,i+5);write(i);
            gotoxy(13,i+5);readln(kode[i]);
            // cek kode yang kosong
            while (isEmpty(kode[i])) do
            begin
                gotoxy(16,i+6); write('Kode Barang Tidak Boleh Kosong!'); readln;//47
                gotoxy(16,i+6);clreol;
                gotoxy(13,i+5);readln(kode[i]);
            end;
            // cek kode yang salah
            while (isInvalid(kode[i])) do
            begin
                gotoxy(16,i+6); write('Kode Barang Salah!'); readln;//47
                gotoxy(16,i+6);clreol;
                gotoxy(13,i+5);readln(kode[i]);
            end;
            namabrg[i]:= konversinamabrg(kode[i]);// Masukan ke array namabrg dengan fungsi konversinamabrg(kode)
            gotoxy(27,i+5);write(namabrg[i]);
            harga[i]:= konversiharga(kode[i]); // Masukan ke array harga dengan fungsi konversiharga(kode)
            gotoxy(41,i+5);write(harga[i]);
            gotoxy(56,i+5);readln(stok[i]);
            status[i]:= konversistatus(stok[i]);// Masukan ke array STATUS dengan fungsi konversistatus(stok)
            gotoxy(64,i+5);write(status[i]);
       end;
gotoxy(6,i+6);
writeln('----------------------------------------------------------------------');

end;//end procedure memasukan




begin // algoritma utama
      tampildata();
    readln;
end.
