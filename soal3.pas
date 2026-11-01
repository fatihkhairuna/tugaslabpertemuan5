program soal3;
uses crt;

const 
max = 10;

var
    nilai : array[1..max] of real;
    n,i,j : integer;
    temp : real;

begin
    clrscr;
{program disini untuk input jumlah mahasiswa, menggunakan repeat until agar program terus mengulang selama jumlah yang di input belum valid.}
    repeat
       write('masukkan jumlah mahasiswa (1-10): ');
       readln(n);
       {jika n di luar 1..10, maka akan di tampilkan pesan kesalahan dan berhenti jika sudah valid}
    if (n < 1) or (n > max) then
    writeln('jumlah harus antara 1 sampai 10');
    until (n >= 1) and (n <= max);

writeln;

{perulangan dari mahasiswa 1 sama n untuk input nilai uas dan menyimpan nilai ke array indeks i}
for i := 1 to n do
 begin
    write('nilai UAS mahasiswa ke-', i, ' :');
    readln(nilai[i]);
end;

{melakukan pengurutan bubbleshort untuk mengurutkan nilai, jika nilai kiri lebih besar dari nilai kanan, tukar posisi nya}
for i := 1 to n - 1 do
    for j := 1 to n - 1 do
        if nilai[j] > nilai[j + 1] then
        begin
         temp := nilai[j];
         nilai[j] := nilai[j+1];
         nilai[j + 1] := temp;
        end;

{menampilkan hasil}

        writeln;
        writeln('nilai UAS setelah diurutkan dari terendah ke tertinggi:');
        for i := 1 to n do
        writeln(i:2, '. ', nilai[i]:0:2);
        end.