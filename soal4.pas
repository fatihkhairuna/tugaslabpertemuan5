program soal4;

uses crt;


const
  MAX = 5;                          { Batas maksimal jumlah mahasiswa }

var
  tugas : array[1..MAX] of real;    { Menyimpan nilai tugas tiap mahasiswa }
  quis  : array[1..MAX] of real;    { Menyimpan nilai quis tiap mahasiswa }
  uts   : array[1..MAX] of real;    { Menyimpan nilai UTS tiap mahasiswa }
  uas   : array[1..MAX] of real;    { Menyimpan nilai UAS tiap mahasiswa }
  rata  : array[1..MAX] of real;    { Menyimpan nilai rata-rata tiap mahasiswa }
  n, i  : integer;                  { n = jumlah mahasiswa, i = pencacah }


begin
  clrscr;

  { menginput jumlah mahasiswa. repeat...until mengulang input selama jumlah belum valid.}
  repeat
    write('Masukkan jumlah mahasiswa (1-5): ');
    readln(n);

    {jika n di luar 1-5, akan di tampilkan pesan kesalahan dan berhenti jika n sudah valid}
    if (n < 1) or (n > MAX) then
      writeln('Jumlah harus antara 1 sampai 5!');
  until (n >= 1) and (n <= MAX);

  writeln;

  {bagian ii untuk meng input nilai setiap mahasiswa. perulangan dari mahasiswa ke-1 sampai ke-n. membaca masing masing nilai dan menyimpannya ke array indeks i. }
  for i := 1 to n do
  begin
    writeln('Data mahasiswa ke-', i);
    write('  Nilai Tugas : '); readln(tugas[i]);
    write('  Nilai Quis  : '); readln(quis[i]);
    write('  Nilai UTS   : '); readln(uts[i]);
    write('  Nilai UAS   : '); readln(uas[i]);

    
    { bagian ini menghitung rata rata. Jumlahkan keempat nilai, lalu bagi 4 }
    rata[i] := (tugas[i] + quis[i] + uts[i] + uas[i]) / 4;

    writeln;
  end;

  {bagian ini menampilkan hasil yang berbentuk seperti tabel }
  writeln('==================== HASIL KELULUSAN ====================');
  writeln('No  Tugas   Quis    UTS     UAS     Rata2   Status');
  writeln('---------------------------------------------------------');

{satu baris tabel untuk setiap mahasiswa. pakai write agar kursor tetap di baris sama, jadi status lulus/tidak lulus bida di cetak di ujung baris.}
  for i := 1 to n do
  begin
    { Cetak nomor dan keempat nilai, lalu rata-rata }
    write(i:2, '  ',
          tugas[i]:6:2, '  ',
          quis[i]:6:2, '  ',
          uts[i]:6:2, '  ',
          uas[i]:6:2, '  ',
          rata[i]:6:2, '  ');

    { bagian ini menentukan status kelulusan. lulus kalau rata rata >= 70, selain itu tidak lulus. }
    { Lulus jika rata-rata >= 70, selain itu tidak lulus }
    if rata[i] >= 70 then
      writeln('LULUS')
    else
      writeln('TIDAK LULUS');
  end;
end.